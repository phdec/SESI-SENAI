CREATE DATABASE biblioteca;


/*==============================================================
    PASSO 2 - SELECIONAR O BANCO
==============================================================*/

USE biblioteca;


/*==============================================================
    PASSO 3 - CRIAR AS TABELAS
==============================================================*/

CREATE TABLE livros (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    ano INT,
    quantidade INT
);

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(20),
    telefone VARCHAR(20),
    cidade VARCHAR(50)
);

CREATE TABLE emprestimos (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE,
    data_devolucao DATE,
    status VARCHAR(20),

    id_aluno INT,
    id_livro INT,

    FOREIGN KEY (id_aluno)
        REFERENCES alunos(id_aluno),

    FOREIGN KEY (id_livro)
        REFERENCES livros(id_livro)
);


/*==============================================================
    PASSO 4 - INSERIR DADOS
==============================================================*/


/*-------------------------
    TABELA LIVROS
-------------------------*/

INSERT INTO livros 
(titulo, autor, categoria, ano, quantidade) VALUES
('Dom Casmurro','Machado de Assis','Romance',1899,4),
('O Hobbit','J. R. R. Tolkien','Fantasia',1937,6),
('Clean Code','Robert C. Martin','Tecnologia',2008,2),
('Banco de Dados','Carlos Heuser','Tecnologia',2010,5),
('O Pequeno Príncipe','Antoine de Saint-Exupéry','Infantil',1943,8);


/*-------------------------
    TABELA ALUNOS
-------------------------*/

INSERT INTO alunos 
(nome, turma, telefone, cidade) VALUES
('Ana Silva','1A','49999990001','Concórdia'),
('Bruno Costa','1A','49999990002','Concórdia'),
('Carlos Souza','2B','49999990003','Chapecó'),
('Daniela Lima','2B','49999990004','Joaçaba'),
('Eduarda Alves','3A','49999990005','Xanxerê');


/*-------------------------
    TABELA EMPRÉSTIMOS
-------------------------*/

INSERT INTO emprestimos 
(data_emprestimo, data_devolucao, status, id_aluno, id_livro) VALUES
('2026-08-01','2026-08-08','Devolvido',1,2),
('2026-08-02','2026-08-09','Em aberto',2,3),
('2026-08-03','2026-08-10','Em aberto',3,5),
('2026-08-04','2026-08-11','Devolvido',4,1),
('2026-08-05','2026-08-12','Em aberto',5,4);



/*CONSULTAS SQL*/
-- selecionar registros de uma tabela
select * from alunos;
select * from livros;
select * from emprestimos;

-- mostrar colunas especificas
select nome, telefone from alunos;
select titulo, ano, quantidade from livros;

-- selecionar os livros após o ano de 2000
select * from livros 
	where ano > 2000;
    
-- seleciona livros com quantidade menor que 5
select * from livros
	where quantidade < 5;
    
-- selecionar alunos de uma turma
select * from alunos
	where turma = '2B';
    
-- selecionar emprestimos de uma data especifica
select * from emprestimos 
	where data_emprestimo = '2026-08-04';
    
-- selecionar livros com intervalo de anos
select * from livros 
	where ano between 2008 and 2015;
    
-- selecionar livros ordenando por titulo
select * from livros 
	order by titulo;
    
-- selecionar apenas os 2 primeiros alunos
select * from alunos 
	limit 2;