CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores
(
	 id bigint auto_increment primary key,
     nome varchar(255),
     data_nascimento date,
     setor varchar(255),
     cargo varchar (255),
     salario decimal (8,2)
);

INSERT INTO tb_colaboradores(nome,data_nascimento,setor,cargo,salario)VALUES("Ruriê Miguel","1997-02-05","FullStack","Júnior",4000);
INSERT INTO tb_colaboradores(nome,data_nascimento,setor,cargo,salario)VALUES("Alex Katanosaka","1998-10-06","FullStack","Júnior",4000);
INSERT INTO tb_colaboradores(nome,data_nascimento,setor,cargo,salario)VALUES("Flavio Messias","1997-02-20","FullStack","Júnior",4000);
INSERT INTO tb_colaboradores(nome,data_nascimento,setor,cargo,salario)VALUES("Laura de La Fuente","2003-02-04","FullStack","Júnior",4000);
INSERT INTO tb_colaboradores(nome,data_nascimento,setor,cargo,salario)VALUES("Luca Andrey","1997-09-11","FullStack","Pleno",5500);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario < 4500;
SELECT * FROM tb_colaboradores WHERE salario > 4500;

UPDATE tb_colaboradores SET cargo = "Pleno" WHERE id = 2;