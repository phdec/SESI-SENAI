USE escola;

INSERT INTO enderecos (rua, cidade, estado, cep) VALUES
('Rua das Flores, 123', 'São Paulo', 'SP', '01001-000'),
('Avenida Brasil, 456', 'Rio de Janeiro', 'RJ', '20040-002'),
('Rua XV de Novembro, 789', 'Curitiba', 'PR', '80020-310'),
('Rua das Palmeiras, 321', 'Belo Horizonte', 'MG', '30130-110'),
('Avenida Central, 654', 'Florianópolis', 'SC', '88010-400'),
('Rua do Comércio, 987', 'Porto Alegre', 'RS', '90010-150');

INSERT INTO clientes (
    nome,
    email,
    telefone,
    cpf,
    data_nascimento,
    id_endereco
) VALUES
('João Silva', 'joao.silva@email.com', '11987654321', '123.456.789-01', '1990-05-15', 1),
('Maria Oliveira', 'maria.oliveira@email.com', '21987654322', '234.567.890-12', '1988-09-20', 2),
('Carlos Souza', 'carlos.souza@email.com', '41987654323', '345.678.901-23', '1995-02-10', 3),
('Ana Pereira', 'ana.pereira@email.com', '31987654324', '456.789.012-34', '1992-11-08', NULL),
('Lucas Santos', 'lucas.santos@email.com', '48987654325', '567.890.123-45', '2000-07-30', 5),
('Fernanda Lima', 'fernanda.lima@email.com', '51987654326', '678.901.234-56', '1998-03-18', NULL);

-- select

-- inner join - mostra somente os cientes que possuem endereço
SELECT * FROM clientes;
SELECT c.nome, c.email, c.telefone, e.estado, e.cidade, e.rua FROM clientes c INNER JOIN enderecos e ON c.id_endereco = e.id_enderecos;

-- left join - mostra todos os clientes, mesmo que não tenham endereço
SELECT c.nome, c.email, c.telefone, e.estado, e.cidade, e.rua FROM clientes c LEFT JOIN enderecos e ON c.id_endereco = e.id_enderecos;

SELECT c.nome, c.email, c.telefone, e.estado, e.cidade, e.rua FROM clientes c RIGHT JOIN enderecos e ON c.id_endereco = e.id_enderecos;