# Revisão das funcionalidades · Mapa × Cowork (28/11/2026)

Cruzamento das 33 telas do Mapa com os projetos e manuais do Cowork (skills `pop-mp`, `cobranca-mp`, `analise-caso-mp`, `triagem-whatsapp-cliente`; tarefas agendadas `revisor-atendimento-whatsapp` e `varredura-prazos-leads-mp`; artefatos OpMaster, Cockpit de Conversão, Central de Documentos, Painel do Advogado, Painel do Analista, Painel de Cobrança). Versão navegável: `docs/desenhos/revisao-funcionalidades.html`. Nada some.

## O que o Cowork tem e o Mapa ainda não usa
- **Agentes prontos:** Vera (revisor do WhatsApp), varredura matinal de prazos e leads, Analista de casos (triagem, dossiê, prova, repasse), Agente Advogado (porta única com travas de qualidade), Agente de Cobrança (C0–C6).
- **Ficha de entrada** do Agente Advogado: parte adversa, fato gerador, valor, documentos em mãos/pendentes, conflito verificado, link da pasta; 3 campos essenciais vazios → diligências, não análise.
- **Travas de qualidade:** prescrição e decadência com data-base em todo caso; fato provado/alegado/a provar; cenário pior com custo; toda tarefa com dono.
- **Alçada por credor** (Painel de Cobrança): desconto à vista, parcelas, entrada mínima, piso, valor que escala. Libera as 80 fichas paradas.
- **Retrato do dia e Fila do dia:** padrão de painel para a Gestão e para a Hoje de cada pessoa.
- **Pasta padrão por cliente** (01 Documentos, 02 Dossiê, 03 Petições, 04 Contrato, 05 Encerrado) e contrato padrão por área.

## Propostas por função (resumo)
| Função | Proposta | |
|---|---|---|
| Hoje (nova) | ligar Vera e varredura como cartões | melhorar |
| Meu dia (antiga) | fica em Só sócios até aprovar a troca | manter |
| Painel de gestão | vira Gestão, no padrão Retrato do dia | depois |
| Agenda | filtro "só o Gabriel" para a Ellen; "mandar para a varredura" | melhorar |
| Semana, Anotar, Tarefas/Caixa rápida | manter; dono em toda tarefa de agente | manter |
| WhatsApp 9955 | fila preparada pela Vera; CRM segue no Jurichat | juntar |
| Atendimentos e casos | cada etapa abre o POP e a ação rápida; passagem pede "quem conduz" e leva a Ficha de Repasse | melhorar |
| Pessoas | campos da Ficha de entrada; "conflito verificado" | melhorar |
| Prazos | Sala do Alan; prescrição/decadência no caso | melhorar |
| Cobranças | uma régua só; alçada por credor; Retrato/Fila/Escalonamentos | melhorar |
| Documentos | Central de Documentos do caso (Drive + modelos por área) | juntar |
| Processos administrativos | manter; decidir se é área formal | manter |
| Recados, Lembretes, Pedidos, Chat, Bloco, Sala | manter (pedidos com as categorias do revisor; aviso no celular a estudar) | manter |
| Meu financeiro, Perfis, Aparência, Painel e dados, Importar, Instalar | manter | manter |
| Fluxos | fonte da verdade dos POPs; manual aponta para eles | melhorar |
| Roteiros | histórico em Manuais e método | manter |
| Ideias | aprovadas viram mudança de POP com versão | manter |
| Biblioteca | por área e etapa, com modelos e prompts | melhorar |
| Manual (POP) e Trilha | para Manuais e método, no formato da skill; Trilha vira "Primeiros passos" | melhorar |
| Em breve | Agente de IA sai de "em breve" (aponta para as skills) | melhorar |

## Divergências (só o Gabriel resolve)
1. Régua de cobrança: **decidido em 28/11, fusão C** (D-5, D0, D+3, D+7, D+15, D+30, D+45), com alçada por credor, aceite do devedor e escalonamentos. Ver POP-COBRANCA-EXTRAJUDICIAL.md.
2. Primeiro contato: **decidido em 28/11, Ellen**. O manual v0.1 do Cowork passa a apontar para os Fluxos do Mapa (v0.2 a escrever).
3. Fonte da verdade dos POPs: **decidido em 28/11, os Fluxos do Mapa**. A skill pop-mp vira índice que aponta para eles (v0.2 a escrever).
4. CRM: Jurichat continua; WhatsApp 9955 vira só a fila da Vera.
5. Documentos e Biblioteca como Central de Documentos + prompts.
6. Manual e Trilha saem de Painel e dados para Manuais e método.
7. Publicar o Pacote 31 agora (após cópia no Dropbox) ou depois desta revisão.
