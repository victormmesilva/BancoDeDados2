#Criar o BD BDII182_BIBLIOTECA
create database BDII182_BIBLIOTECA;

use bdii182_biblioteca;
create table USUARIOS(
ID INT unsigned NOT null auto_increment,
NOME varchar (15) not null,
SOBRENOME varchar (15) not null,
ENDERECO varchar (45) not null,
CIDADE varchar (45) not null,
SIGLA_ESTADO varchar (2) not null,
TELEFONE varchar (11) not null,
FK_TIPO_USUARIO varchar (15) not null,
primary key(ID)


);

create table LIVROS(
ID INT unsigned NOT null auto_increment,
USUARIO_ID INT unsigned default NULL,
TITULO varchar (45) not null,
ANO_PUBLICACAO INT unsigned NOT null,
NUMERO_EDICAO INT unsigned NOT null,
PAGINAS INT unsigned NOT null,
CATEGORIA varchar (12) not null,
PRECO double not null default '0',
primary key(ID),


constraint FK_LIVROS_USUARIOS_ESTADOS
foreign key(USUARIO_ID)
references USUARIOS(ID));


create table ESTADOS(
SIGLA_ESTADO varchar (2) not NULL,
NOME_ESTADO varchar (25) not null,
PRIMARY KEY(SIGLA_ESTADO));

#1
INSERT USUARIOS(ID, NOME, SOBRENOME, ENDERECO, CIDADE, SIGLA_ESTADO, TELEFONE, TIPO_USUARIO)
VALUES (1, 'NOME1', 'SOBRENOME1', 'ENDERECO1', 'CIDADE1', 'RS', '1111-1111', 'PROFESSOR');
#2
INSERT USUARIOS(ID, NOME, SOBRENOME, ENDERECO, CIDADE, SIGLA_ESTADO, TELEFONE, TIPO_USUARIO)
VALUES (2, 'NOME2', 'SOBRENOME2', 'ENDERECO2', 'CIDADE2', 'SC', '2222-2222', 'ALUNO');
#3
INSERT USUARIOS(ID, NOME, SOBRENOME, ENDERECO, CIDADE, SIGLA_ESTADO, TELEFONE, TIPO_USUARIO)
VALUES (3, 'NOME3', 'SOBRENOME3', 'ENDERECO3', 'CIDADE3', 'SP', '3333-3333', 'FUNCIONARIO');
#4
INSERT USUARIOS(ID, NOME, SOBRENOME, ENDERECO, CIDADE, SIGLA_ESTADO, TELEFONE, TIPO_USUARIO)
VALUES (4, 'NOME4', 'SOBRENOME4', 'ENDERECO4', 'CIDADE4', 'SC', '4444-4444', 'PROFESSOR');
#5
INSERT USUARIOS(ID, NOME, SOBRENOME, ENDERECO, CIDADE, SIGLA_ESTADO, TELEFONE, TIPO_USUARIO)
VALUES (5, 'NOME5', 'SOBRENOME5', 'ENDERECO5', 'CIDADE5', 'RJ', '5555-5555', 'ALUNO');

#1
INSERT LIVROS(ID, USUARIO_ID, TITULO, ANO_PUBLICACAO, NUMERO_EDICAO, PAGINAS, CATEGORIA, PRECO)
VALUES (1, 5, 'TITULO1', 2001, 1, 111, 'ROMANCE', 100);
#2
INSERT LIVROS(ID, USUARIO_ID, TITULO, ANO_PUBLICACAO, NUMERO_EDICAO, PAGINAS, CATEGORIA, PRECO)
VALUES (2, 4, 'TITULO2', 2002, 2, 222, 'DIDATICO', 200);
#3
INSERT LIVROS(ID, USUARIO_ID, TITULO, ANO_PUBLICACAO, NUMERO_EDICAO, PAGINAS, CATEGORIA, PRECO)
VALUES (3, 3, 'TITULO3', 2003, 3, 333, 'FICCAO', 300);
#4
INSERT LIVROS(ID, USUARIO_ID, TITULO, ANO_PUBLICACAO, NUMERO_EDICAO, PAGINAS, CATEGORIA, PRECO)
VALUES (4, 4, 'TITULO4', 2004, 4, 444, 'ROMANCE', 400);
#5
INSERT LIVROS(ID, USUARIO_ID, TITULO, ANO_PUBLICACAO, NUMERO_EDICAO, PAGINAS, CATEGORIA, PRECO)
VALUES (5, 2, 'TITULO5', 2005, 5, 555, 'CIENTIFICO', 500);

#1
INSERT ESTADOS(SIGLA_ESTADO, NOME_ESTADO)
VALUES ('RS', 'RIO GRANDE DO SUL');
#2
INSERT ESTADOS(SIGLA_ESTADO, NOME_ESTADO)
VALUES ('SC', 'SANTA CATARINA');
#3
INSERT ESTADOS(SIGLA_ESTADO, NOME_ESTADO)
VALUES ('PR', 'PARANA');
#4
INSERT ESTADOS(SIGLA_ESTADO, NOME_ESTADO)
VALUES ('RJ', 'RIO DE JANEIRO');
#5
INSERT ESTADOS(SIGLA_ESTADO, NOME_ESTADO)
VALUES ('SP', 'SAO PAULO');