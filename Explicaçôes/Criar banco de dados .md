```sql 

CREATE DATABASE leandro ; 

``` 

```sql 

CREATE TABLE especies ( 
id int AUTO'INCREMENT NOT NULL ,
nome VARCHAR (20),
peso DECIMAL (2,2),
altura float , 
habitat VARCHAR (30),
PRIMARY KEY (id) 
) not charset=utf8;

``` 
```sql 

USE leandro ; 

``` 

```sql 

INSERT INTO especie 
(id , nome , peso , altura , habitat ) 
VALUES
(id, "butterfly","00.80", "0.7","insect" );

``` 

```sql

DROP DATABASE leandro ;

``` 

