DECLARE @IDADE INT, @NOME VARCHAR (100), @DATA DATE
SET @IDADE = 34
SET @NOME = 'Marcel Moura da luz Melo'
SET @DATA = '31/12/1987'

PRINT @IDADE
PRINT @NOME
PRINT @DATA

DECLARE @CPF VARCHAR (12)
SET @CPF = '1471156710'
SELECT NOME, [DATA DE NASCIMENTO], IDADE FROM [TABELA DE CLIENTES] WHERE CPF = @CPF

DECLARE @NUMNOTAS INT
SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] WHERE DATA = '20170101'
PRINT @NUMNOTAS