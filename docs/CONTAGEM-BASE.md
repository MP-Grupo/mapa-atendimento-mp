# Contagem-base dos dados do Mapa

Esta é a **prova do que existe hoje**. Toda mudança futura deve ser contada de novo e comparada com esta tabela (trava 4 do CLAUDE.md).

- **Cópia usada:** `Dropbox/backup/Mapa/2026-11-27-contagem-inicial.json` (fica fora do repositório)
- **Data e hora da cópia:** 27/11/2026, 22:51 (horário de Brasília) — campo `atualizadoEm` = `2026-11-28T01:51:11.523Z`
- **Versão do Mapa na data:** Pacote 30 (commit `18a28ac`, 24/11/2026)
- **Formato do documento:** `versao` = 5 · 51 seções no total
- **Contado em:** 27/11/2026, Ficha 01

Como ler: *lista* = quantidade de itens; *grupo* = quantidade de entradas dentro dele; *texto/número* = um valor só (marcador interno).

| Seção | Tipo | Quantidade | Detalhe |
|---|---|---|---|
| `administrativos` | lista | 0 |  |
| `agFunilV5` | número | 1 (valor 1) |  |
| `aparencia` | grupo | 15 | 15 ajustes de aparência |
| `app` | texto | 1 (texto) |  |
| `areaAcesso` | grupo | 17 | 17 pessoas |
| `atendimentos` | lista | 0 |  |
| `ativo` | texto | 1 (texto) |  |
| `atualizadoEm` | texto | 1 (texto) |  |
| `autor` | texto | 1 (texto) |  |
| `avisos` | lista | 0 |  |
| `biblioteca` | grupo | 2 | listas 7 · mensagens 3 |
| `bloco` | lista | 1 |  |
| `casos` | lista | 58 |  |
| `cbExcluidas` | lista | 3 |  |
| `cobAcesso` | grupo | 1 |  |
| `cobrancas` | lista | 81 |  |
| `conversaIA` | lista | 0 |  |
| `crm` | grupo | 1 |  |
| `documentos` | lista | 0 |  |
| `embreve` | grupo | 5 | 5 grupos, todos vazios |
| `esteiraNeg` | número | 1 (valor 1) |  |
| `esteiraV6` | número | 1 (valor 1) |  |
| `esteiraV7` | número | 1 (valor 1) |  |
| `eventos` | lista | 21 |  |
| `flows` | lista | 5 |  |
| `funil` | lista | 14 |  |
| `ideias` | lista | 3 |  |
| `lembretes` | lista | 3 |  |
| `log` | lista | 981 |  |
| `metas` | grupo | 1 |  |
| `notinhas` | lista | 0 |  |
| `ocorrencias` | lista | 0 |  |
| `pedidos` | lista | 1 |  |
| `perfis` | grupo | 1 | 1 grupo com 5 itens |
| `pessoas` | lista | 304 |  |
| `planoSemana` | lista | 2 |  |
| `postits` | lista | 26 |  |
| `prazos` | lista | 88 |  |
| `prefs` | grupo | 2 |  |
| `presenca` | grupo | 1 |  |
| `procSemana` | grupo | 6 | pautas 5 · regras 5 · rituais 6 · hist 0 |
| `protRadar` | grupo | 3 |  |
| `recorrentes` | lista | 0 |  |
| `retorno` | grupo | 4 | 4 grupos |
| `reunioes` | lista | 0 |  |
| `revisao` | grupo | 1 | 1 entrada com 15 itens |
| `revisaoRemovidos` | lista | 0 |  |
| `tarefas` | lista | 152 |  |
| `tfExcluidas` | lista | 0 |  |
| `trilha` | grupo | 3 | comp 8 · missoes 6 · cenarios 6 |
| `versao` | número | 1 (valor 5) |  |

## Observações

- `atendimentos` está com **0** itens, e isso é **esperado** (confirmado pelo Gabriel em 27/11/2026): é a esteira antiga dos Fluxos, que não é mais usada. Os casos ficam em `casos` (58).
- `msgModelos` e `tfModelos` (citadas no CLAUDE.md) **ainda não existem** no documento: o Mapa só cria essas seções quando alguém edita um modelo pela primeira vez. Não é perda.
- O **Financeiro** fica em tabela própria no banco (`financeiro`) e **não entra** nesta cópia.
- Seções vazias hoje (0): `administrativos`, `atendimentos`, `avisos`, `conversaIA`, `documentos`, `notinhas`, `ocorrencias`, `recorrentes`, `reunioes`, `revisaoRemovidos`, `tfExcluidas`.
- Nenhum dado de cliente foi copiado para este arquivo: só nomes de seções e números.
