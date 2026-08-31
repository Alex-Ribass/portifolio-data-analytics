import pandas as pd

df = pd.read_csv('dados/pedidos.csv')

df['data_compra'] = pd.to_datetime(df['data_compra'])
df['data_entrega'] = pd.to_datetime(df['data_entrega'])

df['tempo_entrega_dias'] = (df['data_entrega'] - df['data_compra']).dt.days

df['mes_compra'] = df['data_compra'].dt.month
df['dia_semana_compra'] = df['data_compra'].dt.day_name()

print(df)