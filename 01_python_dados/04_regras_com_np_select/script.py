import pandas as pd
import numpy as np

df = pd.read_csv('dados/clientes.csv')

condicoes = [
    (df['dias_inadimplente'] == 0) & (df['score_credito'] >= 700),
    (df['dias_inadimplente'] > 0) & (df['dias_inadimplente'] <= 60),
    (df['dias_inadimplente'] > 60)
]

opcoes = ['Excelente', 'Risco Moderado', 'Risco Alto']

df['classificacao_risco'] = np.select(condicoes, opcoes, default='Em Análise')

df['limite_credito'] = np.select(
    [df['classificacao_risco'] == 'Excelente', df['classificacao_risco'] == 'Risco Moderado'],
    [10000.0, 2500.0],
    default=0.0
)

print(df)