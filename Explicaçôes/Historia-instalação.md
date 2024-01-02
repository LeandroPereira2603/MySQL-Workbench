/*MySql - História
Surgiu em 1970 graças a empresa cobasil que foi responsável de criar a lingagem de programação cobol que era com próposito destinado para defesena nacional dos estados unidos , foi uma que impulsionou a criação do banco de dados por conta da lógica de programação .

Intalando os softwares
MySql Workbench 8.0 (SGBD)
Site oficial : https://dev.mysql.com/downloads/workbench/

XAMPP (Servidor)
Site oficial : https://www.apachefriends.org/pt_br/download.html
Possiveis erros que pode ocasionar com XAMPP
❌ Erro na porta de conexão :
1 - A porta de conexão para o servidor, pode está sendo utilizado por outro software , o padrão está como porta = "3306"

✅ Solução:

vá no painel xampp MYSQL conf > my.ini no começo depois dos coméntarios do passaword vai ter o código port=3306 troque para port=3307 , e salve o arquivo

❌ Erro na porta no PhpAdmin :
2 - Erro PhpAdmin , a porta não está de acordo com o mesma porta na config no apache para acessar phpadmin , vai na config do apache > phpadmin conf e altere no segundo parágrafo com o número parecido com este com vários pontos “1.00.006.00” e troque para “localhost:3307” salve o arquivo , e abra o phpadmin .

✅ Solução :

Os comandos , para criar e alterar os dados , pode ser também feito no terminal ( prompt de comando “cmd” ) e no software fica a critério do programador , só para o descargo de consciência eu prefiro sempre aprender as duas maneiras para que utilizar
Sintaxe da Linguagem
pode deixar os comandos em uppoercase maiusculo

 create database cadastro;
e também pode deixar em maiusculo
*/
 CREATE DATABASE cadastro;
-- pode definir os nomes com crase ou sem crase , o recomendado é sem crase --

-- exemplo com crase --

 CREATE TABLE exemplo (
 `nome` VARCHAR (20),
 `peso` float
 );
-- exemplo sem crase -- 

 CREATE TABLE exemplo (
  nome VARCHAR (20),
  peso float
 );
--observa-se que o último definição para nome e tipo não tem virgula , para apontar que e a ultima instrução , isto e obrigatório se não vai dar erro de sintaxe

/*Boas práticas de programação MySql
Sobre a nomenclatura
Structured English Query Language
SEQUEL SQL
*/

/*Parâmetro = em MySql é constraint . result set (painel de depuração ) = que mostra os resultados dos dados da tabela das instruçôes .

Linhas = tudo que estiver em linas são registros .
Colunas = Tudo que estiver em colunas são considerado campos ou atributos .
*/

