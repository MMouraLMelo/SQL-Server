CREATE TABLE TABELA_NOTAS
(NUMERO VARCHAR (5) NOT NULL, DATA DATE NULL, CPF VARCHAR (11) NULL, 
MATRICULA VARCHAR (5) NULL, IMPOSTO FLOAT NULL,
CONSTRAINT PK_TABELA_NOTAS PRIMARY KEY (NUMERO))

ALTER TABLE TABELA_NOTAS WITH CHECK ADD CONSTRAINT FK_NOTAS_CLIENTES
FOREIGN KEY (CPF) REFERENCES TABELA_CLIENTES (CPF)