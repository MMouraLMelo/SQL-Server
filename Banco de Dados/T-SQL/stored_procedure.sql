CREATE PROCEDURE BuscaPorEntidade @ENTIDADE AS VARCHAR (10) AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
	SELECT CPF AS IDENTIFICADOR, NOME AS DESCRITOR,BAIRRO AS BAIRRO FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
	SELECT MATRICULA AS IDENTIFICADOR, NOME AS DESCRITOR, BAIRRO AS BAIRRO FROM [TABELA DE VENDEDORES]
ELSE IF @ENTIDADE = 'PRODUTOS'
	SELECT [CODIGO DO PRODUTO] AS IDENTIFICADOR, [NOME DO PRODUTO] AS DESCRITOR FROM [TABELA DE PRODUTOS]
END

EXEC BuscaPorEntidade @ENTIDADE = 'CLIENTES'
EXEC BuscaPorEntidade @ENTIDADE = 'VENDEDORES'
EXEC BuscaPorEntidade @ENTIDADE = 'PRODUTOS'
----------------------------------------------------------------------------------------------------------
CREATE PROCEDURE CalculaIdade AS
BEGIN
	UPDATE [TABELA DE CLIENTES] SET IDADE = DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE())
END

EXEC CalculaIdade
------------------------------------------------------------------------------------------------------------
EXEC sp_columns @table_name = 'TABELA DE CLIENTES', @table_owner = 'dbo'

EXEC sp_tables @table_name = 'TAB%', @table_owner = 'dbo', @table_qualifier = 'SUCOS_VENDAS'
----------------------------------------------------------------------------------------------------------------
CREATE TYPE ListaClientes AS TABLE (CPF VARCHAR (12) NOT NULL)

DECLARE @LISTA AS ListaClientes INSERT INTO @LISTA (CPF) VALUES
('8502682733'), ('8719655770'), ('9283760794')
SELECT * FROM @LISTA

SELECT A.CPF, A.NOME, SUM(C.QUANTIDADE * C.[PRE?O]) AS FATURAMENTO FROM
[TABELA DE CLIENTES] A INNER JOIN [NOTAS FISCAIS] B ON A.CPF = B.CPF AND
YEAR(B.DATA) = 2016 INNER JOIN [ITENS NOTAS FISCAIS] C ON B.NUMERO = C.NUMERO
INNER JOIN @LISTA D ON A.CPF = D.CPF GROUP BY A.CPF, A.NOME

CREATE PROCEDURE FaturamentoCliente2016 @LISTA AS ListaClientes READONLY AS
SELECT A.CPF, A.NOME, SUM(C.QUANTIDADE * C.[PRE?O]) AS FATURAMENTO FROM
[TABELA DE CLIENTES] A INNER JOIN [NOTAS FISCAIS] B ON A.CPF = B.CPF AND
YEAR(B.DATA) = 2016 INNER JOIN [ITENS NOTAS FISCAIS] C ON B.NUMERO = C.NUMERO
INNER JOIN @LISTA D ON A.CPF = D.CPF GROUP BY A.CPF, A.NOME

DECLARE @LISTA AS ListaClientes INSERT INTO @LISTA (CPF) VALUES
('8502682733'), ('8719655770'), ('9283760794')

EXEC FaturamentoCliente2016 @LISTA = @LISTA
----------------------------------------------------------------------------------------------------------
