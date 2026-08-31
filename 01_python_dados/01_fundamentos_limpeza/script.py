import pandas as pd

dados_clientes = {
    'ID_Cliente': [' 101', '102 ', '103', ' 104 '],
    'Nome': ['João silva', 'MARIA SOUZA', 'carlos gomes', 'ANA costa'],
    'Idade': [25.0, None, 30.0, 22.0],
    'Status_Assinatura': ['Ativo', 'Cancelado', None, 'Ativo']
}

df_clientes = pd.DataFrame(dados_clientes)

# Tratamento de textos e chaves
df_clientes['ID_Cliente'] = df_clientes['ID_Cliente'].str.strip()
df_clientes['Nome'] = df_clientes['Nome'].str.title()

# Tratamento de valores ausentes
media_idade = df_clientes['Idade'].mean()
df_clientes['Idade'] = df_clientes['Idade'].fillna(media_idade)
df_clientes['Status_Assinatura'] = df_clientes['Status_Assinatura'].fillna('Pendente')

# Conversão de tipos
df_clientes['ID_Cliente'] = df_clientes['ID_Cliente'].astype(int)
df_clientes['Idade'] = df_clientes['Idade'].astype(int)

print(df_clientes)
print(df_clientes.dtypes)