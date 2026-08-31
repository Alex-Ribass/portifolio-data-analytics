# Projeto 6: Agrupamentos e Métricas de Negócio com groupby

Projeto focado na sumarização de dados e criação de relatórios analíticos utilizando a função `groupby` do Pandas para calcular agregadores como soma, média e contagem em múltiplos níveis hierárquicos.

## Ferramentas Usadas
- Python 3
- Pandas

## Etapas do Projeto
- **Agrupamento Simples:** Consolidação de métricas financeiras por filial via `.sum()`.
- **Agregação Múltipla:** Uso do método `.agg()` para calcular faturamento total, ticket médio e volume de transações por categoria simultaneamente.
- **Hierarquia de Dados:** Agrupamento composto combinando `filial` e `categoria`.

## Como Rodar
No terminal, navegue até a pasta do projeto e execute:
```bash
python analise_faturamento_groupby.py