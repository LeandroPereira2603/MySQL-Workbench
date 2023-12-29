/*MySql - História
Surgiu em 1970 graças a empresa cobasil que foi responsável de criar a lingagem de programação cobol que era com próposito destinado para defesena nacional dos estados unidos , foi uma que impulsionou a criação do banco de dados por conta da lógica de programação .

Intalando os softwares
MySql Workbench 8.0 (SGBD)
Site oficial : https://dev.mysql.com/downloads/workbench/

XAMPP (Servidor)
Site oficial : https://www.apachefriends.org/pt_br/download.html

Possiveis erros que pode ocasionar com XAMPP
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

