CREATE DATABASE manutencao_industrial;

USE manutencao_industrial;


-- =========================================
-- TABELA DE SETORES
-- =========================================

CREATE TABLE setores (
    id_setor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100),
    responsavel VARCHAR(100)
);


-- =========================================
-- TABELA DE TECNICOS
-- =========================================

CREATE TABLE tecnicos (
    id_tecnico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    turno VARCHAR(30),
    salario DECIMAL(10,2)
);


-- =========================================
-- TABELA DE MAQUINAS
-- =========================================

CREATE TABLE maquinas (
    id_maquina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(100),
    status VARCHAR(30),
    ano_fabricacao INT,
    horas_uso INT,
    id_setor INT,
    FOREIGN KEY (id_setor) REFERENCES setores(id_setor)
);


-- =========================================
-- TABELA DE MANUTENCOES
-- =========================================

CREATE TABLE manutencoes (
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50),
    descricao VARCHAR(200),
    data_manutencao DATE,
    custo DECIMAL(10,2),
    id_maquina INT,
    id_tecnico INT,
    FOREIGN KEY (id_maquina) REFERENCES maquinas(id_maquina),
    FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id_tecnico)
);


-- =========================================
-- TABELA DE PECAS
-- =========================================

CREATE TABLE pecas (
    id_peca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(100),
    quantidade_estoque INT,
    preco DECIMAL(10,2),
    id_manutencao INT,
    FOREIGN KEY (id_manutencao) REFERENCES manutencoes(id_manutencao)
);


-- =========================================
-- SETORES
-- =========================================

INSERT INTO setores (nome, localizacao, responsavel) VALUES
('Usinagem', 'Bloco A', 'Carlos Mendes'),
('Montagem', 'Bloco B', 'Fernanda Alves'),
('Soldagem', 'Bloco C', 'Ricardo Souza'),
('Pintura', 'Bloco D', 'Mariana Costa'),
('Embalagem', 'Bloco E', 'Joao Martins'),
('Corte', 'Bloco F', 'Paulo Rocha'),
('Estoque', 'Bloco G', 'Juliana Lima'),
('Qualidade', 'Bloco H', 'Anderson Silva');


-- =========================================
-- TECNICOS
-- =========================================

INSERT INTO tecnicos (nome, especialidade, turno, salario) VALUES
('Ana Pereira', 'Eletrica', 'Manha', 3200.00),
('Bruno Santos', 'Mecanica', 'Tarde', 3500.00),
('Camila Oliveira', 'Automacao', 'Manha', 4100.00),
('Diego Martins', 'Eletrica', 'Noite', 3800.00),
('Eduardo Costa', 'Hidraulica', 'Tarde', 3300.00),
('Fabiana Souza', 'Mecanica', 'Manha', 3600.00),
('Gabriel Lima', 'Automacao', 'Noite', 4300.00),
('Helena Rocha', 'Eletrica', 'Tarde', 3400.00),
('Igor Mendes', 'Mecanica', 'Noite', 3700.00),
('Julia Alves', 'Hidraulica', 'Manha', 3250.00),
('Lucas Ferreira', 'Pneumatica', 'Tarde', 3900.00),
('Marina Lopes', 'Automacao', 'Manha', 4200.00);


-- =========================================
-- MAQUINAS
-- =========================================

INSERT INTO maquinas
(nome, tipo, status, ano_fabricacao, horas_uso, id_setor) VALUES

('Torno CNC Alpha', 'Torno', 'Ativa', 2020, 5200, 1),
('Fresadora Beta', 'Fresadora', 'Ativa', 2019, 6800, 1),
('Prensa Hidraulica 01', 'Prensa', 'Manutencao', 2018, 7400, 3),
('Esteira Industrial A', 'Esteira', 'Ativa', 2021, 3100, 5),
('Robo de Soldagem X1', 'Robo', 'Ativa', 2022, 2800, 3),
('Cortadora Laser 3000', 'Cortadora', 'Ativa', 2023, 1900, 6),
('Compressor de Ar 01', 'Compressor', 'Parada', 2017, 8200, 1),
('Empilhadeira Eletrica', 'Empilhadeira', 'Ativa', 2021, 4500, 7),
('Cabine de Pintura 02', 'Cabine', 'Manutencao', 2019, 6100, 4),
('Maquina de Embalagem Z', 'Embaladora', 'Ativa', 2022, 3600, 5),
('Torno Convencional 02', 'Torno', 'Parada', 2016, 9100, 1),
('Prensa Pneumatica 02', 'Prensa', 'Ativa', 2020, 4700, 3),
('Furadeira Industrial 01', 'Furadeira', 'Ativa', 2023, 2200, 1),
('Esteira Industrial B', 'Esteira', 'Parada', 2018, 7900, 5),
('Robo de Montagem Y2', 'Robo', 'Ativa', 2024, 1200, 2);


-- =========================================
-- MANUTENCOES
-- =========================================

INSERT INTO manutencoes
(tipo, descricao, data_manutencao, custo, id_maquina, id_tecnico) VALUES

('Preventiva', 'Lubrificacao e ajuste geral', '2026-01-15', 450.00, 1, 2),
('Corretiva', 'Troca do motor principal', '2026-01-22', 1850.00, 2, 6),
('Preventiva', 'Verificacao do sistema hidraulico', '2026-02-05', 620.00, 3, 5),
('Corretiva', 'Reparo no painel eletrico', '2026-02-18', 980.00, 4, 1),
('Preventiva', 'Calibracao dos sensores', '2026-03-03', 750.00, 5, 3),
('Preventiva', 'Limpeza e alinhamento', '2026-03-14', 380.00, 6, 9),
('Corretiva', 'Substituicao do compressor', '2026-03-25', 2400.00, 7, 4),
('Preventiva', 'Revisao do sistema eletrico', '2026-04-08', 560.00, 8, 8),
('Corretiva', 'Troca do sistema de pintura', '2026-04-19', 1750.00, 9, 7),
('Preventiva', 'Ajuste das esteiras', '2026-05-02', 420.00, 10, 2),
('Corretiva', 'Reparo no eixo principal', '2026-05-16', 2100.00, 11, 6),
('Preventiva', 'Inspecao das valvulas', '2026-06-04', 690.00, 12, 10),
('Preventiva', 'Troca de componentes', '2026-06-18', 510.00, 1, 9),
('Corretiva', 'Reparo do sistema hidraulico', '2026-07-03', 1320.00, 3, 5),
('Preventiva', 'Revisao geral', '2026-07-21', 800.00, 5, 3),
('Corretiva', 'Troca de sensores', '2026-08-02', 1150.00, 15, 12),
('Preventiva', 'Ajuste de componentes', '2026-08-12', 480.00, 13, 11),
('Corretiva', 'Reparo do sistema de transporte', '2026-08-25', 1450.00, 14, 2);


-- =========================================
-- PECAS
-- =========================================

INSERT INTO pecas
(nome, categoria, quantidade_estoque, preco, id_manutencao) VALUES

('Rolamento 6204', 'Mecanica', 35, 85.00, 1),
('Correia Industrial A', 'Transmissao', 18, 120.00, 2),
('Valvula Hidraulica', 'Hidraulica', 12, 350.00, 3),
('Disjuntor Trifasico', 'Eletrica', 25, 180.00, 4),
('Sensor de Proximidade', 'Automacao', 30, 95.00, 5),
('Filtro de Ar', 'Pneumatica', 22, 70.00, 6),
('Motor Eletrico 5CV', 'Eletrica', 6, 980.00, 7),
('Bateria Industrial', 'Eletrica', 10, 620.00, 8),
('Bico de Pintura', 'Pintura', 14, 210.00, 9),
('Correia Transportadora', 'Transmissao', 8, 450.00, 10),
('Eixo de Aco', 'Mecanica', 5, 780.00, 11),
('Valvula Pneumatica', 'Pneumatica', 16, 190.00, 12),
('Rolamento 6305', 'Mecanica', 28, 110.00, 13),
('Bomba Hidraulica', 'Hidraulica', 7, 890.00, 14),
('Sensor de Temperatura', 'Automacao', 20, 135.00, 15),
('Placa Eletronica', 'Eletronica', 9, 540.00, 16),
('Broca Industrial', 'Corte', 40, 65.00, 17),
('Motor de Esteira', 'Mecanica', 4, 1250.00, 18);

-- 1
SELECT * FROM maquinas;

-- 2
SELECT * FROM maquinas WHERE status = 'Parada';

-- 3
SELECT * FROM maquinas WHERE status = "Ativa" AND ano_fabricacao >= 2020;

-- 4
SELECT * FROM maquinas WHERE tipo = 'Robo' OR tipo = 'Embaladora';

-- 5
SELECT * FROM maquinas WHERE nome LIKE ('%02');

-- 6
SELECT * FROM pecas WHERE preco BETWEEN 200 AND 800;

-- 7
SELECT * FROM maquinas ORDER BY nome ASC;

-- 8
SELECT * FROM maquinas LIMIT 10;

-- 9
SELECT * FROM tecnicos WHERE especialidade IN ("Eletrica", 'Automacao');

-- 10
SELECT * FROM manutencoes WHERE data_manutencao > "2026-04-08" AND tipo NOT IN ('Preventiva') || descricao LIKE ("%Troca%");