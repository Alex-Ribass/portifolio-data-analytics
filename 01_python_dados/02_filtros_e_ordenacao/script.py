import pandas as pd

dados_vendas = {
    'Cliente': ['Ana', 'Bruno', 'Carla', 'Diego', 'Eduarda', 'Fernando'],
    'Estado': ['SP', 'RJ', 'SP', 'MG', 'SP', 'RJ'],
    'Valor_Compra': [250.0, 120.0, 850.0, 310.0, 95.0, 600.0],
    'Status': ['Ativo', 'Ativo', 'Inativo', 'Ativo', 'Ativo', 'Inativo']
}

df = pd.DataFrame(dados_vendas)

# Seleção de colunas
df_resumo = df[['Cliente', 'Estado', 'Valor_Compra']].copy()

# Filtro: Clientes de SP que estão Ativos
filtro = (df['Estado'] == 'SP') & (df['Status'] == 'Ativo')
df_filtrado = df[filtro].copy()

# Ordenação do maior para o menor valor
df_ordenado = df_filtrado.sort_values(by='Valor_Compra', ascending=False)

print(df_ordenado)