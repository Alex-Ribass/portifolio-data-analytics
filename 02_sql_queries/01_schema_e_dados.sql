-- =================================================================
-- SCRIPT DE CRIAÇÃO DO BANCO E CARGA DE DADOS INICIAIS
-- Projeto: ecommerce_db
-- =================================================================

-- 1. Criando o banco de dados com charset utf8mb4
CREATE DATABASE IF NOT EXISTS ecommerce_db
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_unicode_ci;

USE ecommerce_db;

-- 2. Criando a tabela de pedidos
CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT AUTO_INCREMENT,
    cliente VARCHAR(60) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    cidade_entrega VARCHAR(50) NOT NULL,
    ano_pedido INT NOT NULL,
    PRIMARY KEY (id_pedido)
);

-- 3. Inserindo dados para testes e exercícios
INSERT INTO pedidos (cliente, categoria, valor_total, cidade_entrega, ano_pedido) VALUES
('Ana Silva', 'Eletrônicos', 1200.00, 'São Paulo', 2024),
('Carlos Oliveira', 'Moda', 150.50, 'Rio de Janeiro', 2023),
('Mariana Souza', 'Eletrônicos', 3500.00, 'São Paulo', 2025),
('Amanda Lima', 'Móveis', 850.00, 'Campinas', 2024),
('Bruno Costa', 'Moda', 89.90, 'São Paulo', 2023),
('Fernanda Alves', 'Eletrônicos', 450.00, 'Santos', 2025),
('Lucas Pereira', 'Móveis', 1200.00, 'Rio de Janeiro', 2024),
('Antônio Rocha', 'Informática', 2800.00, 'São Paulo', 2025),
('Aline Santos', 'Moda', 220.00, 'Campinas', 2024),
('Beatriz Mendes', 'Informática', 1500.00, 'Santos', 2023);