-- Criação do banco de dados
CREATE DATABASE loja_senai;

-- Seleciona o banco
USE loja_senai;

-- Criação da tabela produtos
CREATE TABLE produtos (
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    categoria VARCHAR(50)
);

-- Inserção de 15 registros
INSERT INTO produtos (nome, preco, categoria) VALUES
('Notebook', 3500.00, 'Eletrônicos'),
('Mouse', 80.00, 'Periféricos'),
('Teclado', 150.00, 'Periféricos'),
('Monitor', 1200.00, 'Eletrônicos'),
('Celular', 2200.00, 'Eletrônicos'),
('Fone de ouvido', 200.00, 'Áudio'),
('Impressora', 900.00, 'Eletrônicos'),
('Cadeira Gamer', 1100.00, 'Móveis'),
('Mesa', 600.00, 'Móveis'),
('Webcam', 250.00, 'Periféricos'),
('Pendrive', 50.00, 'Armazenamento'),
('HD Externo', 450.00, 'Armazenamento'),
('Caixa de som', 300.00, 'Áudio'),
('Tablet', 1500.00, 'Eletrônicos'),
('Mochila', 180.00, 'Acessórios');


-- selects

-- contar os registros
SELECT count(*) FROM produtos;
SELECT count(*) QUANTIDADE FROM produtos WHERE categoria = 'Eletrônicos';

-- somar o preço dos produtos
SELECT sum(preco) "Soma dos preços" from produtos;
SELECT sum(preco) "Soma dos preços dos celulares" FROM produtos WHERE categoria = "Móveis";

-- média de preços
SELECT avg(preco) AS "Média de preços" from produtos;
SELECT avg(preco) "Média de preços dos acessórios" FROM produtos WHERE categoria = "Acessórios";

-- maior preço
SELECT max(preco) "Maior preço" FROM produtos;
SELECT max(preco) AS "Maior preço de áudio" FROM produtos WHERE categoria = "Áudio";

-- menor preço
SELECT min(preco) "Menor preço" FROM produtos;
SELECT min(preco) AS "Menor preço" FROM produtos WHERE categoria = "Áudio";