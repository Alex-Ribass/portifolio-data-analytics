import pandas as pd

df = pd.read_csv('dados/vendas_filiais.csv')

faturamento_por_filial = df.groupby('filial')['valor_venda'].sum().reset_index()

metricas_categoria = df.groupby('categoria')['valor_venda'].agg(
    faturamento_total='sum',
    ticket_medio='mean',
    qtd_vendas='count'
).reset_index()

resumo_multinivel = df.groupby(['filial', 'categoria'])['valor_venda'].sum().reset_index()

print("--- Faturamento por Filial ---")
print(faturamento_por_filial)
print("\n--- Métricas por Categoria ---")
print(metricas_categoria)