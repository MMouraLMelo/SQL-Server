CREATE TABLE TAB_IDENTITY
(ID INT IDENTITY (1,1) NOT NULL,
DESCRITOR VARCHAR (50) NULL)

INSERT INTO TAB_IDENTITY (DESCRITOR)
VALUES ('Cliente A'), ('Ciente B'), ('Cliente C'), ('Cliente D'), ('Ciente E')

SELECT * FROM TAB_IDENTITY

DROP TABLE TAB_IDENTITY
