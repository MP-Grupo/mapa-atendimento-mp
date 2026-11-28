# Ficha de Pedido nº 04 — Pacote 31 · Visual "Folha" e tela "Hoje"

**Data:** 28/11/2026 · **Pedida por:** Gabriel · **Tipo:** visual (não mexe em dados)

## 1. O que fazer
Acrescentar a linguagem visual **"Folha"** (clara e escura) na tela **Sistema › Aparência**, ao lado das que já existem (Vidro M&P, Verde M&P, Caderno, Monocromo e as demais).

**E a tela nova "Hoje"** (menu Principal, acima do Painel de gestão), igual ao desenho aprovado em 28/11/2026, com três abas:
- **Começar o dia:** 5 passos (onde parei, agenda de hoje, prazos, recados, 3 decisões).
- **Durante o dia:** Agora/Depois, Caixa rápida compacta, post-its em lista, agenda, protocolo, equipe, cobranças e atalhos.
- **Encerrar o dia:** o que foi feito, o que ficou aberto, 3 prioridades de amanhã, "onde parei", aviso para a equipe.
Usa os botões que já existem (Caixa rápida, post-its, protocolo, avisos, agenda). Abre como tela inicial do master. A Meu dia antiga continua no menu.

## 2. Por quê
É a identidade aprovada pelo Gabriel em 28/11/2026 nos desenhos da tela Hoje: papel claro quente, uma cor petróleo (#2F5D62), letra Geist, vermelho só para atraso; no escuro, grafite suave (#1C1D20) sem preto puro. É o primeiro pacote da "obra" do escritório virtual.

## 3. O que NÃO pode mudar
- Nenhuma seção criada, removida ou renomeada. A única gravação nova é "onde parei" e as 3 prioridades, dentro de `S.prefs[pessoa].dia` (preferências que já existem).
- A linguagem Folha só vale para a equipe quando o Gabriel clicar em **Aplicar para todos**. A tela Hoje, por enquanto, só o master vê.
- As linguagens que já existem continuam iguais.
- Só `index.html` muda (um bloco novo); `sala.html`, `config.js` e `sw.js` intactos.

## 4. Passos
1. Ramo de teste `pacote-31-folha`.
2. Bloco novo no `index.html`, logo depois da linguagem Vidro: `AP_LINGS.folha` com as cores claras e escuras e ajustes finos (menu sem maiúsculas, contadores do menu em cinza, iniciais em cinza, post-its suaves).
3. Teste na cópia de estudo (fora do banco): escolher Folha em Aparência, conferir claro e escuro nas telas principais.
4. Contagem dos dados antes e depois (deve ser idêntica, porque nada grava).
5. Publicar só com "aprovado, publica". Desfazer: reverter o commit.

## 5. Como saber que ficou certo
- [ ] Folha aparece em Aparência e na escolha pessoal de linguagem.
- [ ] Claro e escuro legíveis em Meu dia, Atendimentos e casos, Prazos e Cobranças.
- [ ] A equipe continua vendo o visual atual depois de publicar.
- [ ] Contagem igual à `docs/CONTAGEM-BASE.md`.

## 6. Quem é afetado
Ninguém, até o Gabriel aplicar para todos. Depois disso: aviso de 1 linha para a equipe (Ctrl+F5).
