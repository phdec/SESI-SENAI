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

-- 1. Liste o nome dos cursos e o nome dos professores responsáveis por cada curso.
SELECT c.nome AS nome_curso, p.nome nome_professor FROM cursos c INNER JOIN professores p ON c.id_professor = p.id_professor;

-- 2. Liste o nome do aluno, o nome do curso e o nome do professor responsável pelo
-- curso.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso, p.nome AS nome_professor FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso INNER JOIN professores p ON c.id_professor = p.id_professor;

-- 3. Liste todos os professores e os cursos que eles ministram, incluindo os professores que
-- ainda não possuem nenhum curso.
SELECT * FROM professores p LEFT JOIN cursos c ON p.id_professor = c.id_professor;

-- 4. Liste todos os cursos e os professores responsáveis, incluindo os cursos que não
-- possuem professor cadastrado.
SELECT * FROM professores p RIGHT JOIN cursos c ON p.id_professor = c.id_professor;

-- 5. Liste o nome dos alunos e o nome dos cursos em que estão matriculados.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso;

-- 6. Liste o nome dos alunos e o nome dos cursos em que estão matriculados no curso
-- Banco de Dados.
SELECT a.nome AS nome_aluno, c.nome nome_curso FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso WHERE c.nome LIKE('Banco%');

-- 7. Liste todos os alunos e suas respectivas matrículas, incluindo os alunos que não
-- possuem matrícula.
SELECT * FROM alunos a LEFT JOIN matriculas m ON a.id_aluno = m.id_aluno;

-- 8. Liste o nome dos alunos e os cursos em que estão matriculados, mostrando somente os
-- alunos da cidade de Videira.
SELECT a.nome AS nome_aluno, a.cidade AS cidade_aluno, c.nome AS nome_curso FROM matriculas m INNER JOIN alunos a ON a.id_aluno = m.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso WHERE a.cidade = "Videira";

-- 9. Liste o nome do aluno, o nome do curso e o nome do professor responsável.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso, p.nome AS nome_professor FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso INNER JOIN professores p ON c.id_professor = p.id_professor;

-- 10. Liste o nome do aluno, o curso e o professor responsável pelas matrículas do curso
-- Programação.
SELECT a.nome AS nome_aluno, c.nome AS nome_curso, p.nome AS nome_professor FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso INNER JOIN professores p ON c.id_professor = p.id_professor WHERE c.nome = "Programação";

-- 11. Liste todos os alunos, seus cursos e os respectivos professores, incluindo os alunos que
-- não possuem matrícula.
SELECT * FROM alunos a LEFT JOIN matriculas m ON a.id_aluno = m.id_aluno LEFT JOIN cursos c ON m.id_curso = c.id_curso LEFT JOIN professores p ON c.id_professor = p.id_professor;

-- 12. Liste todos os cursos, os alunos matriculados e os professores responsáveis, incluindo
-- os cursos que não possuem alunos matriculados.
SELECT * FROM cursos c LEFT JOIN matriculas m ON c.id_curso = m.id_curso LEFT JOIN alunos a ON a.id_aluno = m.id_aluno LEFT JOIN professores p ON c.id_professor = p.id_professor;

-- 13. Liste os alunos da cidade de Videira, o curso em que estão matriculados e o professor
-- responsável.
SELECT * FROM alunos a INNER JOIN matriculas m ON a.id_aluno = m.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso INNER JOIN professores p ON c.id_professor = p.id_professor WHERE cidade = "Videira";

-- 14. Liste todos os alunos, seus cursos e professores, mantendo também os alunos que não
-- possuem nenhuma matrícula.
SELECT * FROM alunos a LEFT JOIN matriculas m ON a.id_aluno = m.id_aluno LEFT JOIN cursos c ON m.id_curso = c.id_curso LEFT JOIN professores p ON c.id_professor = p.id_professor;

-- 15. Faça uma consulta utilizando INNER JOIN para mostrar aluno, curso e professor,
-- considerando somente os registros que possuem relacionamento entre as três tabelas.
SELECT * FROM matriculas m INNER JOIN alunos a ON m.id_aluno = a.id_aluno INNER JOIN cursos c ON m.id_curso = c.id_curso INNER JOIN professores p ON c.id_professor = p.id_professor;