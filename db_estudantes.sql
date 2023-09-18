CREATE DATABASE db_estudantes;

USE db_estudantes;

CREATE TABLE tb_alunos(
   Id BIGINT IDENTITY(1,1),
   Nome VARCHAR (255) NOT NULL,
   Serie VARCHAR (255),
   DataMatricula DATE,
   Notas DECIMAL(4,2) NOT NULL,
   PRIMARY KEY(Id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos
(Nome, Serie, DataMatricula, Notas)
VALUES 
('Ana','7º A', '2022-01-14', 10.00),
('Mário','8º B', '2023-03-20', 4.53),
('Bruno','1º C', '2023-01-11', 9.55),
('Maria','2º', '2007-01-14', 5.56),
('Jonas','9º A', '2022-09-18', 8.51),
('Tel','4º B', '2023-11-22', 9.75),
('Ana Maria','5º B', '2013-03-02', 3.58),
('Patrícia','8º C', '2022-09-18', 7.39)
;

SELECT * FROM tb_alunos WHERE Notas >7.0;

SELECT * FROM tb_alunos WHERE Notas <7.0;

ALTER TABLE tb_alunos ADD Idade INT;

UPDATE tb_alunos SET Idade = 7 WHERE Id = 1;

SELECT * FROM tb_alunos;
