
CREATE DATABASE db_escola; /*Comando de criação de Banco de Dados*/

/*Seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
    id bigint auto_increment primary key,
	nome varchar(255),
    data_nascimento date,
    turma int,
    nota decimal(5,2)/*o primeiro numero da chave, define a quantidade máxima de numeros gerais no valor, o segundo, a quantidade de casas depois da virgula!*/
);

/*Inserindo 8 registros na tabela*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Ruriê Miguel","1997-02-05",57,9.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("João","1989-12-14",57,9.4);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Maria","2001-10-17",57,9.3);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jose","1996-07-05",57,7.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Leoncio","1999-03-27",57,8.4);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Anastacia","1997-09-21",57,7.6);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jurubeba","1997-08-14",57,4.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jubileu","1997-01-01",57,8.5);

/*Seleciona todos os dados da tabela de alunos*/
SELECT * FROM tb_alunes;

/*Seleciona todos os dados da tabela de alunos, onde a nota for maior de 7*/
SELECT * FROM tb_alunes WHERE nota > 7.0;

SELECT * FROM tb_alunes WHERE nota < 7.0;

UPDATE tb_alunes SET nota = 7 WHERE id = 3;