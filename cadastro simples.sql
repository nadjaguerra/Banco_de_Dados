/* Modelagem Básica
O cliente Tera Comércio de Produtos S.A, solicitou a modelagem de um banco de dados para cadastro dos seus clientes.
A função da 'Unidados' é a análise dos requisitos junto aos usuários para a correta construção do produto. O cliente deseja que inicialmente os scripts sejam construídos 
para o Banco de Dados MySQL, porém, posteriormente pode haver mudança no ambiente e consequentemente adaptação dos scripts para outros produtos de SGBD.
O cliente não quer nenhuma informação relativa à vendas ou estoque, desejando somente as informações primárias de Clientes.
*/

/* PROCESSOS DE MODELAGEM */

/*MODELAGEM CONCEITUAL = RASCUNHO
  MODELAGEM LÓGICA = PROGRAMA DE MODELAGEM
  MODELAGEM FÍSICA = SCRIPTS DE BANCO*/

/* CRIANDO BANCO DE DADOS */

CREATE DATABASE PROJEETOOO;
USE PROJEETOOO;

/* CRIANDO A TABELA DE CLIENTES */
CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    CPF VARCHAR(11),
    EMAIL VARCHAR(30),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100),
    SEXO CHAR(1)
);

INSERT INTO CLIENTE (NOME, CPF, EMAIL, TELEFONE, ENDERECO, SEXO)
VALUES
    ('ANA', '12345678901', 'ANA@GLOBO.COM', '85548962', 'AV. CONDE DA BOA VISTA - BOA VISTA - RECIFE - PE', 'F'),
    ('LILIAN', '23456789012', 'LILIAN@GMAIL.COM', '947785696', NULL, 'F'),
    ('OTTO', '12547896547', 'OTTO@GMAIL.COM', '999478564', 'AV. POLIDORO - VARZEA - RECIFE - PE', 'M'),
    ('CARLA', '34567890123', 'CARLA@TERATI.COM.BR', '7745828', 'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG', 'F'),
    ('LUIZ', '48756932145', 'LUIZZ@GMAIL.COM', '944567789', NULL ,'M');

-- Descreve a estrutura da tabela "CLIENTE"
DESCRIBE CLIENTE;


-- Exibe os registros restantes na tabela "CLIENTE"

SELECT NOME, CPF, EMAIL, TELEFONE, ENDERECO, SEXO, NOW() AS DATA_HORA FROM CLIENTE;

SELECT NOME, CPF FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, CPF FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%PE';

UPDATE CLIENTE
SET ENDERECO = 'RUA TITO ROSAS - PARNAMIRIM - RECIFE - PE'
WHERE NOME = 'LILIAN' AND CPF = '23456789012';

INSERT INTO CLIENTE (NOME, CPF, EMAIL, TELEFONE, ENDERECO, SEXO)
VALUES
    ('TITO', '12836738901', 'TITO@GMAIL.COM', '865478962', 'RUA SIGISMUNDO GONÇALVES - CORDEIRO - RECIFE - PE', 'M');




