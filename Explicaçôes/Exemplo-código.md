<p> Mostrando exemplos de todos os comandos SQL , no banco de dados "bd" com a tabela pessoa </p>

# Criar

##$ Criar  um Banco de dados exemplo : bd

```sql
CREATE DATABASE bd ;
```

### Verificar

<p> Verificar se o banco de dados esta selecionado , senão nenhum código irá funcionar  </p>

```sql

USE bd ;

```


### Criar tabela e criar colunas com definição de tipo no bd   

 ```sql

 CREATE TABLE pessoas (
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR (30) NOT NULL ,
 nascimento DATE,
 sexo ENUM('M' ,'F'),
 peso DECIMAL(5,2),
 altura DECIMAL(3,2)  ,
 nacionalidade VARCHAR(20) DEFAULT 'BRASIL',
 ano year,
 PRIMARY KEY (id)
) DEFAULT CHARSET = utf8 ;

 ```
# Inserir 

### Inserir um registro na tabela pessoas no bd 

```sql
 INSERT INTO pessoas 
 (nome,nascimento,sexo,peso,altura,nacionalidade,ano)
 VALUES
 ('Ciclano Fulano ','1993-01-12','M', '75.4','2.83','BRASIL','1993');
```

<p> Quando estiver igual a ordem que está no banco de dados ,não precisa defini-la nos campos , exemplo : </p>

```sql
 INSERT INTO pessoas 
 VALUES
 (id,'Ciclano Fulano ','1993-01-12','M', '75.4','2.83','BRASIL','1993');
```

### Inserir vários registros na tabela pessoas para o banco de dados bd

```sql 
 INSERT INTO pessoas 
 (nome,nascimento,sexo,peso,altura,nacionalidade,ano)
 VALUES
 ('Ciclano Fulano ','1993-01-12','M', '75.4','2.83','BRASIL','1996'),
 ('Fulano ','1990-01-12','M', '75.4','2.83','EUA','1995'),
 ('Beltrano','1983-01-12','M', '75.4','2.83','COREA',1994);
```
### Inserir uma coluna profissao na tabela pessoas , no banco de dados bd

```sql
 ALTER TABLE pessoas 
 ADD COLUMN profissao varchar (20);
```

### Inserir uma coluna profissao depois da coluna nome 

```sql
ALTER TABLE pessoas 
ADD COLUMN profissao varchar (20) AFTER nome ;
```

### Inserir uma coluna profissao primeiro campo da tabela  

```sql
ALTER TABLE pessoas 
ADD COLUMN profissao varchar (20) FIRST ;
```

# Deletar 

## Deletar a coluna profissao na tabela pessoas , no banco de dados bd 

```sql
 ALTER TABLE pessoas 
 DROP COLUMN profissao;
```
# Modificar 

## Modificando o tipo primitivo e constraint da coluna 

```sql
 ALTER TABLE pessoas
 MODIFY COLUMN profissao varchar (20) NOT NULL  ;
```

### Modificar o nome da coluna profissão para prof 

```sql
 ALTER TABLE pessoas 
 CHANGE COLUMN profissao prof varchar(40) ;
```
## Renomear

### Renomear o nome da tabela pessoas para pessoadois

```sql
 ALTER TABLE pessoas 
 RENAME TO pessoadois ;
```
#  Ordenar 

### ORDER BY 

<p> Organizar em ordem crescente a coluna nome da tabela pessoas </p>

```sql 

 SELECT * FROM pessoas
 ORDER BY nome ;
      -- ou --
 SELECT * FROM pessoas
 ORDER BY nome asc ;

```

<p> Organizar em ordem decrescente a coluna nome da tabela pessoas </p>

```sql 

 SELECT * FROM pessoas
 ORDER BY nome desc ;

```
### GROUP BY

<p> Além de agrupar , organizar em ordem crescente  </p>

```sql 
SELECT peso FROM pessoas
GROUP BY peso
ORDER BY peso;

```

<p> Ira organizar e agrupar pela coluna ano , contanoo o total de pessoas no mesmo ano  </p>

```sql 
SELECT ano, COUNT(*) FROM pessoas
GROUP BY ano 
ORDER BY count(*) ;
```
<p> Ira selecionar toda a tabela pessoas contando a coluna ano,  mostrando todos os anos que tem a contagem maior E igual a 5  , organizado por ordem crescente </p>

```sql
SELECT ano, COUNT(*) FROM pessoas
GROUP BY ano 
HAVING count(ano) >= 5
ORDER BY count(*) ;
```

## SELECT 

### Filtrar colunas 

<p> Irá selecionar apenas 3 colunas da tabelea

```sql
SELECT peso , nome , altura FROM pessoas
ORDER BY peso ;
```
### Filtrar linhas 

```sql

 SELECT * FROM pessoas 
 WHERE ano = '2016'
 ORDER BY nome ;

```
<p> Filtrar coluna nome e ano mostrando referente ao ano 2016 </P>

```sql
 SELECT nome , ano FROM pessoas 
 WHERE ano = '2016'
 ORDER BY nome ;
```

<p> Filtrar coluna nome e ano mostrando referente ao ano menor 2015 </P>

```sql
 SELECT nome , ano FROM pessoas 
 WHERE ano <= '2015'
 ORDER BY nome ;
```

### Filtrar caracteres

<p> Filtra todos nomes que começam com a letra p  </p>

   ```MySql
    SELECT * FROM pessoas
    WHERE nome  LIKE 'p%';
   -- tem sempre que colocar o % depois da letra pra dar certo -- 
   ```
<p> Filtra todos nomes que terminam com a letra p  </p>

   ```MySql
    SELECT * FROM pessoas
    WHERE nome  LIKE '%p';
   -- tem sempre que colocar o % antes da letra pra dar certo -- 
   ```

<p> Filtra todos nomes que terminam e começam com a letra p  </p>

   ```MySql
    SELECT * FROM pessoas
    WHERE nome  LIKE '%p%';
   -- tem sempre que colocar o % antes e depois da letra pra dar certo -- 
   ```

<p> Filtra todos nomes que terminam com a letra p e começam com ph  </p>

   ```MySql
    SELECT * FROM pessoas
    WHERE nome  LIKE 'ph%p%';
   -- tem sempre que colocar o % antes e depois da letra pra dar certo --
   -- vai filtrar exemplos de nome photoshop , php  etc .. --
   ```

<p> Filtra todos nomes que tenham na frase leandro no inicio ou final.   </p>

   ```MySql
    SELECT * FROM pessoas
    WHERE nome  LIKE '%leandro%';

   ```

### Filtrar tirando duplicidade com mesmo nome . 


<p> filtrar a nacionalidade da tabela pessoas, mostrando o países cadastrados sem duplicidade </p>

  ```MySql
    SELECT DISTINCT Nacionalidade FROM pessoas ;
   ```

## Calculo 

### Total

<p> Mostra a quantidade total cadastrado em tabela pessoas </P>

```sql

SELECT COUNT(*) FROM pessoas ;

```
<p> Mostra a quantidade total do ano cadastrado ,  que é maior que o ano 1990 .</p>

```sql

 SELECT COUNT(*) FROM pessoas WHERE ano > 1990 ;
   
```
<p>  Conta todos os registro da  coluna nome da tabela cursos mostrando os registro peso , organnizado por ordem cresccente ;</p>

```sql

SELECT peso , COUNT(nome) FROM pessoas 
GROUP BY carga ; 

```


<p> Contar todos sos registros  distintas de peso da tabela pessoas , organizado em ordem crescente </p>

```sql
SELECT DISTINCT peso , COUNT(*) FROM pessoas
ORDER BY totaulas;
```

<p> Além de agrupar peso e organizar , contar todos os registros </p> 

```sql
SELECT peso, count(*) FROM pessoas
GROUP BY peso
ORDER BY peso;
```


### Max (Máximo)

<p> Verificar qual é o ano máximo cadasrado da tabela pessoas  </p>

```sql

SELECT MAX(ano) FROM pessoas ;

```

<p> Verificar qual é o número maximo de peso cadastro , referente as pessoas do ano 1993 .

```sql 

SELECT MAX(peso) FROM pessoas WHERE ano = '1993' ;

```

<p> Verificar qual é o número minimo de peso cadastro , referente as pessoas do ano 1993 .


### Min (Minimo)

```sql 
SELECT MIN(peso) FROM pessoas WHERE ano = '1993' ;

```

<p> Verificar qual é o número minimo e o nome de peso cadastro , referente as pessoas do ano 1993 .

```sql 

SELECT nome , MIN(peso) FROM pessoas WHERE ano = '1993' ;

```
<p> Somar todos os pesos da tabela pessoas


### SUM (Soma)

```sql 
SELECT SUM(peso) FROM pessoas ;

```

### AVG (Media)

<p> Media de todos os pesos da tabela pessoas

```sql 

SELECT AVG(peso) FROM pessoas ;

```
