# POP · Cobrança extrajudicial (MP Grupo)

Rascunho de 28/11/2026. O método C0–C6 já existe na tela Cobranças do Mapa e, por extenso, na skill `cobranca-mp` (v1.1, 18/11/2026). Este POP organiza a ordem e quem faz o quê.

## Papéis (da skill; o do Evaldo confirmado pelo Gabriel em 28/11)
- **Gabriel:** entrada do credor, **limites de acordo**, aprovação do que vai a protocolo.
- **Evaldo:** operação da cobrança (régua, acordo, kit) e protocolo.
- **Alan:** revisão da peça.
- **Ellen:** documentos, procuração e ZapSign.

## Passo a passo
- **C0 · Ficha do crédito.** Cadastrar credor, devedor, título, vencimento e valor. Ler tudo o que o credor mandou (conversas, fotos, áudios transcritos) e montar o quadro de pagamentos: nunca cobrar valor já pago. Sem título ou prova escrita, sem vencimento ou sem devedor qualificável, devolver ao credor a lista de diligências (mensagem pronta no Mapa).
- **Liberar a ficha (Gabriel).** Limites de acordo (desconto máximo, entrada mínima, número de parcelas) e verificação de conflito de interesse. Honorários conforme o contrato da casa: ficam fora deste POP.
- **C1 a C3 · Análise (Evaldo).** Título com status PROVADO / ALEGADO / A PROVAR; prescrição com data-limite (o Mapa sugere pela lei de cada título; conferir sempre); cálculo pelo IPCA e pela Taxa Legal a partir de 30/08/2024, com as fontes anotadas; sem índice oficial, "cálculo pendente".
- **C4 · Régua (Evaldo).** Régua única decidida pelo Gabriel em 28/11 (fusão da régua do Mapa com a do Painel de Cobrança do Cowork): D-5 lembrete preventivo (só parcelas e acordos com vencimento conhecido) · D0 primeiro contato cordial, "valor em aberto" em vez de "débito" · D+3 lembrete e parcelamento · D+7 proposta dentro da alçada do credor, com prazo · D+15 último contato amigável, já como aviso pré-jurídico · D+30 notificação extrajudicial por e-mail, WhatsApp e AR, com 5 dias úteis · D+45 sem acordo: sai da régua e vira processo com quem conduz (Alan ou Evaldo). Regras: dias úteis das 8h às 20h; só com o devedor, nunca com terceiros; sem constrangimento (CDC); só o dado necessário (LGPD); todo contato registrado; devedor que contesta a dívida escala para advogado. Mensagens prontas no Mapa (a do D0 ajusta a palavra; a do D-5 é nova).
- **Alçada por credor.** Cada credor ganha: desconto à vista, parcelas, entrada mínima, piso e valor acima do qual escala. As cobranças herdam a alçada do credor; fora dela, vai ao Gabriel.
- **Aceite do devedor (opt-in).** Campo na cobrança. Dispensável no envio manual de hoje; obrigatório quando o envio for automático pela WhatsApp Cloud API.
- **Escalonamentos.** Lista "precisam de gente": contestação, pedido fora da alçada, sem telefone, D+45 atingido. É a fila do Evaldo.
- **C5 · Acordo (Evaldo, dentro dos limites).** Fora dos limites, leva ao Gabriel com recomendação. Formalizar com termo assinado pelo devedor e por 2 testemunhas (vira título executivo), com vencimento antecipado e multa; sem timbre. O Mapa gera as parcelas e as mensagens de lembrete e de atraso.
- **C6 · Judicial (Evaldo monta, Alan revisa, Gabriel aprova).** Antes, considerar o protesto do título. Escolha da via: título vivo → execução; prescrito ou só prova escrita → JEC (até 40 salários; PJ autora só se ME/EPP) ou monitória. Kit no modelo da casa (petição, procuração, título, planilha, documentos da PJ, notificação), pasta VALIDAÇÃO → PARA PROTOCOLO. Nada vai a protocolo sem aprovação do Gabriel e revisão do Alan.
- **Pós-protocolo.** Comprovante na pasta; mensagem à Ellen para registrar no Mapa (Pessoas › ficha do credor › Caso no Jurídico › tarefas de acompanhamento) e no Juridiq. Pessoas físicas só com iniciais.

## Onde a carteira está (cópia de 27/11)
81 cobranças de 15 credores; 80 ainda na ficha (C0); nenhuma régua iniciada. O que segura todas: limites de acordo e verificação de conflito. Sugestão: limites padrão por credor (o Mapa já permite) liberam dezenas de fichas de uma vez.

## Ainda a decidir
1. Valores da alçada de cada credor (decisão do Gabriel).
2. O que é, na prática, a verificação de conflito (por exemplo, o devedor não é cliente do escritório).
3. Envio: continua manual por enquanto? E quem envia no dia a dia: Evaldo ou Ellen?
4. Quem assina a notificação do D+30.
5. Valor mínimo, se houver, para ir à Justiça depois do D+30.
6. Prestação de contas ao credor: cadência e canal.
7. Responsável das 80 cobranças hoje no nome da Ellen: passar ao Evaldo?
