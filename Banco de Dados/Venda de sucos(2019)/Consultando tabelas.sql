
SELECT * FROM [TABELA DE CLIENTES]

SELECT [CPF] AS IDENTIFICADOR, [NOME] AS [NOME DO CLIENTE] FROM [TABELA DE CLIENTES]

SELECT * FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '229900'

SELECT [CODIGO DO PRODUTO], [NOME DO PRODUTO] FROM [TABELA DE PRODUTOS] WHERE
[CODIGO DO PRODUTO] = '229900'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Lim?o'

UPDATE [TABELA DE PRODUTOS] SET [PRECO DE LISTA] = 1.1 * [PRECO DE LISTA] WHERE
[SABOR] = 'Lim?o'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] < 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] >= 13.312

SELECT * FROM [TABELA DE CLIENTES] 

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >='1995-09-11'

SELECT *FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995

SELECT *FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 12

SELECT *FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12 AND BAIRRO = 'Tijuca'

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12 OR BAIRRO = 'Tijuca'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros%'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros%' AND 
[SABOR] = 'Laranja'

SELECT DISTINCT EMBALAGEM , TAMANHO FROM [TABELA DE PRODUTOS] 

SELECT DISTINCT BAIRRO FROM [TABELA DE CLIENTES] WHERE CIDADE = 'Rio de Janeiro'

SELECT TOP 10 * FROM [TABELA DE CLIENTES]

SELECT DISTINCT TOP 5 TAMANHO FROM [TABELA DE PRODUTOS]

SELECT * FROM [TABELA DE CLIENTES] ORDER BY [NOME] ASC

SELECT * FROM [TABELA DE CLIENTES] ORDER BY [NOME] DESC

SELECT [NOME], [ESTADO] FROM [TABELA DE CLIENTES] ORDER BY [NOME], [ESTADO] ASC

SELECT [ESTADO], SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO 

SELECT [ESTADO], AVG([LIMITE DE CREDITO]) AS [MEDIA DE CREDITO] FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT EMBALAGEM, MAX([PRECO DE LISTA]) AS [PRECO MAXIMO] FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, MIN([PRECO DE LISTA]) AS [MENOS PRECO] FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, COUNT(*) AS [TOTAL DE EMBALAGEM] FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT BAIRRO, SUM([LIMITE DE CREDITO]) AS [LIMITE DE CREDITO] FROM [TABELA DE CLIENTES]
WHERE [ESTADO] = 'SP' GROUP BY BAIRRO

SELECT BAIRRO, SUM([LIMITE DE CREDITO]) AS [LIMITE DE CREDTIO] FROM [TABELA DE CLIENTES]
WHERE [ESTADO] = 'SP' GROUP BY BAIRRO HAVING SUM([LIMITE DE CREDITO]) >= 140000

SELECT [NOME DO PRODUTO], CASE 
WHEN [PRECO DE LISTA] >= 12 THEN 'PRODUTO CARO'
WHEN [PRECO DE LISTA] >= 7 AND [PRECO DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END FROM [TABELA DE PRODUTOS] ORDER BY [PRECO DE LISTA] ASC
