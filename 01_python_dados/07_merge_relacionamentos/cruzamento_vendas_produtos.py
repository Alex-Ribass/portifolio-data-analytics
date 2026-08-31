import pandas as pd

df_vendas = pd.read_csv('dados/vendas.csv')
df_produtos = pd.read_csv('dados/produtos.csv')

df_consolidado = pd.merge(df_vendas, df_produtos, on='id_produto', how='left')

df_consolidado['faturamento_total'] = df_consolidado['quantidade'] * df_consolidado['preco_unitario']

df_consolidado['nome_produto'] = df_consolidado['nome_produto'].fillna('Não Cadastrado')
df_consolidado['faturamento_total'] = df_consolidado['faturamento_total'].fillna(0)

print(df_consolidado)