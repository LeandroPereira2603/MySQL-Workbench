AS
--vai nomear--

SELECT ID_Cliente AS 'ID do cliente', Nome AS 'Nome de cliente ' , Data_Nascimento AS 'Data de nascimento ' , Email AS 'E-mail de clientes', FROM clientes;
FROM

--Este comando vai apontar qual a tabela a se referir--

 SELECT * FROM pedido ;
-- LIMITE--
-- Este comando vai selecionar as cinco primeiras linhas--

SELECT FROM  cliente 
--LIMITE  5;--
ORDER BY
--Selecionar todas as linhas de tabela produtos ,mas ordenado pela coluna preco_unit--

 SELECT  * FROM  PRODUTOS 
 ORDER BY  Preco_unit  DESC;
SELECT
--Este comando vai selecionar toda a tabela , ou seja todas as colunas e linhas.--

 SELECT * FROM tabela;
--Irá Selecionar apenas algumas colunas da tabela cliente--

 SELECT ID_Cliente, Nome , 
 Data_Nascimento , Email FROM 
 clientes;
--Desta forma fica visualmente melhor--

 SELECT ID_Cliente, 
 Nome , 
 Data_Nascimento ,
 Email
 FROM clientes;
WHERE
--Serve para filtrar dados--

--Mostra apenas os produtos com preços iguais ou maiores que R$:1,000--
 SELECT  * 
 FROM  produtos 
 WHERE  Preco_Unit = 3100;
--Mostra apenas os produtos da marca DELL--
 SELECT  * 
 FROM  produtos 
 WHERE Marca_Produto = 'DELL';
--Mostra apenas OS PEDIDOS FEITOS NO DIA 03/01/2019,colocar no formato americano--
 SELECT  * 
 FROM  pedidos 
 WHERE  Data_Vendas = '2019-01-03';
--Mostra apenas OS clientess Solteiroa do sexo masculino--
 SELECT  * 
 FROM  clientes 
 WHERE  Estado_Civil = 's' AND sexo = 'M' ;
--Mostra apenas OS produtos da marca Dell ou Samsung--
 SELECT  * 
 FROM  produtos 
 WHERE Marca_Produto = 'DELL' OR Marca_Produto = 'Samsung' ;
DROP
--Irá deletar o banco de dados cadastro--
DROP DATABASE cadastro;
--Irá deletar a tabela cadastro;--
DROP TABLE cadastro;
--Definir o padrão de caractere utf8--
--Tem que colocar junto ao criar o banco de dados para funcionar--

CREATE DATABASE cadastro 
DEFAULT CHARACTER SET utf8 
DEFAULT COLLATE utf8_general_ci;

--Nomenclaturas : siglas de indentificação--

/*

DDL (Data Define Language)

Linguagem de definição : CREATE , ALTER , DROP , TRUNCATE , RENAME


DML (Data Manipulation Language)

Linguagem de manipulação : INSERT , UPDATE , DELETE , MERGE


DCL (Data Control Language)

linguagem de controle : GRANT , REVOKE


TCL ou DTL (Translation Control Language)

linguagem de controle : COMMIT , ROLLBACK , SAVE POINT


DQL (Data Query Language )

SELECT


Comandos para o terminal prompt de comando
   describle pessoas
ou

    desc pessoas
serve para mostrar as informaçôes do tipo e os nomes da tabela

   show database
mostra todos os bancos de dados

 use cadastro
vai selecionar o banco de dados cadastro que

 status
mostra qual e o banco de dados que esta sendo formatado

 show table
mostra a tabela



*/