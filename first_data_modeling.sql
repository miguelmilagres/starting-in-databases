/* MODELAGEM BÁSICA - ENTIDADE = TABELA*/

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTERE(30)
TELEFONE - CARACTERE(30)
ENDERECO - CARACTERE(100)
SEXO - CARACTERE(1)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD ADM DE DADOS */

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA/AD */

MODELAGEM FÍSICA - SCRIPTS DE BANCO

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO O BANCO DE DADOS */

CREATE DATABASE PROJETO;

/* CONECTANDO-SE AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA DE CLIENTES */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	CPF INT(11),
	EMAIL VARCHAR(30),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100),
	SEXO CHAR(1)
);

/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* EXIBINDO A ESTRUTURA DE UMA TABELA */

DESC CLIENTE;

/* SINTAXE BÁSICA DA INSERÇÃO - INSERT INTO TABELA... */

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO CLIENTE VALUES ("MIGUEL",123456789,"MIGUEL@TESTE.COM","99123456","MARCOLINO SIMOES FERREIRA - ITAMARATI - PETROPOLIS - RJ","M");

INSERT INTO CLIENTE VALUES ("BENTO",234567891,"BENTO@TESTE.COM","99123456","MARCOLINO SIMOES FERREIRA - ITAMARATI - PETROPOLIS - RJ","M");

INSERT INTO CLIENTE VALUES ("CLARA",345678912,"CLARA@TESTE.COM","99123456","MARCOLINO SIMOES FERREIRA - ITAMARATI - PETROPOLIS - RJ","F");

/* FORMA 02 - EMITINDO AS COLUNAS */

INSERT INTO CLIENTE (NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES ("JENI","F","MARCOLINO SIMOES FERREIRA - ITAMARATI - PETROPOLIS - RJ","99345678",456789123);

/* FORMA 03 - INSERT COMPACT - SOMENT NO MYSQL */

INSERT INTO CLIENTE VALUES("TERESA",567891234,"TERESA@TESTE.COM","99123456","MARCOLINO SIMOES FERREIRA - ITAMARATI - PETROPOLIS - RJ","F"),
("AFONSO",678912345,"AFONSO@TESTE.COM","99123456","MARCOLINO SIMOES FERREIRA - ITAMARATI - PETROPOLIS - RJ","M");
