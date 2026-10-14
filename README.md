# Mapa de Atendimento M&P

Sistema interno de atendimento (fluxos, clientes, post-its, pedidos e painel do gestor) da M&P.

## Como funciona

- **Front-end (o "palco")**: `index.html`, publicado no GitHub Pages. É a tela que todos abrem pelo link.
- **Back-end (os "bastidores")**: Supabase, com banco de dados, login por e-mail e senha, permissões e cópias automáticas.
- **Acessos**: Gabriel é **master** e controla tudo, inclusive quem entra. Alan e Evaldo são **sócios**: validam, publicam e excluem. Ellen é **equipe**: usa o sistema e propõe mudanças, mas não exclui nem valida.
- **Segurança**: o código fica público no GitHub, mas os dados só aparecem para quem tem login e foi liberado pelo master.

## Arquivos

| Arquivo | Para que serve |
|---|---|
| `index.html` | O sistema inteiro (a tela). |
| `config.js` | Endereço e chave **pública** (anon) do Supabase. |
| `supabase.sql` | Cria as tabelas, o login, as permissões e as cópias. É rodado uma vez no Supabase. |
| `README.md` | Este guia. |

## Instalação (uma vez, cerca de 20 minutos)

### 1. Supabase (o banco)
1. Crie a conta em supabase.com (pode entrar com o Google).
2. Clique em **New project**, nome `mapa-atendimento-mp`, região **South America (São Paulo)**. Crie uma senha do banco e guarde-a.
3. Abra **SQL Editor → New query**, cole todo o conteúdo de `supabase.sql` e clique em **Run**. No final, devem aparecer 3 tabelas.
4. Em **Authentication → Sign In / Providers → Email**, desligue **Confirm email**. Assim a equipe entra sem precisar confirmar o e-mail, porque quem libera o acesso é o master.
5. Em **Project Settings → API**, copie a **Project URL** e a chave **anon public** e coloque as duas no `config.js`.
   **Nunca use a chave `service_role`.**

### 2. GitHub (o site)
1. Crie a conta em github.com.
2. Clique em **New repository**, nome `mapa-atendimento-mp`, tipo **Public**.
3. Clique em **Add file → Upload files** e arraste `index.html`, `config.js` (já preenchido), `supabase.sql` e `README.md`. Depois clique em **Commit changes**.
4. Em **Settings → Pages**, escolha **Branch: main / (root)** e clique em **Save**. Em 1 a 2 minutos, o link fica pronto: `https://SEU-USUARIO.github.io/mapa-atendimento-mp/`.
5. Volte ao Supabase, abra **Authentication → URL Configuration** e coloque esse link em **Site URL**. Isso faz o "Esqueci a senha" funcionar.

### 3. Primeiro acesso
1. **Gabriel** abre o link, clica em **Primeiro acesso** e usa o e-mail `linzmeier.glp@gmail.com`. Esse e-mail vira **master** automaticamente.
2. Na tela **"Primeira vez: trazer os dados"**, escolha o arquivo `dados.json` do sistema antigo, que está no Google Drive, na pasta "Mapa de Atendimento M&P".
3. **Ellen, Alan e Evaldo** abrem o link, clicam em **Primeiro acesso** e criam a própria senha.
4. **Gabriel** clica no nome dele (canto superior direito), depois em **Gerenciar acessos**. Para cada pessoa, escreve o nome (Ellen, Alan, Evaldo), escolhe o nível e clica em **Salvar**.

## Uso no dia a dia
- O sistema salva sozinho a cada alteração. Se duas pessoas mexem ao mesmo tempo, as alterações são juntadas.
- Se a internet cair, aparece uma faixa vermelha avisando que **ainda não salvou**. Não feche a página até ela sumir.
- Cópias automáticas são feitas a cada hora de uso, e o sistema guarda as últimas 300. Só o master vê e restaura, em Gestão › Dados.

## Atualizar o sistema
Envie o novo `index.html` pelo GitHub (**Add file → Upload files**, substituindo o antigo). O link continua o mesmo e os dados não mudam.
