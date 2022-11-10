DECLARE @DATANOTA DATE, @NUMNOTAS INT
SET @DATANOTA = '20170102'
SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] WHERE DATA = @DATANOTA
IF @NUMNOTAS > 70
	PRINT 'Muita nota'
ELSE
	PRINT 'Pouca nota'
PRINT @NUMNOTAS
--------------------------------------------------------------------------------------
SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE ESTADO = 'SP'

DECLARE @LIMITE_MAXIMO FLOAT, @LIMITE_ATUAL FLOAT, @ESTADO VARCHAR (20)
SET @ESTADO = 'RJ'
SET @LIMITE_MAXIMO = 815000
SELECT @LIMITE_ATUAL = SUM([LIMITE DE CREDITO]) FROM 
[TABELA DE CLIENTES] WHERE ESTADO = @ESTADO

IF @LIMITE_MAXIMO <= (SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] 
WHERE ESTADO = @ESTADO)
BEGIN
	PRINT 'Limite estourado. Não é possível abrir novos créditos.'
END
ELSE
BEGIN
	PRINT 'Limite não estourado. É possível abrir novos créditos.'
END
PRINT @LIMITE_ATUAL
---------------------------------------------------------------------------------------
DECLARE @LIMITE_MIN INT, @LIMITE_MAX INT
SET @LIMITE_MIN = 1
SET @LIMITE_MAX = 20
WHILE @LIMITE_MIN <= @LIMITE_MAX
BEGIN
	PRINT @LIMITE_MIN
	SET @LIMITE_MIN = @LIMITE_MIN + 1
END
---------------------------------------------------------------------------------------

