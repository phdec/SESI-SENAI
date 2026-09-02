CREATE DATABASE eventos;

USE eventos;

CREATE TABLE eventos (
    id_evento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    data_evento DATE,
    local_evento VARCHAR(100),
    valor DECIMAL(10,2)
);

CREATE TABLE participantes (
    id_participante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    idade INT,
    email VARCHAR(100)
);

CREATE TABLE inscricoes (
    id_inscricao INT PRIMARY KEY AUTO_INCREMENT,
    data_inscricao DATE,
    status VARCHAR(20),
    id_participante INT,
    id_evento INT,

    FOREIGN KEY (id_participante)
        REFERENCES participantes(id_participante),

    FOREIGN KEY (id_evento)
        REFERENCES eventos(id_evento)
);

INSERT INTO eventos
(nome, tipo, data_evento, local_evento, valor)
VALUES
('Workshop de Inteligencia Artificial', 'Workshop', '2026-09-10', 'Auditorio Central', 120.00),
('Palestra sobre Tecnologia', 'Palestra', '2026-09-12', 'Centro Empresarial', 80.00),
('Curso de Banco de Dados', 'Curso', '2026-09-15', 'Sala 01', 250.00),
('Feira de Tecnologia', 'Feira', '2026-09-18', 'Centro de Eventos', 50.00),
('Workshop de Robotica', 'Workshop', '2026-09-20', 'Laboratorio 02', 180.00),
('Palestra sobre Carreira', 'Palestra', '2026-09-22', 'Auditorio Central', 60.00),
('Curso de Programacao', 'Curso', '2026-09-25', 'Sala 03', 300.00),
('Feira de Inovacao', 'Feira', '2026-09-28', 'Centro de Eventos', 70.00);

INSERT INTO participantes
(nome, cidade, idade, email)
VALUES
('Ana Souza', 'Chapeco', 19, 'ana@email.com'),
('Bruno Martins', 'Concordia', 22, 'bruno@email.com'),
('Carlos Oliveira', 'Chapeco', 28, 'carlos@email.com'),
('Daniela Costa', 'Xanxere', 21, 'daniela@email.com'),
('Eduardo Lima', 'Concordia', 31, 'eduardo@email.com'),
('Fernanda Alves', 'Joacaba', 25, 'fernanda@email.com'),
('Gabriel Santos', 'Chapeco', 20, 'gabriel@email.com'),
('Helena Pereira', 'Xanxere', 27, 'helena@email.com'),
('Igor Rodrigues', 'Concordia', 24, 'igor@email.com'),
('Juliana Martins', 'Joacaba', 30, 'juliana@email.com'),
('Lucas Souza', 'Chapeco', 23, 'lucas@email.com'),
('Mariana Costa', 'Concordia', 26, 'mariana@email.com');

INSERT INTO inscricoes
(data_inscricao, status, id_participante, id_evento)
VALUES
('2026-08-01', 'Confirmada', 1, 1),
('2026-08-02', 'Confirmada', 2, 1),
('2026-08-03', 'Pendente', 3, 1),
('2026-08-04', 'Confirmada', 4, 2),
('2026-08-05', 'Confirmada', 5, 2),
('2026-08-06', 'Cancelada', 6, 2),
('2026-08-07', 'Confirmada', 7, 3),
('2026-08-08', 'Confirmada', 8, 3),
('2026-08-09', 'Pendente', 9, 3),
('2026-08-10', 'Confirmada', 10, 4),
('2026-08-11', 'Confirmada', 11, 4),
('2026-08-12', 'Confirmada', 12, 4),
('2026-08-13', 'Confirmada', 1, 5),
('2026-08-14', 'Cancelada', 2, 5),
('2026-08-15', 'Confirmada', 3, 5),
('2026-08-16', 'Confirmada', 4, 6),
('2026-08-17', 'Pendente', 5, 6),
('2026-08-18', 'Confirmada', 6, 7),
('2026-08-19', 'Confirmada', 7, 7),
('2026-08-20', 'Confirmada', 8, 7),
('2026-08-21', 'Pendente', 9, 8),
('2026-08-22', 'Confirmada', 10, 8),
('2026-08-23', 'Confirmada', 11, 8);

-- selects

-- Liste os participantes com idade maior que 25 anos.
SELECT * FROM participantes WHERE idade > 25;

-- Liste os eventos com valor entre R$ 70 e R$ 200.
SELECT * FROM eventos WHERE valor BETWEEN 70 AND 200;

-- Liste os participantes de Chapeco ou Concordia.
SELECT * FROM participantes WHERE cidade IN ('Chapeco', 'Concordia');

-- Liste os eventos que não são do tipo Palestra.
SELECT * FROM eventos WHERE tipo NOT IN ('Palestra');

-- Liste os participantes cujo nome começa com M.
SELECT * FROM participantes WHERE nome LIKE ('M%');

-- Liste os eventos cujo nome contém Tecnologia.
SELECT * FROM eventos WHERE nome LIKE ('%Tecnologia%');

-- Liste os eventos realizados entre 15/09/2026 e 25/09/2026.
SELECT * FROM eventos WHERE data_evento BETWEEN '2026-09-15' AND '2026-09-25';

-- Liste os participantes com idade entre 20 e 30 anos, em ordem decrescente de idade.
SELECT * FROM participantes WHERE idade BETWEEN 20 AND 30 ORDER BY idade ASC;