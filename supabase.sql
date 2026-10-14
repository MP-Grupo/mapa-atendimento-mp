-- =====================================================================
-- Mapa de Atendimento M&P — banco de dados (Supabase)
-- Cole TUDO no Supabase: SQL Editor > New query > Run. Pode rodar mais de uma vez.
-- =====================================================================

-- 1) PERFIS: quem pode entrar e com qual nível
create table if not exists public.perfis (
  id uuid primary key references auth.users(id) on delete cascade,
  email text not null,
  nome text not null default '',
  papel text not null default 'pendente'
    check (papel in ('master','socio','equipe','pendente','bloqueado')),
  criado_em timestamptz not null default now()
);

-- O e-mail abaixo vira MASTER automaticamente ao criar a senha.
create or replace function public.novo_usuario()
returns trigger language plpgsql security definer set search_path = public as $$
begin
  insert into public.perfis (id, email, nome, papel)
  values (
    new.id, new.email,
    case when lower(new.email) = 'linzmeier.glp@gmail.com' then 'Gabriel' else '' end,
    case when lower(new.email) = 'linzmeier.glp@gmail.com' then 'master' else 'pendente' end
  )
  on conflict (id) do nothing;
  return new;
end $$;

drop trigger if exists ao_criar_usuario on auth.users;
create trigger ao_criar_usuario after insert on auth.users
  for each row execute function public.novo_usuario();

create or replace function public.meu_papel()
returns text language sql stable security definer set search_path = public as $$
  select papel from public.perfis where id = auth.uid()
$$;

alter table public.perfis enable row level security;
drop policy if exists perfis_ler on public.perfis;
create policy perfis_ler on public.perfis for select to authenticated
  using (id = auth.uid() or public.meu_papel() in ('master','socio','equipe'));
drop policy if exists perfis_master_altera on public.perfis;
create policy perfis_master_altera on public.perfis for update to authenticated
  using (public.meu_papel() = 'master') with check (public.meu_papel() = 'master');

-- 2) ESTADO: o documento único com todos os dados do Mapa (com revisão)
create table if not exists public.estado (
  id int primary key default 1 check (id = 1),
  rev bigint not null default 0,
  dados jsonb,
  quem text,
  atualizado_em timestamptz not null default now()
);
insert into public.estado (id, rev) values (1, 0) on conflict (id) do nothing;

alter table public.estado enable row level security;
drop policy if exists estado_ler on public.estado;
create policy estado_ler on public.estado for select to authenticated
  using (public.meu_papel() in ('master','socio','equipe'));
-- Ninguém grava direto: só pela função salvar_estado (abaixo).

-- 3) CÓPIAS AUTOMÁTICAS: uma por hora de uso, guarda as últimas 300
create table if not exists public.copias (
  id bigserial primary key,
  em timestamptz not null default now(),
  rev bigint,
  quem text,
  dados jsonb not null
);
alter table public.copias enable row level security;
drop policy if exists copias_ler on public.copias;
create policy copias_ler on public.copias for select to authenticated
  using (public.meu_papel() = 'master');

-- 4) SALVAR com controle de conflito (se outra pessoa salvou antes, devolve os dados dela para juntar)
create or replace function public.salvar_estado(p_dados jsonb, p_base bigint)
returns jsonb language plpgsql security definer set search_path = public as $$
declare
  r public.estado;
  v_papel text;
  v_nome text;
begin
  select papel, nome into v_papel, v_nome from public.perfis where id = auth.uid();
  if v_papel is null or v_papel not in ('master','socio','equipe') then
    raise exception 'sem_acesso';
  end if;
  select * into r from public.estado where id = 1 for update;
  if r.rev <> p_base then
    return jsonb_build_object('conflito', true, 'rev', r.rev, 'dados', r.dados);
  end if;
  if r.dados is not null and not exists (select 1 from public.copias where em > now() - interval '1 hour') then
    insert into public.copias (rev, quem, dados) values (r.rev, r.quem, r.dados);
    delete from public.copias where id not in (select id from public.copias order by em desc limit 300);
  end if;
  update public.estado
     set dados = p_dados, rev = r.rev + 1, quem = coalesce(nullif(v_nome,''), v_papel), atualizado_em = now()
   where id = 1;
  return jsonb_build_object('ok', true, 'rev', r.rev + 1);
end $$;

revoke all on function public.salvar_estado(jsonb, bigint) from public, anon;
grant execute on function public.salvar_estado(jsonb, bigint) to authenticated;
grant select on public.estado, public.perfis, public.copias to authenticated;
grant update (nome, papel) on public.perfis to authenticated;

-- Conferência: deve listar as 3 tabelas
select table_name from information_schema.tables where table_schema = 'public' and table_name in ('perfis','estado','copias');
