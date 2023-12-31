
-- Criar um Banco de dados exemplo : bd --

CREATE DATABASE bd ;

-- Criar tabela e criar colunas com definição de tipo no bd --

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

-- Inserir um registro na tabela pessoas no bd --
 INSERT INTO pessoas 
 (nome,nascimento,sexo,peso,altura,nacionalidade)
 VALUES
 ('Ciclano Fulano ','1993-01-12','M', '75.4','2.83','BRASIL');
-- Quando estiver igual a ordem que está no banco de dados ,não precisa defini-la nos campos , exemplo :--

 INSERT INTO pessoas 
 VALUES
 ('Ciclano Fulano ','1993-01-12','M', '75.4','2.83','BRASIL');

-- Inserir vários registros na tabela pessoas para o banco de dados bd--

 INSERT INTO pessoas 
 (nome,nascimento,sexo,peso,altura,nacionalidade)
 VALUES
 ('Ciclano Fulano ','1993-01-12','M', '75.4','2.83','BRASIL'),
 ('Fulano ','1990-01-12','M', '75.4','2.83','EUA'),
 ('Beltrano','1983-01-12','M', '75.4','2.83','Corea');

-- Inserir uma coluna profissao na tabela pessoas , no banco de dados bd --

 ALTER TABLE pessoas 
 ADD COLUMN profissao varchar (20);
-- Inserir uma coluna profissao depois da coluna nome -- 

ALTER TABLE pessoas 
ADD COLUMN profissao varchar (20) AFTER nome ;
-- Inserir uma coluna profissao primeiro campo da tabela -- 
ALTER TABLE pessoas 
ADD COLUMN profissao varchar (20) FIRST ;
-- Deletar --
--Deletar a coluna profissao na tabela pessoas , no banco de dados bd - -
 ALTER TABLE pessoas 
 DROP COLUMN profissao;
-- Modificar - -
-- Modificando o tipo primitivo e constraint da coluna - -
 ALTER TABLE pessoas
 MODIFY COLUMN profissao varchar (20) NOT NULL  ;
-- Modificar o nome da coluna profissão para prof - -
 ALTER TABLE pessoas 
 -- CHANGE COLUMN profissao prof varchar(40) ; --
-- Renomear - -
-- Renomear o nome da tabela pessoas para pessoadois-- 
 ALTER TABLE pessoas 
 RENAME TO pessoadois ;