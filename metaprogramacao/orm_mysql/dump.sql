-- Cria o banco de dados orm_mysql, se não existir
CREATE DATABASE IF NOT EXISTS orm_mysql;

-- Usa o banco de dados orm_mysql
USE orm_mysql;

-- Cria a tabela "clientes"
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(15),
    cpf VARCHAR(14) UNIQUE
);

-- Insere 10 registros fictícios na tabela "clientes"
INSERT INTO clientes (nome, telefone, cpf)
VALUES
    ('Cliente 1', '(123) 456-7890', '123.456.789-01'),
    ('Cliente 2', '(234) 567-8901', '234.567.890-12'),
    ('Cliente 3', '(345) 678-9012', '345.678.901-23'),
    ('Cliente 4', '(456) 789-0123', '456.789.012-34'),
    ('Cliente 5', '(567) 890-1234', '567.890.123-45'),
    ('Cliente 6', '(678) 901-2345', '678.901.234-56'),
    ('Cliente 7', '(789) 012-3456', '789.012.345-67'),
    ('Cliente 8', '(890) 123-4567', '890.123.456-78'),
    ('Cliente 9', '(901) 234-5678', '901.234.567-89'),
    ('Cliente 10', '(012) 345-6789', '012.345.678-90');

-- Cria a tabela "fornecedores"
CREATE TABLE IF NOT EXISTS fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(15),
    cnpj VARCHAR(18) UNIQUE,
    endereco VARCHAR(255)
);

-- Insere 10 registros fictícios na tabela "fornecedores"
INSERT INTO fornecedores (nome, telefone, cnpj, endereco)
VALUES
    ('Fornecedor A', '(111) 222-3333', '11.222.333/0001-01', 'Rua A, 123'),
    ('Fornecedor B', '(222) 333-4444', '22.333.444/0001-02', 'Rua B, 456'),
    ('Fornecedor C', '(333) 444-5555', '33.444.555/0001-03', 'Rua C, 789'),
    ('Fornecedor D', '(444) 555-6666', '44.555.666/0001-04', 'Rua D, 101'),
    ('Fornecedor E', '(555) 666-7777', '55.666.777/0001-05', 'Rua E, 202'),
    ('Fornecedor F', '(666) 777-8888', '66.777.888/0001-06', 'Rua F, 303'),
    ('Fornecedor G', '(777) 888-9999', '77.888.999/0001-07', 'Rua G, 404'),
    ('Fornecedor H', '(888) 999-0000', '88.999.000/0001-08', 'Rua H, 505'),
    ('Fornecedor I', '(999) 000-1111', '99.000.111/0001-09', 'Rua I, 606'),
    ('Fornecedor J', '(000) 111-2222', '00.111.222/0001-10', 'Rua J, 707');
