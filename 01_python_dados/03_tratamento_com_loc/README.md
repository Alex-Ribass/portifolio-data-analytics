# Projeto 2: Filtros Avançados e Regras de Negócio com .loc

Projeto focado na manipulação condicional de dados utilizando a propriedade `.loc` do Pandas para correção de anomalias numéricas, criação de variáveis de crédito e filtragem de segmentos.

## Ferramentas Usadas

- Python 3
- Pandas

## Etapas do Projeto

- **Tratamento de Anomalias:** Identificação de valores zerados ou negativos e substituição condicional pela mediana da base.
- **Engenharia de Atributos:** Regras condicionais combinando mais de uma variável (`Score_Risco` e `Valor_Gasto`) para definir o status do cliente.
- **Filtragem de Dados:** Criação de visão segmentada apenas com transações de alto valor (`>= 300`).

## Como Rodar

No terminal, execute:

```bash
python script.py
```
