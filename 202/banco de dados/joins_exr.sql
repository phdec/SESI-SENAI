CREATE DATABASE escola_exr;
USE escola_exr;
CREATE TABLE professores (
id_professor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)
);
CREATE TABLE cursos (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);
CREATE TABLE alunos (
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
cidade VARCHAR(50)
);
CREATE TABLE matriculas (
id_matricula INT PRIMARY KEY AUTO_INCREMENT,
id_aluno INT,
id_curso INT,
FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO professores (nome) VALUES
('Carlos'),
('Fernanda'),
('Ricardo'),
('Patricia');
INSERT INTO cursos (nome, id_professor) VALUES
('Banco de Dados', 1),
('Programação', 2),
('Redes de Computadores', 3),
('Desenvolvimento Web', 1),
('Design Gráfico', 4);
INSERT INTO alunos (nome, cidade) VALUES
('João', 'Videira'),
('Maria', 'Caçador'),
('Pedro', 'Joaçaba'),
('Ana', 'Videira'),
('Lucas', 'Fraiburgo'),
('Juliana', 'Videira');
INSERT INTO matriculas (id_aluno, id_curso) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 3);

-- 1. Liste o nome dos alunos e o nome dos cursos em que estão matriculados.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso;

-- 2. Liste o nome do aluno, o nome do curso e o nome do professor responsável pelo
-- curso.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso, p.nome AS nome_professor FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso INNER JOIN professores p ON c.id_professor = p.id_professor;