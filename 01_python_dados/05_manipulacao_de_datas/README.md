# Projeto 5: Manipulação e Engenharia de Atributos com Datas

Projeto focado no tratamento de campos temporais utilizando o Pandas para conversão de tipos de dados, cálculo de prazos de entrega e extração de componentes de data (mês e dia da semana).

## Ferramentas Usadas
- Python 3
- Pandas

## Etapas do Projeto
- **Conversão de Tipos:** Transformação de colunas de texto para `datetime64` via `pd.to_datetime()`.
- **Cálculo de Prazos:** Operações entre datas para calcular o tempo total de entrega em dias.
- **Extração Temporal:** Uso do acessor `.dt` para extrair mês e dia da semana das transações.

## Como Rodar
No terminal, navegue até a pasta do projeto e execute:
```bash
python analise_pedidos_datas.py