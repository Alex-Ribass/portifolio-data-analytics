# Projeto 4: Classificação de Risco de Crédito com np.select

Projeto focado na aplicação de regras de negócio complexas utilizando `numpy.select` para categorização condicional de clientes e atribuição de limites de crédito com base em dados de inadimplência e score.

## Ferramentas Usadas

- Python 3
- Pandas
- NumPy

## Etapas do Projeto

- **Ingestão de Dados:** Leitura de dados estruturados a partir de arquivo `.csv`.
- **Regras Multicritério:** Uso de `np.select()` para aplicar lógica condicional combinando `score_credito` e `dias_inadimplente`.
- **Atribuição de Limites:** Criação de variável financeira derivada conforme o perfil de risco calculado.

## Como Rodar

No terminal, navegue até a pasta do projeto e execute:

```bash
python script.py
```
