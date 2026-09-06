-- =================================================================
-- TRILHA DE SQL - EXERCÍCIOS DE FIXAÇÃO (DQL, AGREGAÇÃO E GROUP BY)
-- Banco de Dados: ecommerce_db
-- =================================================================

USE ecommerce_db;

-- -----------------------------------------------------------------
-- 1. Filtro de Clientes Específicos (Moda ou Móveis em Campinas)
-- Lógica: Filtro com precedência usando parênteses para OR + AND
-- -----------------------------------------------------------------
SELECT cidade_entrega, categoria
FROM pedidos
WHERE (categoria = 'Móveis' OR categoria = 'Moda') 
  AND cidade_entrega = 'Campinas';


-- -----------------------------------------------------------------
-- 2. Padrão de Nome (Qualquer posição na string)
-- Lógica: Operador LIKE com % em ambos os lados
-- -----------------------------------------------------------------
SELECT cliente, valor_total
FROM pedidos
WHERE cliente LIKE '%Alves%' 
   OR cliente LIKE '%Mendes%';


-- -----------------------------------------------------------------
-- 3. Faixa Numérica Exclusiva com Ordenação
-- Lógica: BETWEEN para intervalo, NOT IN para exclusão e ORDER BY DESC
-- -----------------------------------------------------------------
SELECT ano_pedido, valor_total
FROM pedidos
WHERE valor_total BETWEEN 100 AND 1500
  AND ano_pedido NOT IN (2023)
ORDER BY ano_pedido DESC;


-- -----------------------------------------------------------------
-- 4. Soma Condicional (Faturamento de São Paulo)
-- Lógica: Função de agregação SUM filtrada por cidade
-- -----------------------------------------------------------------
SELECT SUM(valor_total) AS faturamento_sp
FROM pedidos
WHERE cidade_entrega = 'São Paulo';


-- -----------------------------------------------------------------
-- 5. Métrica Média por Filtro de Categoria e Período
-- Lógica: AVG com ROUND para 2 casas decimais e filtro de lista IN
-- -----------------------------------------------------------------
SELECT ROUND(AVG(valor_total), 2) AS media_eletronico
FROM pedidos
WHERE categoria = 'Eletrônicos' 
  AND ano_pedido IN (2024, 2025);


-- -----------------------------------------------------------------
-- 6. Contagem por Ausência
-- Lógica: COUNT(*) com filtro numérico e negação com NOT IN
-- -----------------------------------------------------------------
SELECT COUNT(*) AS qtd_pedidos
FROM pedidos
WHERE valor_total >= 1000.00 
  AND cidade_entrega NOT IN ('Rio de Janeiro');


-- -----------------------------------------------------------------
-- 7. Volume de Pedidos por Cidade
-- Lógica: Agrupamento simples com GROUP BY e contagem de registros
-- -----------------------------------------------------------------
SELECT cidade_entrega, COUNT(*) AS qtd_pedidos
FROM pedidos
GROUP BY cidade_entrega;


-- -----------------------------------------------------------------
-- 8. Análise Média por Ano com Filtro no Agrupamento
-- Lógica: GROUP BY com HAVING para filtrar o resultado da agregação
-- -----------------------------------------------------------------
SELECT ano_pedido, ROUND(AVG(valor_total), 2) AS media_por_ano
FROM pedidos
GROUP BY ano_pedido
HAVING AVG(valor_total) > 1000.00
ORDER BY media_por_ano DESC;


-- -----------------------------------------------------------------
-- 9. Visão Cruzada Faturada (Agrupamento Duplo)
-- Lógica: GROUP BY em duas colunas (ano e categoria)
-- -----------------------------------------------------------------
SELECT ano_pedido, categoria, SUM(valor_total) AS total
FROM pedidos
GROUP BY ano_pedido, categoria
ORDER BY total DESC;


-- -----------------------------------------------------------------
-- 10. Categoria de Alto Ticket (Filtro por quantidade acumulada)
-- Lógica: HAVING utilizando condicional sobre COUNT()
-- -----------------------------------------------------------------
SELECT categoria, ROUND(AVG(valor_total), 2) AS media
FROM pedidos
GROUP BY categoria
HAVING COUNT(categoria) > 2;