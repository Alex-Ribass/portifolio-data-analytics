# Projeto 7: Relacionamento e Consolidação de Tabelas com pd.merge

Projeto demonstrando o relacionamento de múltiplos conjuntos de dados no Pandas através da junção de dados (`Left Join`), tratamento de inconsistências de cadastro e geração de indicadores financeiros consolidados.

## Ferramentas Usadas
- Python 3
- Pandas

## Etapas do Projeto
- **Relacionamento de Dados:** Uso da função `pd.merge()` com chave primária `id_produto` para conectar a tabela de vendas ao cadastro de produtos.
- **Tratamento de Inconsistências:** Identificação de itens sem correspondência no cadastro e tratamento de valores nulos via `.fillna()`.
- **Métricas Derivadas:** Cálculo do faturamento consolidado por transação.

## Como Rodar
No terminal, navegue até a pasta do projeto e execute:
```bash
python cruzamento_vendas_produtos.py
