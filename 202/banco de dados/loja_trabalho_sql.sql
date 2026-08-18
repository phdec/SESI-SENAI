CREATE DATABASE loja_consulta;
USE loja_consulta;

CREATE TABLE produtos(
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
    descricao VARCHAR(200),
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- INSERTS

-- SELECTS

