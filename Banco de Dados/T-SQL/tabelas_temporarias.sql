CREATE TABLE #TABELA01 (ID VARCHAR (10), NOME VARCHAR (200) NULL)
INSERT INTO #TABELA01 (ID, NOME) VALUES ('2', 'Pedro')

SELECT * FROM #TABELA01
------------------------------------------------------------------------------------------
CREATE TABLE ##TABELA02 (ID VARCHAR (10), NOME VARCHAR (200) NULL)
INSERT INTO ##TABELA02 (ID, NOME) VALUES ('1', 'João'), ('2', 'Pedro')

SELECT * FROM ##TABELA02
------------------------------------------------------------------------------------------
DECLARE @TABELA_NUMEROS TABLE (NUMERO INT, STATUS VARCHAR (200))
