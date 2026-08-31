import pandas as pd

dados_transacoes = {
    'ID_Transacao': [1001, 1002, 1003, 1004, 1005, 1006],
    'Valor_Gasto': [150.0, -50.0, 300.0, 0.0, 1200.0, 450.0],
    'Categoria_Cliente': ['bronze', 'PRATA', 'ouro', 'bronze', 'OURO', 'prata'],
    'Score_Risco': [650, 400, 820, 500, 910, 730]
}

df = pd.DataFrame(dados_transacoes)

# Substitui anomalias numéricas (<= 0) pela mediana dos valores válidos
mediana_valores = df.loc[df['Valor_Gasto'] > 0, 'Valor_Gasto'].median()
df.loc[df['Valor_Gasto'] <= 0, 'Valor_Gasto'] = mediana_valores

# Padroniza textos
df['Categoria_Cliente'] = df['Categoria_Cliente'].str.upper()

# Cria regra de negócio condicional
df['Status_Credito'] = 'Análise Manual'
df.loc[(df['Score_Risco'] >= 800) & (df['Valor_Gasto'] > 200), 'Status_Credito'] = 'Aprovação Automática'

# Filtra apenas clientes de alto valor
df_alto_valor = df.loc[df['Valor_Gasto'] >= 300].copy()

print(df)
print("\n--- Apenas Alto Valor ---")
print(df_alto_valor)