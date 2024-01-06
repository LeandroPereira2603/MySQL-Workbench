## NOT NULL

<p>exemplo:</p>

```sql
 CREATE TABLE pessoas (
 nome VARCHAR (30) NOT NULL ,
 nascimento DATE,
 sexo ENUM('M' ,'F'),
 peso DECIMAL(5,2),
 altura DECIMAL(3,2)  ,
 nacionalidade VARCHAR(20) DEFAULT 'BRASIL'
) DEFAULT CHARSET = utf8 ;
```

* NOT NULL = obrigatório o usuário preencher este espaço .
* ENUM = selecionar apenas estas duas opções .
* DECIMAL  = DECIMAL(3,2) = 102,00 .
* DEFAULT = se o úsuario não preencher este espaço , ira colocar o padrção Brasil .
* DEFAULT CHARSET - UTF8 = vai padronizar com caracteres com acento em português.
* os parâmetros em MySql são CONSTRAINT .

## PRIMARY KEY & AUTO INCREMENT  

```sql
 CREATE TABLE pessoas (
 id INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR (30) NOT NULL ,
 nascimento DATE,
 sexo ENUM('M' ,'F'),
 peso DECIMAL(5,2),
 altura DECIMAL(3,2)  ,
 nacionalidade VARCHAR(20) DEFAULT 'BRASIL',
 PRIMARY KEY (id)
) DEFAULT CHARSET = utf8 ;
```

* AUTO_INCREMENT = toda vez que é adicionado um novo cadastro irá colocar um número em ordem crescente , automatico  .
* PRIMARY KEY = serve para não ter duplicidade .

## UNIQUE  /  USIGNED 

```sql 
 CREATE TABLE IF NOT EXISTS cursos (
 nome VARCHAR(30) NOT NULL UNIQUE,
 descricao text ,
 carga int UNSIGNED ,
 totaulas int ,
 ano year DEFAULT '2016'
 ) DEFAULT CHARSET = utf8;
```
* IF NOT EXISTS = serve para verificar se ja tem no banco de dados , exemplo o nome cursos , para não sub escrever por cima da tabela existente .
* UNIQUE = serve para não deixar colocar o mesmo nome .
* UNSIGNED = sem sinal .
