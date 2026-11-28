# Ficha de Pedido nº 01 — Cópia de segurança e contagem dos dados

**Data:** 27/11/2026  · **Pedida por:** Gabriel  · **Tipo:** segura (não altera nada no Mapa e não acessa o banco)

## 1. O que fazer
Contar quantos itens existem em cada seção dos dados do Mapa, a partir de uma cópia que eu mesmo baixo, e guardar no repositório as regras do projeto.

## 2. Por quê
É a prova do que existe hoje. Toda mudança futura será comparada com esta contagem, para garantir que nada do que eu e a Ellen alimentamos se perdeu.

## 3. O que NÃO pode mudar
- Nada no Mapa: nenhuma tela, nenhum dado, nenhuma configuração.
- O banco (Supabase) **não é acessado** nesta ficha.
- A cópia dos dados **não entra** no repositório.

## 4. Passos

**Antes de abrir o Code (eu faço, 1 minuto):**
1. No Mapa, abrir **Painel e dados › aba Dados**.
2. Clicar em **Baixar cópia (.json)**.
3. Salvar o arquivo em `C:\Users\gabri\Dropbox\backup\Mapa\` com o nome `2026-11-27-contagem-inicial.json` (criar a pasta `Mapa` dentro de `backup` se não existir).

**No Code:**
1. Leia o CLAUDE.md e confirme em até 5 linhas o que entendeu.
2. Leia (só leitura) o arquivo `2026-11-27-contagem-inicial.json`. Se não achar a pasta do Dropbox no computador, pergunte onde está.
3. Conte os itens de **todas** as seções do arquivo (não só as conhecidas). Mostre uma tabela simples: seção · tipo · quantidade.
4. Prepare para o repositório (sem gravar ainda):
   - `CLAUDE.md` (o arquivo anexado);
   - `docs/CONTAGEM-BASE.md` (a tabela, com data e hora da cópia);
   - `docs/ESTADO.md` (versão atual: Pacote 30, 24/11/2026; pendências: revisão do Mapa, repositório privado);
   - `docs/fichas/FICHA-01.md` (esta ficha).
5. Mostre a lista desses 4 arquivos e espere meu **"aprovado, publica"**. Eles não mudam nada no Mapa.
6. Depois de gravar, confira se o Mapa continua abrindo igual.

## 5. Como saber que ficou certo
- [ ] O arquivo de cópia está em `Dropbox/backup/Mapa/`, com data de hoje.
- [ ] A tabela de contagem mostra todas as seções, com números.
- [ ] Os 4 arquivos estão no repositório, e nenhum deles contém dados de cliente.
- [ ] O Mapa continua abrindo igual para a equipe.

## 6. Quem é afetado
Ninguém. A equipe não percebe nada.
