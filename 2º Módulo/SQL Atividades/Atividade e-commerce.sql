CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos
(
	id bigint auto_increment primary key,
    nome varchar(255),
    setor varchar(255),
    valor decimal(8,2),
    codigo int
);

INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Sabonete","Higiene",4.5,773);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Pasta de Dente","Higiene",3.75,743);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Apresuntado 100g","Frios",3.5,495);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Mussarela 100g","Frios",6.5,475);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Tempero para Feijão","Condimentos",5.5,347);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Tempero para Macarrão","Condimentos",5.7,335);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Chocolate Ao Leite","Doces",6.7,947);
INSERT INTO tb_produtos(nome,setor,valor,codigo)VALUES("Chocolate Branco","Doces",6.5,934);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor < 5;
SELECT * FROM tb_produtos WHERE valor > 5;

UPDATE tb_produtos SET codigo = 935 WHERE id = 8;