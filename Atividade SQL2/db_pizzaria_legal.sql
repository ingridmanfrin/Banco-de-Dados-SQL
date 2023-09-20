CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Pedacos INT,
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255),
	Valor DECIMAL(6,2),
	PRIMARY KEY(Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias
(Nome,Pedacos)
VALUES
('Broto', 4),
('Grande', 8),
('Gigante', 16),
('Individual', 1),
('Média', 6)
;

INSERT INTO tb_pizzas
(Nome,Tipo, Valor, categoria_id)
VALUES
('Mussarella', 'Salgada', 40.10, 2),
('Morango com Chocolate', 'Doce', 30.50, 1),
('Calabresa', 'Salgada', 130.00, 3),
('Marguerita', 'Salgada', 43.19, 5),
('Banana Nevada', 'Doce', 50.00, 2),
('Peperoni', 'Salgada', 20.00, 4),
('Prestígio', 'Doce', 20.00, 4),
('Palmito com Mussarela', 'Salgada', 20.00, 4)
;

SELECT * FROM tb_pizzas WHERE Valor > 45.00;

SELECT * FROM tb_pizzas WHERE Valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE Nome LIKE '%M%';

 SELECT * FROM tb_pizzas INNER JOIN tb_categorias
 ON tb_categorias.Id = tb_pizzas.categoria_id;

 SELECT * FROM tb_pizzas INNER JOIN tb_categorias
 ON tb_categorias.Id = tb_pizzas.categoria_id
 WHERE tb_categorias.Nome = 'Individual';

