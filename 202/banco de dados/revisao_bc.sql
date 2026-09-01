CREATE DATABASE manutencao_industrial;

USE manutencao_industrial;

CREATE TABLE maquinas (
    id_maquina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    setor VARCHAR(50),
    tipo VARCHAR(50),
    ano INT,
    status VARCHAR(20)
);

CREATE TABLE tecnicos (
    id_tecnico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    turno VARCHAR(20),
    cidade VARCHAR(50)
);

CREATE TABLE manutencoes (
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    data_manutencao DATE,
    tipo VARCHAR(30),
    custo DECIMAL(10,2),
    observacao VARCHAR(200),
    id_maquina INT,
    id_tecnico INT,
    FOREIGN KEY (id_maquina)
        REFERENCES maquinas(id_maquina),
    FOREIGN KEY (id_tecnico)
        REFERENCES tecnicos(id_tecnico)
);

INSERT INTO maquinas
(nome, setor, tipo, ano, status)
VALUES
('Torno CNC 01', 'Usinagem', 'Torno CNC', 2020, 'Ativa'),
('Fresa CNC 02', 'Usinagem', 'Fresa CNC', 2018, 'Ativa'),
('Prensa Hidraulica 01', 'Estamparia', 'Prensa', 2016, 'Manutencao'),
('Esteira 01', 'Expedicao', 'Esteira', 2022, 'Ativa'),
('Robo Soldador 01', 'Soldagem', 'Robo', 2021, 'Ativa'),
('Compressor 01', 'Utilidades', 'Compressor', 2015, 'Inativa'),
('Torno CNC 02', 'Usinagem', 'Torno CNC', 2023, 'Ativa'),
('Prensa Hidraulica 02', 'Estamparia', 'Prensa', 2019, 'Ativa');

INSERT INTO tecnicos
(nome, especialidade, turno, cidade)
VALUES
('Joao Pereira', 'Mecanica', 'Manha', 'Concordia'),
('Mariana Souza', 'Eletrica', 'Tarde', 'Chapeco'),
('Pedro Alves', 'Automacao', 'Manha', 'Joacaba'),
('Camila Costa', 'Mecanica', 'Noite', 'Xanxere'),
('Lucas Martins', 'Eletrica', 'Tarde', 'Concordia'),
('Fernanda Lima', 'Automacao', 'Manha', 'Chapeco');

INSERT INTO manutencoes
(data_manutencao, tipo, custo, observacao, id_maquina, id_tecnico)
VALUES
('2026-08-01', 'Preventiva', 450.00, 'Troca de oleo', 1, 1),
('2026-08-03', 'Corretiva', 1200.00, 'Falha no motor', 2, 2),
('2026-08-05', 'Preventiva', 300.00, 'Lubrificacao', 3, 4),
('2026-08-08', 'Corretiva', 850.00, 'Problema no sensor', 4, 3),
('2026-08-10', 'Preventiva', 650.00, 'Revisao geral', 5, 3),
('2026-08-12', 'Corretiva', 1500.00, 'Falha eletrica', 6, 5),
('2026-08-15', 'Preventiva', 500.00, 'Ajuste mecanico', 1, 1),
('2026-08-18', 'Corretiva', 950.00, 'Troca de componente', 7, 2),
('2026-08-20', 'Preventiva', 400.00, 'Inspecao preventiva', 8, 4),
('2026-08-22', 'Corretiva', 1800.00, 'Falha no sistema', 5, 6),
('2026-08-25', 'Preventiva', 350.00, 'Lubrificacao geral', 2, 1),
('2026-08-28', 'Corretiva', 1100.00, 'Problema eletrico', 7, 5);


-- seleciona todas as colunas de uma tabela
SELECT * FROM maquinas;

-- seleciona apenas o nome e especialidade
SELECT nome, especialidade FROM tecnicos;

-- selecionar as maquinas de um setor específico
SELECT * FROM maquinas WHERE setor = 'Usinagem';

-- seleciona maquinas com condição de ano maior que 2020
SELECT * FROM maquinas WHERE ano >= 2020;

-- entre dois anos
SELECT * FROM maquinas WHERE ano BETWEEN 2016 AND 2021;

-- maquinas de setor de Usinagem, Soldagem e Exepdição
SELECT * FROM maquinas WHERE setor = 'Usinagem' OR setor = 'Soldagem' || setor = 'Expedição';

SELECT * FROM maquinas WHERE setor IN ('Usinagem', 'Soldagem', 'Expedição');

-- selecionar todas as máquinas que não sejam Usinagem
SELECT * FROM maquinas WHERE setor != 'Usinagem';
SELECT * FROM maquinas WHERE setor <> 'Usinagem';
SELECT * FROM maquinas WHERE NOT setor = 'Usinagem';
-- nem Soldagem
SELECT * FROM maquinas WHERE setor NOT IN ('Usinagem', 'Soldagem');

-- selecionar todas as maquinas que começam com Torno
SELECT * FROM maquinas WHERE nome LIKE 'Torno %';

-- todas as maquinas que terminam com 01
SELECT * FROM maquinas WHERE nome LIKE '%01';