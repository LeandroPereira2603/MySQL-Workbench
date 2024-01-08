# MySql - História  

*

# Intalando os softwares 

### MySql Workbench 8.0 (SGBD)
Site oficial : [https://dev.mysql.com/downloads/workbench/](https://dev.mysql.com/downloads/workbench/) 

### XAMPP (Servidor)
Site oficial : [https://www.apachefriends.org/pt_br/download.html](https://www.apachefriends.org/pt_br/download.html)

# XAMPP

##  SBDG : MySql workbench

<p> Possiveis erros que pode acontecer no software SBDG : MySsql - Workbench . </p> 

> [!warning] 
> <strong>❌ Erro na porta de conexão </strong>  <br> <br>
> A porta de conexão para o servidor, 
> pode está sendo utilizado por outro software , 
> o padrão está como porta = "3306" <br> <br>
> ✅ <strong> Solução:</strong> <br> <br>
> vá no painel xampp MYSQL conf > my.ini no começo > depois dos coméntarios do passaword vai ter 
> código port=3306 troque para port=3307 , e salve > o arquivo </p>

## PhpAdmin

<p> Possiveis erros que podem acontecer com phpadmin. </p>

> [!warning] 
> <strong> ❌ Erro na porta no PhpAdmin  </strong> <br> <br>
> Erro PhpAdmin , a porta não está de acordo 
> com o mesma porta na config no apache para 
> acessar phpadmin , vai na config do apache >
> phpadmin conf e altere no segundo parágrafo com o
> número parecido com este com vários pontos 
> “1.00.006.00” e troque para “localhost:3307” 
> salve o arquivo , e abra o phpadmin . <br> <br>
> ✅ <strong> Solução : </strong> <br> <br>
> Os comandos , para criar e alterar os dados , 
> pode ser também feito no terminal ( prompt de 
> comando “cmd” )  e no software fica a critério do > programador , só para o descargo de consciência 
> eu prefiro sempre aprender as duas maneiras para > que utilizar  </p>

    
  

# Sintaxe da Linguagem 

<p> pode deixar os comandos em uppercase "maiusculo"  </p>

```sql
CREATE DATABASE cadastro;
```

<p> e também pode deixar em  minusculo  </p>

```sql
create database cadastro;
```
<p> LLP : Particulamente prefiro usar a sintaxe uppercase , fica mais claro e robusto visualmente , mas fica o critério do programador ou da empresa . </p>


<p> pode definir os nomes com crase ou sem crase , o recomendado é sem crase . </p>

```SQL 
 CREATE TABLE exemplo (
 `nome` VARCHAR (20),
 `peso` float
 );
```

<p> exemplo sem crase </p>

```SQL 
 CREATE TABLE exemplo (
  nome VARCHAR (20),
  peso float
 );
```

<p> observa-se que o último definição para nome e tipo não tem virgula , para apontar que e a ultima instrução , isto e obrigatório se não vai dar erro de sintaxe </p>



# Boas práticas de programação MySql

### Sobre a nomenclatura 
**S**tructured **E**nglish **Qu**ery **L**anguage  <BR>
**SEQUEL**
**SQL**

Parâmetro = em MySql é constraint .
result set (painel de depuração )  = que mostra os  resultados dos dados da tabela das instruçôes  .
* Linhas = tudo que estiver em linas são registros  .
* Colunas = Tudo que estiver em colunas são considerado campos ou atributos .
* Dump = significa back up do banco de dados  .


> [!note]
> <strong>Referência : </strong> <br>
> * Curso em video 
> * Uninove 