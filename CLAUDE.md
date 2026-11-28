# CLAUDE.md — Mapa de Atendimento / Painel M&P

Regimento deste projeto. Leia inteiro antes de qualquer ação, em toda sessão.
Versão final · conferida em 27/11/2026 contra o código do ramo `main` (Pacote 30, 24/11/2026).

## Quem é o usuário

- **Gabriel** (dono do projeto, papel *master*): advogado e empresário, **leigo em tecnologia**.
- Fale em **português do Brasil**, simples, sem jargão. Quando precisar de um termo técnico, explique numa frase.
- Respostas curtas, com passos numerados. Diga sempre **o que vai fazer, por quê e o que muda para a equipe**.
- Quem **usa** o Mapa (não mexe no código): Alan e Evaldo (*socio*), Ellen (*equipe*). Só o Gabriel mexe no código.
- No código, os aprovadores são `APROVADORES = ["Gabriel","Alan","Evaldo"]`.

## O que é o sistema

- Site estático publicado pelo **GitHub Pages** a partir do ramo `main` (raiz).
- Arquivos:
  - `index.html`: o Mapa inteiro (arquivo único, ~13.500 linhas: HTML, CSS e JavaScript juntos).
  - `sala.html`: tela pública da sala de reunião (usa funções próprias do banco: `sala_listar`, `sala_listar_interno`, `sala_cancelar`).
  - `config.js`: endereço do Supabase e **chave pública (anon)**. Nunca coloque outra chave aqui.
  - `sw.js`: service worker que **não guarda cache** de propósito (cada abertura busca a versão nova). Não adicione cache sem ficha aprovada.
  - `manifest.webmanifest`, `manifest-sala.webmanifest`, ícones: instalação como app (PC e celular).
  - `supabase.sql` e `README.md`: **desatualizados**. Servem de referência histórica; não rode o SQL e não confie no README como descrição atual.
- Banco: **Supabase**, projeto `eawyjhuwcxwcmqjspvrr`. Atenção: a organização tem **outros projetos** (ex.: Itapadel). **Só mexa neste.**
  - `estado`: **documento único** (`dados`, jsonb) com quase todos os dados do Mapa. O Mapa **salva sozinho a cada alteração** em dois lugares: no navegador (`localStorage`, função `persist()`) e no banco (função `schedulePush()` → `salvar_estado`, com controle de revisão e junção quando duas pessoas mexem ao mesmo tempo).
  - `perfis`: quem entra e com qual papel (`master`, `socio`, `equipe`, `pendente`, `bloqueado`).
  - `copias`: cópias automáticas do estado (uma por hora de uso, últimas 300).
  - No próprio Mapa, menu **Painel e dados › aba Dados**, existem: **Cópias automáticas** (listar e restaurar), **Baixar cópia (.json)** e **Restaurar de um arquivo**. Esta aba é essencial e nunca pode sumir.
  - Financeiro: tabela `financeiro` e função `fin_salvar`.
  - O banco real tem **mais funções e permissões do que o `supabase.sql` mostra**. Antes de propor qualquer mudança no banco, leia a estrutura real (somente leitura) e mostre ao Gabriel.
- Os **fluxos** (`flows`, tela Fluxos) são a base técnica da esteira de casos (`flow()` é usado em todo o código). A tela pode mudar de lugar, mas os fluxos não podem ser removidos.
- Seções conhecidas do documento de dados (a lista real é maior; descubra lendo o documento): `atendimentos`, `casos`, `pessoas`, `tarefas`, `prazos`, `cobrancas`, `postits`, `lembretes`, `pedidos`, `ideias`, `flows`, `trilha`, `funil`, `crm`, `prefs`, `areaAcesso`, `cobAcesso`, `aparencia`, `log`, `documentos`, `administrativos`, `bloco`, `notinhas`, `eventos`, `reunioes`, `metas`, `recorrentes`, `planoSemana`, `procSemana`, `protRadar`, `ocorrencias`, `msgModelos`, `tfModelos`.
- Permissões por papel (respeitar sempre): o *master* controla tudo e libera acessos; *socio* valida, publica e exclui; *equipe* usa e propõe, mas não exclui nem valida. Há ainda o controle **"Acesso às áreas"** (`areaAcesso`), por pessoa.

## As 6 travas (obrigatórias)

1. **Nada muda sem o "aprovado" do Gabriel.** Antes de alterar código, banco, configuração ou publicar: explique o plano em poucas linhas, mostre a prévia e espere a palavra "aprovado". Uma aprovação vale só para o que foi mostrado.
2. **Nunca remover nem renomear dados.** Não apague, não renomeie e não mude o formato de nenhuma seção do documento `estado.dados`. Como o Mapa grava o documento inteiro, toda tela nova deve **carregar e devolver intactas as seções que não usa**.
3. **Cópia completa antes de publicar.** Antes de qualquer publicação, garanta uma cópia atual dos dados na pasta `Dropbox/backup/Mapa/` do Gabriel (no PC: `C:\Users\gabri\Dropbox\backup\Mapa\`; fica **fora** do cofre do Obsidian de propósito), com nome `AAAA-MM-DD-HHmm.json`. Caminho preferido: peça ao Gabriel para clicar em **Painel e dados › Dados › Baixar cópia (.json)** e salvar nessa pasta. Você só lê o arquivo. Pergunte onde fica o Dropbox no computador se não encontrar.
4. **Contagem antes e depois.** Conte os itens de **todas** as seções do documento antes e depois da mudança e compare com `docs/CONTAGEM-BASE.md`. Se qualquer número cair sem explicação aprovada, **não publique** e avise.
5. **Teste sem gravar.** Nunca teste uma versão nova conectada ao banco real com a gravação ligada. Em teste, prefira carregar a **cópia (.json)** fora do banco. Se precisar ler o banco real, desligue as duas gravações (`persist()` e `schedulePush()`/`salvar_estado`) na versão de teste e rode num endereço diferente do site oficial. Diga ao Gabriel qual dos dois está usando.
6. **Desfazer em 1 passo.** Toda publicação deve poder voltar de imediato para a versão anterior (reverter o commit no `main`). Restaurar **dados** (Cópias automáticas ou Restaurar de um arquivo) só com "aprovado" explícito, porque troca os dados de toda a equipe.

## Regras herdadas do projeto

- Dados de cliente no Mapa: **só iniciais ou primeiro nome**. Nunca senhas nem código do eProc.
- **Nunca** usar, pedir ou gravar a chave `service_role` em nenhum arquivo.
- **Nunca** colocar cópias de dados (backups, exportações, prints com nomes de clientes) dentro do repositório. Elas ficam só em `Dropbox/backup/Mapa/`, nunca dentro do cofre do Obsidian (`0 - CEREBRO`).
- No código do front: **comentário nunca na mesma linha do código**.
- Mudança visual: testar em Sistema › Aparência; só vale para todos com "Aplicar para todos".
- Personalizações de cada pessoa (`prefs`: painel, tela inicial, fundo) devem continuar funcionando ou ser levadas para o equivalente novo, avisando a pessoa.
- Cores: o Gabriel gostou do **Verde M&P atual** e do **Petróleo maduro** (24/11/2026). Use como ponto de partida, sem aplicar para todos sem aprovação.

## Sinal vermelho: pare e pergunte

Não execute sem explicar ao Gabriel em linguagem simples e receber "aprovado":
- qualquer `delete`, `drop`, `truncate`, `alter` ou `update` direto no banco;
- mudança na tabela `perfis`, nas permissões (RLS) ou em `areaAcesso`;
- qualquer ação em outro projeto do Supabase que não seja `eawyjhuwcxwcmqjspvrr`;
- reescrever histórico do Git (`force push`, `rebase` no `main`);
- mudar a visibilidade do repositório ou as configurações do GitHub Pages;
- reestruturar o projeto (dividir o `index.html`, trocar de tecnologia, adicionar dependências ou etapa de build): só com ficha própria aprovada.

## Como trabalhamos (Ficha de Pedido)

1. O Gabriel anexa uma **Ficha de Pedido** (preparada e aprovada no chat).
2. Você confirma o entendimento em até 5 linhas e aponta riscos.
3. Trabalha num **ramo de teste** (nunca direto no `main`).
4. Mostra a **prévia** (prints) e a **contagem**.
5. Só publica quando ouvir **"aprovado, publica"**.
6. Depois de publicar:
   - aguarda o GitHub Pages atualizar (1 a 2 minutos) e confere se o site abriu;
   - confere a contagem de novo;
   - escreve o **aviso de 1 linha** para a equipe (pedir Ctrl+F5 ou fechar e reabrir o app);
   - atualiza `docs/ESTADO.md` (data, versão, o que mudou, pendências) e registra a ficha em `docs/fichas/`.

## Decisões em aberto (não decida sozinho)

- Repositório **privado** (plano Team do GitHub, US$ 4/mês): o Gabriel ainda vai decidir.
- Reorganização do menu (34 telas → 10) e limpeza: aguardando aprovação item por item no documento "Revisão do Mapa". Fluxos e Painel e dados **não saem** (revisado em 27/11). Não remova nem esconda telas antes da aprovação.
- Versão para celular: planejada, ainda sem ficha.
