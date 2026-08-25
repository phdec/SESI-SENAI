CREATE DATABASE loja_consulta;
USE loja_consulta;

CREATE TABLE produtos (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(70),
    preco FLOAT,
    custo FLOAT,
    descricao VARCHAR(200)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE,
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente)
        REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_vendedor)
        REFERENCES vendedores (id_vendedor)
);

CREATE TABLE itens_vendas(
	id_item_venda INT PRIMARY KEY AUTO_INCREMENT,
    unitario FLOAT,
    total FLOAT,
    quantidade INT,
    id_produto INT,
    id_venda INT,
    FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE vendedores(
	id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(17)
);

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(17)
);

CREATE TABLE categorias(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(70),
    descricao VARCHAR(200)
);

-- INSERTS

 INSERT INTO produtos ( nome, preco, custo, descricao )
	VALUES
	('Camiseta Básica Branca', 59.90, 28.00, 'Camiseta de algodão branca, confortável e versátil para o dia a dia.'),
	('Calça Jeans Slim', 149.90, 75.00, 'Calça jeans de corte slim, moderna e confortável.'),
	('Moletom Canguru Preto', 129.90, 65.00, 'Moletom preto com capuz e bolso frontal, ideal para dias frios.'),
	('Boné Aba Curva', 49.90, 22.00, 'Boné casual com aba curva e ajuste traseiro.'),
	('Bolsa Transversal Feminina', 89.90, 42.00, 'Bolsa compacta e prática, ideal para carregar itens essenciais.');

INSERT INTO clientes ( nome, email, telefone )
	VALUES
    ('João Silva', 'joao.silva@email.com', '(11) 99999-1111'),
    ('Maria Santos', 'maria.santos@email.com', '(11) 99999-2222'),
    ('Pedro Oliveira', 'pedro.oliveira@email.com', '(11) 99999-3333'),
    ('Ana Costa', 'ana.costa@email.com', '(11) 99999-4444'),
    ('Lucas Souza', 'lucas.souza@email.com', '(11) 99999-5555');
    
INSERT INTO vendedores (nome, email, telefone)
	VALUES 
    ('Carlos Almeida', 'carlos.almeida@email.com', '(11) 99999-1111'),
    ('Juliana Ferreira', 'juliana.ferreira@email.com', '(11) 99999-2222'),
    ('Rafael Martins', 'rafael.martins@email.com', '(11) 99999-3333'),
    ('Fernanda Lima', 'fernanda.lima@email.com', '(11) 99999-4444'),
    ('Gabriel Rocha', 'gabriel.rocha@email.com', '(11) 99999-5555');
    
INSERT INTO categorias (nome, descricao)
	VALUES
    ('Roupas', 'Peças de vestuário para uso casual e cotidiano.'),
    ('Acessórios', 'Acessórios para complementar o visual.');
    
INSERT INTO vendas ( data_venda, id_cliente, id_vendedor )
	VALUES
    ('2026-08-20', 1, 1),
    ('2026-08-21', 2, 3),
    ('2026-08-22', 3, 2),
    ('2026-08-23', 4, 5),
    ('2026-08-24', 5, 4);
    
INSERT INTO itens_vendas ( unitario, total, quantidade, id_produto, id_venda )
	VALUES
    (59.90, 119.80, 2, 1, 6),
    (149.90, 149.90, 1, 2, 6),
    (129.90, 129.90, 1, 3, 6),
    (49.90, 99.80, 2, 4, 7),
    (89.90, 179.80, 2, 5, 8),
    (59.90, 59.90, 1, 1, 8),
    (149.90, 299.80, 2, 2, 9),
    (129.90, 259.80, 2, 3, 9),
    (49.90, 149.70, 3, 4, 10),
    (89.90, 89.90, 1, 5, 10);

-- SELECTS

SELECT * FROM produtos;
SELECT * FROM categorias;
SELECT * FROM vendedores;
SELECT * FROM clientes;
SELECT * FROM vendas;
SELECT * FROM itens_vendas;

SELECT total FROM itens_vendas;

SELECT preco FROM produtos WHERE preco < 80;

SELECT * FROM vendedores ORDER BY nome;

SELECT * FROM vendas LIMIT 4;

SELECT * FROM itens_vendas WHERE total BETWEEN 90 AND 140;

SELECT * FROM clientes ORDER BY nome DESC;

-- ALTERS

ALTER TABLE produtos
ADD COLUMN id_categoria INT,
ADD CONSTRAINT id_categoria FOREIGN KEY (id_categoria) 
	REFERENCES categorias(id_categoria);
    
-- UPDATES

UPDATE produtos
SET id_categoria = 2
WHERE id_produto IN (4, 5, 9, 10);