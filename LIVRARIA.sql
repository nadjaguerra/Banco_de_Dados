/*
O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa. A solicitação é somente para livros e não há a 
necessidade de realizar busca em outras tabelas. Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses registros, mas as buscas
estão ficando complexas. Decidiu-se então criar um banco de dados separado para esse funcionário.
Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. As queries são as seguintes:
1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro
*/


CREATE DATABASE LIVRARIA;
USE LIVRARIA;

CREATE TABLE LIVROSS (
LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO VARCHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(100),
    VALOR FLOAT (10,2),
    UF VARCHAR (2),
    ANO INT (4)
);

INSERT INTO LIVROSS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES
    ('CAPITÃES DE AREIA', 'JORGE AMADO', 'M', 280, 'Companhia da Letras', 34.9, 'SP', 2009),
    ('A ABOLIÇÃO DO HOMEM', 'C.S. LEWIS', 'M', 126, 'THOMAS NELSON', 27.8, 'SP', 2017),
    ('A VIDA MENTIROSA DOS ADULTOS', 'ELENA FERRANTE', 'F', 432, 'INTRINSECA', 34.99, 'RJ', 2020);

        
SELECT * FROM LIVROSS;

SELECT LIVRO, EDITORA FROM LIVROSS;

SELECT LIVRO, UF FROM LIVROSS
WHERE SEXO = 'M';

SELECT LIVRO, PAGINAS FROM LIVROSS
WHERE SEXO = 'F';

SELECT VALOR FROM LIVROSS
WHERE UF LIKE '%SP';

SELECT * FROM LIVROSS
WHERE SEXO = 'M' AND (UF ='SP' OR UF = 'RJ');