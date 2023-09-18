CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
   Id BIGINT IDENTITY(1,1),
   Nome VARCHAR (255) NOT NULL,
   Categoria VARCHAR (255),
   DataRegistro DATE,
   Valor DECIMAL(9,2) NOT NULL,
   PRIMARY KEY(Id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto
(Nome, Categoria, DataRegistro, Valor)
VALUES 
('Copo de cristal','Cozinha', '2022-01-14', 930.02),
('Copo de vidro','Cozinha', '2023-03-20', 90.00),
('Vaso de Murano','Decoração', '2023-01-11', 1080.04),
('Tábua','Cozinha', '2007-01-14', 30.02),
('Faqueiro','Cozinha', '2022-09-18', 100.55),
('Edredom','Cama', '2023-11-22', 600.00),
('Toalha de Banho','Banho', '2013-03-02', 500.55),
('Tolha de mesa','Mesa', '2022-09-18', 80.00)
;

SELECT * FROM tb_produto WHERE Valor <500;

SELECT * FROM tb_produto WHERE Valor >500;

UPDATE tb_produto SET Categoria = 'Decoração Fina' WHERE Id = 8;