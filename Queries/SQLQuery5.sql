SELECT Nome as Nome_Cliente, Estado as UF, Primeira_Compra FROM Tabela_Clientes
WHERE Primeira_Compra = 1;

SELECT * FROM Tabela_Produtos
WHERE Preco = 7.00;

SELECT * FROM Tabela_Produtos
WHERE Preco > 7.00;

SELECT * FROM Tabela_Produtos
WHERE Preco <= 7.00;

SELECT * FROM Tabela_Produtos
WHERE Preco <= 7.00 AND Embalagem > 'GARRAFA';

SELECT NOME, Data_Nascimento FROM Tabela_Clientes
WHERE Data_Nascimento > '1995-12-31'
ORDER BY Data_Nascimento;

SELECT NOME, Bairro from Tabela_Clientes
WHERE Bairro = 'Copacabana' OR Bairro = 'Tijuca';

SELECT NOME,  Estado as UF, Primeira_Compra from Tabela_Clientes
WHERE Primeira_Compra = 1 and Estado = 'SP';

/*Desafio
1 - Liste os vendedores que possuem comissão menor ou igual a 8%.

2 - Liste os produtos que custam menos de 6 reais e estão disponíveis em lata.

3 - Mostre todos os clientes que não são de São Paulo nem do Rio de Janeiro.
*/

SELECT Nome_Vendedor, Percentual_Comissao FROM Tabela_Vendedores
WHERE Percentual_Comissao <= 0.08;

SELECT * FROM Tabela_Produtos
WHERE Preco < 6 and Embalagem = 'Lata';

SELECT * FROM Tabela_Clientes
where NOT(Estado = 'RJ' OR Estado = 'SP');

UPDATE Tabela_Produtos SET Preco = (PRECO * 0.90)
WHERE Embalagem = 'Lata';

SELECT * FROM Tabela_Produtos
WHERE Codigo_Produto = '1088126';

UPDATE Tabela_Produtos SET Embalagem = 'Garrafa', Preco = 8.10
WHERE Codigo_Produto = '1088126';

DELETE FROM Tabela_Produtos
WHERE Codigo_Produto = '1004327';

SELECT * FROM Tabela_Produtos
WHERE Codigo_Produto = '1004327'