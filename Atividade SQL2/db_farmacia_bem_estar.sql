CREATE DATABASE db_farmacia_bem_estar

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Tipo VARCHAR(255) NOT NULL,
	SubTipo VARCHAR(255),
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Ativa BIT,
	Quantidade INT,
	Valor DECIMAL(6,2),
	PRIMARY KEY(Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias
(Tipo,SubTipo)
VALUES
('Higiene Pessoal', 'Produtos para Corpo'),
('Higiene Pessoal', 'Produtos Capilares'),
('Produtos de Beleza', 'Maquiagens'),
('Produtos de Saúde', 'Medicamentos'),
('Produtos de Saúde', 'Vitaminas')
;

INSERT INTO tb_produtos
(Nome,Ativa, Quantidade, Valor,categoria_id)
VALUES
('Hidratante Corporal', 1, 10, 800.00,1),
('Condicionador',1, 2, 40.20, 2),
('Vitamina C Líquida', 0, 40, 673.03 ,5),
('Vitamina C Cápsula', 1, 2, 60.78, 5),
('Batom', 1, 2, 5.00, 3),
('Dipirona', 1, 5, 20.00, 4),
('Sabonete', 1, 1, 10.30, 1),
('Blush', 1, 1,55.00, 3)
;

SELECT * FROM tb_produtos WHERE Valor >50.00;

SELECT * FROM tb_produtos WHERE Valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE tb_categorias.Tipo = 'Higiene Pessoal';





