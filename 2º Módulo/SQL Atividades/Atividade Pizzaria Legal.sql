CREATE DATABASE db_pizzaria_legal;
USE    db_pizzaria_legal;
CREATE TABLE tb_categorias
(
    id int auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(20),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas
(
    id int auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id int,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)
VALUES 
("Salgada", "Broto", true),
("Salgada", "Broto", false),
("Salgada", "Grande", true),
("Salgada", "Grande", false),
("Doce", "broto", false),
("Doce", "broto", true),
("Doce", "Grande", false),
("Doce", "Grande", true);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES
("Frango c/ Catupiry", 45.99, "tradicional", 5, 2),
("Prestigio", 50.99, "tradicional", 2,8),
("Mussarela", 40.99, "tradicional", 3, 2),
("Calabresa", 42.99, "tradicional", 5, 3);


SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco < 45.00;

SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC;


SELECT * FROM tb_pizzas WHERE preco >= 45.00 AND preco <= 100;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%y%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.descricao = "Salgada";