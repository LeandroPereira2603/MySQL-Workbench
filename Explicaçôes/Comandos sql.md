
## AS

este comando com SELECT serve para nomear o atributo ,deixando mais detalhado , para melhor indentificar a nomenclatura do campo .

```sql

SELECT ID_Cliente AS 'ID do cliente', Nome AS 'Nome de cliente ' , Data_Nascimento AS 'Data de nascimento ' , Email AS 'E-mail de clientes', FROM clientes.
```


## FROM

<p> Este comando vai apontar qual a tabela está se referindo para outro comando </p>

```sql
 SELECT * FROM pedido ;
```


## LIMITE

<p> Este comando vai limitar até uma certo valor definido.  </p>

```sql
SELECT FROM  cliente 
LIMITE  5;
```

## ORDER BY 

<P> Este comando vai organizar o campo "coluna" definida em decrescente ou crescente . </p>

```sql
 SELECT  * FROM  PRODUTOS 
 ORDER BY  Preco_unit  DESC;
```

## SELECT 

 <p>  Este comando vai selecionar o campo
 definido . </p>

1. <p> Selecionando toda a tabela .</p>
         
 ```sql
  SELECT * FROM tabela;
 ```
 

2. <p>Irá Selecionar apenas alguns campos "colunas" da tabela cliente. </p>

 ```sql
  SELECT ID_Cliente, Nome , 
  Data_Nascimento , Email FROM 
  clientes;
 ```

3. <p> A indentação desta forma fica visualmente melhor :  </p>

 ```sql
  SELECT ID_Cliente, 
  Nome , 
  Data_Nascimento ,
  Email
  FROM clientes;
 ```

## WHERE 

<p> Este comando serve para estabecer uma lógica ,definindo uma condição , para ser usado para filtrar ,selecionar , deletar e etc ... </p>

1. Mostra apenas os produtos com preços iguais ou maiores que R$:1,000

 ```sql
  SELECT  * 
  FROM  produtos 
  WHERE  Preco_Unit = 3100;
 ```

2. Mostra apenas os produtos da marca DELL.

 ```sql
  SELECT  * 
  FROM  produtos 
  WHERE Marca_Produto = 'DELL';
 ```

3. Mostra apenas os pedidos feito do dia
 03/01/2019,colocar no formato americano .

 ```sql
  SELECT  * 
  FROM  pedidos 
  WHERE  Data_Vendas = '2019-01-03';
 ```


4. Mostra apenas os clientes do sexo masculino . 

 ```sql
  SELECT  * 
  FROM  clientes 
  WHERE  Estado_Civil = 's' AND sexo = 'M' ;
 ```

5. Mostra apenas OS produtos da marca Dell ou Samsung .

 ```sql
  SELECT  * 
  FROM  produtos 
  WHERE Marca_Produto = 'DELL' OR Marca_Produto = 'Samsung' ;
 ```
## DROP

<p> Este comando serve para deletar , só que deixa em branco em algumas situações especificas , so com comando DELETE. </p>

1. Irá deletar o banco de dados cadastro

 ```MySql
 DROP DATABASE cadastro;
 ```

2. Irá deletar a tabela cadastro.

 ```sql
 DROP TABLE cadastro;
 ```
## ORDER BY 

 ```sql
 ORDER BY nome ;
 ```
<p> Vai ordenar organizar a coluna nome da  tabela  em ordem crescente . 

## Definir o padrão de caractere utf8.

<p> Tem que colocar junto ao criar o banco de dados para funcionar . </p>

 ```MySql
 CREATE DATABASE cadastro 
 DEFAULT CHARACTER SET utf8 
 DEFAULT COLLATE utf8_general_ci;
 ```

## LIKE 

<p> Vai mostrar todos nomes que começam com a letra p . </p>

   ```MySql
    SELECT * FROM cadastro
    WHERE nome = LIKE 'p%';   
   ```

## DISTINCT

<p> Para tirar a replica de numeros e caracteres da lista. </p>

  ```MySql
    SELECT DISTINCT Nacionalidade FROM cadastro ;
   ```
## Count 

<p> Serve para contar os itens  .</p>

  ```MySql
    SELECT COUNT(*) FROM cadastro ;
   ```


## Máximo 

<p> Verificar qual é o ano máximo cadasrado da tabela pessoas . </p>

```sql

SELECT MAX(ano) FROM pessoas ;

```

<p> Verificar qual é o número maximo de peso cadastro , referente as pessoas do ano 1993 .

```sql 

SELECT MAX(peso) FROM pessoas WHERE ano = '1993' ;

```

## Min


<p> Verificar qual é o número minimo de peso cadastro , referente as pessoas do ano 1993 .

```sql 

SELECT MIN(peso) FROM pessoas WHERE ano = '1993' ;

```

<p> Verificar qual é o número minimo e o nome de peso cadastro , referente as pessoas do ano 1993 .

```sql 

SELECT nome , MIN(peso) FROM pessoas WHERE ano = '1993' ;

```
<p> Somar todos os pesos da tabela pessoas .

```sql 

SELECT SUM(peso) FROM pessoas ;

```
## AVG

<p> Media de todos os pesos da tabela pessoas .

```sql 

SELECT AVG(peso) FROM pessoas ;

```
## HAVING

<p> E o mesmo que o comando WHERE , só que especifico para o comando GROUP BY e ORDER BY . </p>

```sql
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano 
HAVING count(ano) >= 5
ORDER BY count(*) ;
```



  ## Nomenclaturas : siglas de indentificação 
 
   **DDL** (Data Define Language)

  <p> Linguagem de definição : CREATE , ALTER , DROP , TRUNCATE , RENAME .</p> <br>

  **DML** (Data Manipulation Language)
 
  <p> Linguagem de manipulação : INSERT , UPDATE , DELETE , MERGE .</P><br>

   **DCL** (Data Control Language)

  <p> Linguagem de controle : GRANT , REVOKE .</p> <br>

   **TCL** ou **DTL** (Translation Control Language)

  <p> Linguagem de controle : COMMIT , ROLLBACK , SAVE POINT .</P> <br>

   **DQL** (Data Query Language )

  <p> SELECT </p> <br>


## Comandos para o terminal prompt de comando 

 ```sql
    describle pessoas
 ```
ou
```sql
    desc pessoas
 ```
   <p> Serve para mostrar as informaçôes do tipo e os nomes da tabela .</p>

 ```sql
    show database
 ```
   <p> Mostra todos os bancos de dados .</p>

 ```sql
  use cadastro
 ```

   <p> Vai selecionar o banco de dados cadastro  que  .</p>

 ```sql
  status
 ```
  <p> Mostra qual e o banco de dados que  esta sendo formatado . </p>
   
 ```sql
  show table
 ```