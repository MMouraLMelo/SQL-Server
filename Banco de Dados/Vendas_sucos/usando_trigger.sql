CREATE TABLE VALORES_FATURAMENTO
(DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT)

CREATE TRIGGER TG_VALORES_FATURAMENTO ON TABELA_ITENS AFTER INSERT, UPDATE, DELETE
AS BEGIN DELETE FROM VALORES_FATURAMENTO; INSERT INTO VALORES_FATURAMENTO
(DATA_VENDA, TOTAL_VENDA) SELECT A.DATA AS DATA_VENDA,SUM(B.QUANTIDADE * B.PRECO) AS
TOTAL_VENDA FROM TABELA_NOTAS A INNER JOIN TABELA_ITENS B ON A.NUMERO = B.NUMERO
GROUP BY A.DATA;
END;

INSERT INTO TABELA_NOTAS (NUMERO, DATA, CPF, MATRICULA, IMPOSTO) VALUES
('0101', '2018-05-15', '1471156710', '235', 0.18)

INSERT INTO TABELA_ITENS (NUMERO, CODIGO_PRODUTO, QUANTIDADE, PRECO) VALUES
('0101', '1000889', 100, 1), ('0101', '1002334', 100, 1)

SELECT * FROM VALORES_FATURAMENTO