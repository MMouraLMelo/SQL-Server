CREATE TABLE TABELA_VENDEDORES
(MATRICULA VARCHAR (5) NOT NULL, NOME VARCHAR (100) NULL, BAIRRO VARCHAR (50) NULL,
COMISSAO FLOAT NULL, DATA_ADMISSAO DATE NULL, FERIAS BIT NULL,
CONSTRAINT PK_TABELA_VENDEDORES PRIMARY KEY(MATRICULA))