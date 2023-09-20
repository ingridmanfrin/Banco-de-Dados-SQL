CREATE DATABASE db_construindo_vidas

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255),
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Ativa BIT DEFAULT (1),
	UnidadePadrao VARCHAR(255),
	Valor DECIMAL(6,2),
	PRIMARY KEY(Id),
	categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias
(Nome,Tipo)
VALUES
('Hidráulica', 'Construção'),
('Revestimentos', 'Acabamento'),
('Tintas', 'Acabamento'),
('Ferragens', 'Construção'),
('Elétrica', 'Construção/Acabamento')
;

INSERT INTO tb_produtos
(Nome, Ativa, UnidadePadrao, Valor,categoria_id)
VALUES
('Cano PVC 1"', 1, 'metro', 10.00,1),
('Tinta Coral Branca',1, 'Lata', 120.20, 3),
('Coluna 3/8', 0, 'metro', 70.00 ,4),
('Porcelanato Barroco', 1, 'caixa', 300.78, 2),
('Lâmpada Retrô', 1, 'unidade', 55.00, 5),
('Contatora Guarda Motor', 1, 'unidade', 550.02, 5),
('Tinta Suvinil para Piso', 1, 'Lata', 999.30, 3),
('Registro de Água', 1, 'unidade', 130.31, 1)
;

SELECT * FROM tb_produtos WHERE Valor >100.00;

SELECT * FROM tb_produtos WHERE Valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.categoria_id
WHERE tb_categorias.Nome = 'Elétrica';