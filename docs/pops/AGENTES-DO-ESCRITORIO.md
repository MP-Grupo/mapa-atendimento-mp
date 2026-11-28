# Agentes do escritório (skills do Cowork) e a lista de agentes do Mapa

Levantamento de 28/11/2026. A lista `AGENTES` planejada para o Mapa pode apontar para o que já existe no Cowork.

| Agente no Mapa | O que já existe | Observação |
|---|---|---|
| Vera, controladora | `revisor-atendimento-whatsapp` (tarefa agendada): lê o JuriChat, lista quem espera e o que precisa da atenção do Gabriel, com resposta pronta "no tom da Vera" e tarefa acoplada | Regras da Vera: primeira pessoa, cordial, sem juridiquês; nunca dá parecer, nunca confirma resultado, nunca fala de honorários; escala o sensível ao Gabriel. Só lê e prepara, nunca envia. |
| Prazos | `varredura-prazos-leads-mp` (tarefa agendada): resumo matinal do Gmail com prazos, leads sem resposta e pendências | Não inventa prazo: "verificar no PJe/eSAJ". A produção é do Alan. |
| Triagem | `analise-caso-mp`, modo Triagem | Saída: área, resumo, viabilidade, urgência, o que falta, próximo passo e contrato da área. |
| Peticionante | `advogado-mp` e `analise-caso-mp` (dossiê); MinutaAI para a peça | |
| Cobrança | `cobranca-mp` v1.1 | Pipeline C0–C6 igual ao do Mapa. |
| Documentos | `pop-mp` (manual) e pastas no Dropbox | O manual v0.1 ainda não conhece Ellen e Evaldo. [VALIDAR] |
| POP (novo) | `pop-mp` | Responde "como se faz aqui" em passos com responsável, prazo, ferramenta e próxima ação. É o esqueleto do projeto OpMaster. |

Outras skills do escritório vistas na lista: `preparacao-audiencia-mp`, `prazos-mensais-mp`, `admissao-mp`, `auditoria-mp`, `carta-compromisso-cliente-mp`, `relatorio-sicoob-mensal`, `iptu`, `triagem-whatsapp-cliente`.

Formato de POP do manual, a adotar no Mapa: passos numerados, cada um com Responsável · Prazo ou gatilho · Ferramenta ou prompt · Etiqueta · Onde salva no Dropbox; depois "Próxima ação" e "Pontos a validar".
