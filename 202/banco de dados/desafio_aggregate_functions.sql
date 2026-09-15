
-- Criar o banco de dados
CREATE DATABASE loja_jogos;

-- Selecionar o banco
USE loja_jogos;


-- =========================================
-- TABELA CLIENTES
-- =========================================

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    estado VARCHAR(2)
);

-- 10 clientes
INSERT INTO clientes (nome, email, cidade, estado) VALUES
('João Silva', 'joao@email.com', 'São Paulo', 'SP'),
('Maria Santos', 'maria@email.com', 'Rio de Janeiro', 'RJ'),
('Pedro Oliveira', 'pedro@email.com', 'Curitiba', 'PR'),
('Ana Souza', 'ana@email.com', 'Florianópolis', 'SC'),
('Carlos Pereira', 'carlos@email.com', 'Porto Alegre', 'RS'),
('Juliana Costa', 'juliana@email.com', 'Belo Horizonte', 'MG'),
('Lucas Almeida', 'lucas@email.com', 'Salvador', 'BA'),
('Fernanda Lima', 'fernanda@email.com', 'Recife', 'PE'),
('Rafael Gomes', 'rafael@email.com', 'Brasília', 'DF'),
('Camila Martins', 'camila@email.com', 'Goiânia', 'GO');


-- =========================================
-- TABELA JOGOS
-- =========================================

CREATE TABLE jogos (
    id_jogo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    plataforma VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

-- 15 jogos
INSERT INTO jogos (nome, genero, plataforma, preco, estoque) VALUES
('The Legend of Zelda: Breath of the Wild', 'Aventura', 'Nintendo Switch', 299.90, 10),
('God of War Ragnarök', 'Ação', 'PlayStation 5', 349.90, 8),
('Spider-Man 2', 'Ação', 'PlayStation 5', 299.90, 12),
('Forza Horizon 5', 'Corrida', 'Xbox Series X', 249.90, 15),
('Minecraft', 'Sandbox', 'PC', 99.90, 20),
('FIFA 25', 'Esportes', 'PlayStation 5', 299.90, 10),
('Super Mario Odyssey', 'Aventura', 'Nintendo Switch', 279.90, 7),
('Red Dead Redemption 2', 'Ação', 'PlayStation 4', 199.90, 9),
('Cyberpunk 2077', 'RPG', 'PC', 179.90, 14),
('Elden Ring', 'RPG', 'PlayStation 5', 299.90, 6),
('Grand Theft Auto V', 'Ação', 'Xbox One', 149.90, 18),
('Hogwarts Legacy', 'RPG', 'PlayStation 5', 249.90, 11),
('Mario Kart 8 Deluxe', 'Corrida', 'Nintendo Switch', 299.90, 13),
('Resident Evil 4', 'Terror', 'PlayStation 5', 249.90, 5),
('Call of Duty: Modern Warfare III', 'FPS', 'Xbox Series X', 299.90, 10);


-- =========================================
-- TABELA VENDAS
-- =========================================

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_jogo INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,

    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_jogo) REFERENCES jogos(id_jogo)
);

-- 20 vendas
INSERT INTO vendas (id_cliente, id_jogo, quantidade, data_venda) VALUES
(1, 2, 1, '2026-01-10'),
(2, 5, 2, '2026-01-12'),
(3, 1, 1, '2026-01-15'),
(4, 7, 1, '2026-01-18'),
(5, 9, 2, '2026-01-20'),
(6, 3, 1, '2026-01-22'),
(7, 10, 1, '2026-01-25'),
(8, 4, 2, '2026-01-27'),
(9, 6, 1, '2026-02-01'),
(10, 8, 1, '2026-02-03'),
(1, 11, 2, '2026-02-05'),
(2, 12, 1, '2026-02-08'),
(3, 13, 1, '2026-02-10'),
(4, 14, 2, '2026-02-12'),
(5, 15, 1, '2026-02-15'),
(6, 2, 1, '2026-02-18'),
(7, 5, 3, '2026-02-20'),
(8, 1, 1, '2026-02-22'),
(9, 9, 1, '2026-02-25'),
(10, 3, 2, '2026-02-28');

-- selects

-- Consulta 1
-- Utilize COUNT() para descobrir quantos clientes estão cadastrados na loja.
SELECT count(*) FROM clientes;

-- Consulta 2
-- Utilize COUNT() para descobrir quantos jogos estão cadastrados na tabela jogos.
SELECT count(*) FROM jogos;

-- Consulta 3
-- Utilize COUNT() para descobrir quantos jogos possuem estoque maior que zero.
SELECT count(*) FROM jogos WHERE estoque > 0;

-- Consulta 4
-- Utilize COUNT() e WHERE para descobrir quantos jogos pertencem ao gênero RPG.
SELECT count(*) FROM jogos WHERE genero LIKE ("RPG");

-- Consulta 5
-- Utilize COUNT() e WHERE para descobrir quantos jogos estão disponíveis para uma
-- plataforma específica, escolhida por você.
SELECT count(*) FROM jogos WHERE plataforma = "Playstation 5";

-- Consulta 6
-- Utilize SUM() para descobrir a quantidade total de jogos existentes no estoque.
-- Considere o campo estoque.
SELECT sum(estoque) FROM jogos;

-- Consulta 7
-- Utilize SUM() para descobrir a quantidade total de jogos vendidos.
-- Considere o campo quantidade da tabela vendas.
SELECT sum(quantidade) FROM vendas;

-- Consulta 8
-- Utilize SUM() e WHERE para descobrir quantos jogos foram vendidos em uma
-- determinada data.
-- Escolha uma das datas existentes nos seus registros.
SELECT sum(quantidade) FROM vendas WHERE data_venda = '2026-01-10';

-- Consulta 9
-- Utilize AVG() para descobrir o preço médio de todos os jogos cadastrados.
SELECT avg(preco) FROM jogos;

-- Consulta 10
-- Utilize AVG() e WHERE para descobrir o preço médio dos jogos de um determinado
-- gênero.
-- Escolha um gênero existente no seu banco.
SELECT avg(preco) FROM jogos WHERE genero = "corrida";

-- Consulta 11
-- Utilize AVG() e WHERE para descobrir o preço médio dos jogos de uma determinada
-- plataforma.
SELECT avg(preco) FROM jogos WHERE plataforma LIKE ("%Xbox%");

-- Consulta 12
-- Utilize MAX() para descobrir qual é o maior preço entre os jogos cadastrados.
SELECT max(preco) FROM jogos;

-- Consulta 13
-- Utilize MIN() para descobrir qual é o menor preço entre os jogos cadastrados.
SELECT min(preco) FROM jogos;

-- Consulta 14 — Combinando funções
-- Crie uma consulta que apresente, utilizando AS:
-- ● a quantidade total de jogos cadastrados;
-- ● o preço médio dos jogos;
-- ● o maior preço;
-- ● o menor preço.
-- Utilize as funções:
-- ● COUNT()
-- ● AVG()
-- ● MAX()
-- ● MIN()
-- O resultado deverá ser apresentado em uma única consulta.
SELECT count(8) AS "Quantidade total de jogos cadastrados", avg(preco) "Preco médio dos preços", max(preco) "Maior preço" , min(preco) "Menor preço" FROM jogos;

-- Consulta 15 — Desafio com GROUP BY
-- Agora você terá um pequeno desafio utilizando um comando que ainda não foi trabalhado
-- nas consultas anteriores.
-- Crie uma consulta que apresente quantos jogos existem em cada gênero.
-- O resultado deverá apresentar:
-- ● o gênero;
-- ● a quantidade de jogos de cada gênero.
-- Utilize: COUNT() e GROUP BY
-- Dica: você precisará agrupar os registros pelo campo genero.
SELECT genero, count(id_jogo) AS quantidade_jogos FROM jogos GROUP BY genero;