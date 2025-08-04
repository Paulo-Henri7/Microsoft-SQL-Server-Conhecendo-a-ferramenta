/*Colunas:
CPF;
Nome completo;
Endereço completo;
Data de nascimento;
Idade;
Sexo;
Limite de crédito;
Volume mínimo de compra de produto;
Se já realizou alguma compra na empresa.*/

CREATE TABLE Tabela_Clientes(

CPF CHAR (11),
Nome VARCHAR (200),
Rua VARCHAR (150),
Complemento VARCHAR (150), 
Bairro VARCHAR (150),
Estado CHAR (2),
CEP CHAR (8),
Data_Nascimento DATE,
Idade SMALLINT,
Sexo CHAR (1),
Limite_Credito MONEY,
Volume_Minimo FLOAT,
Primeira_Compra BIT
);


/*Colunas:
código do produto;
nome do produto;
embalagem;
tamanho;
sabor;
preço de lista.
*/

CREATE TABLE Tabela_Produtos(

Codigo_Produto VARCHAR (20) NOT NULL PRIMARY KEY ,
Nome_Produto VARCHAR (100),
Embalagem VARCHAR (100),
Tamanho VARCHAR (50),
Sabor VARCHAR (100),
Preco SMALLMONEY 
);

ALTER TABLE Tabela_Clientes	ALTER COLUMN CPF CHAR (11) NOT NULL;

ALTER TABLE Tabela_Clientes ADD CONSTRAINT PK_Tabela_Clientes
PRIMARY KEY CLUSTERED (CPF);


CREATE TABLE Tabela_Vendedores (
Matricula VARCHAR (5) NOT NULL PRIMARY KEY,
Nome_Vendedor VARCHAR (100),
Percentual_Comissao FLOAT,
);