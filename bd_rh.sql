CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionario(
   Id BIGINT IDENTITY(1,1),
   Nome VARCHAR (255) NOT NULL,
   Cargo VARCHAR (255),
   DataAdimicao DATE,
   Salario DECIMAL(9,2) NOT NULL,
   PRIMARY KEY(Id)
);

INSERT INTO tb_funcionario
(Nome, Cargo, DataAdimicao, Salario)
VALUES 
('Henrique','Desenvolvedor Júnior', '2023-09-18', 1700.68),
('Ana','Desenvolvedora Júnior', '2023-09-18', 4000.25),
('Jonas','Desenvolvedor Júnior', '2023-09-18', 1300.34),
('Maria','Desenvolvedora Pleno', '2021-01-18', 12000.00),
('Kelly','Desenvolvedora Sênior', '2016-01-04', 22000.40),
('Bruno','Desenvolvedor Estagiário', '2022-07-21', 2000.00)
;

SELECT * FROM tb_funcionario WHERE Salario <2000;

SELECT * FROM tb_funcionario WHERE Salario >2000;

UPDATE tb_funcionario SET Cargo = 'Desenvolvedor Treinne' WHERE Id = 6;

SELECT * FROM tb_funcionario;