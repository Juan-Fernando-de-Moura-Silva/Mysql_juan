#mostrar todas as batadase presentes
show databases;

#para criar uma nova database  primiro derrube ela porque pod gerar uma copia indejesada
DROP DATABASE IF EXISTS `sql_intro`;

#cria a database com o nome definido
create database sql_intro;

#use significa que qualquer comando que eu não especifique a database vai ser usada a database especificada pelo use
use sql_intro;

# deleta a tabela caso já exita
DROP TABLE IF EXISTS `emp_info`;
DROP TABLE IF EXISTS `Persons`;

#cria  a tabela com as linha que vão esperar alguma informação
CREATE TABLE Persons (
    PersonID int primary key,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

create table `emp_info`(
Nome varchar(30),
idade int,
sex char(1),
dot date,
city varchar(50),
salari float);

#inserir informaçao na tabela
INSERT INTO `emp_info` VALUES ('Kabul',48,'M','1986-07-30','Cuba',4589.50),('Iris',30,'F','1986-07-30','Cuba',2589.50);

#mostra a estrutura da tabela mas não as innformações especificas
describe `emp_info`;

#mostra qualquer informação que esta em emp_info
select * from emp_info;

#mostra cada cidade diferente em emp_info
select distinct city from emp_info;

#mostra o numero de nomes em emp_info
select count(Nome) as count_name from emp_info;

#mostra a soma dos ssalarios em emp_info
select sum(salari) from emp_info;

#mostra a media de salari de emp_info
select avg(salari) from emp_info;

# seleção de colunas
select Nome,idade,city from emp_info;

# 
select * from emp_info where idade < 50;
select * from emp_info where city = "Cuba" or sex = 'F';
select * from emp_info where city in ("Cuba");
select now();

