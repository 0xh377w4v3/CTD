USE EMarket;

SHOW TABLES;

/*
Faça uma consulta sobre o faturamento do e-market. Inclua as seguintes informações:
● ID da fatura
● data da fatura
● nome da empresa de correio (O id da empresa consta da tabela faturas no campo FormaEnvio)
● nome do cliente
● categoria do produto vendido
● nome do produto (Você chega ao produto consultando os detalhes da fatura)
● preço unitário
● quantidade
*/

SELECT
	Faturas.FaturaId,
  Faturas.DataFatura,
  Correios.Empresa,
  Categorias.CategoriaNome,
  Produtos.ProdutoNome,
  DetalheFatura.PrecoUnitario,
  DetalheFatura.Quantidade
FROM Faturas
JOIN Correios ON Faturas.FormaEnvio = Correios.CorreioID
JOIN Clientes ON Faturas.ClienteID = Clientes.ClienteID
JOIN DetalheFatura ON Faturas.FaturaId = DetalheFatura.FaturaId
JOIN Produtos ON DetalheFatura.ProdutoID = Produtos.ProdutoID
JOIN Categorias ON Produtos.CategoriaID = Categorias.CategoriaID
ORDER BY 
	Faturas.FaturaId,
  Categorias.CategoriaID,
  Produtos.ProdutoID;

-- 1. Liste todas as categorias junto com informações sobre seus produtos. Incluir todas as categorias, mesmo que não tenham produtos.
SELECT
	Categorias.CategoriaID,
  Produtos.ProdutoID,
  Produtos.ProdutoNome,
  Produtos.QuantidadePorUnidade,
  Produtos.PrecoUnitario
FROM Categorias
LEFT JOIN Produtos ON Categorias.CategoriaID = Produtos.CategoriaID;

-- 2. Liste as informações de contato de clientes que nunca compraram no emarket.
SELECT
	Clientes.ClienteID,
  Clientes.Contato,
  Clientes.Telefone
FROM Clientes
LEFT JOIN Faturas ON Clientes.ClienteID = Faturas.ClienteID;

-- 3. Faça uma lista de produtos. Para cada um, indique seu nome, categoria e as informações de contato de seu fornecedor. 
-- Lembre-se que podem existir produtos para os quais o fornecedor não foi indicado.
SELECT
	Produtos.ProdutoNome AS "Nome",
  Categorias.CategoriaNome AS "Categoria",
  Provedores.Contato,
  Provedores.Telefone
FROM Produtos
INNER JOIN Categorias ON Produtos.CategoriaID = Categorias.CategoriaID
LEFT JOIN Provedores ON Produtos.CategoriaID = Categorias.CategoriaID;

-- 4. Para cada categoria, liste o preço unitário médio de seus produtos.
SELECT
	Categorias.CategoriaNome AS "Nome",
  AVG(Produtos.PrecoUnitario) AS "Preço médio unitário"
FROM Produtos
LEFT JOIN Categorias ON Produtos.CategoriaID = Categorias.CategoriaID
GROUP BY CategoriaNome;

-- 5. Para cada cliente, indique a última nota fiscal de compra. Inclua clientes que nunca compraram no e-market.
SELECT
	Clientes.ClienteID,
  MAX(DataFatura) AS "Última fatura"
FROM Clientes
LEFT JOIN Faturas ON Clientes.ClienteID = Faturas.ClienteID
GROUP BY Clientes.ClienteID;

-- 6. Todas as faturas têm uma empresa de correio associada (envio).
-- Gere uma lista com todas as empresas de correio e o número de faturas correspondentes. Execute a consulta usando RIGHT JOIN.
SELECT
	Correios.Empresa,
  COUNT(Faturas.FaturaID) AS "Quantidade de faturas por empresa"
FROM Faturas
RIGHT JOIN Correios ON Faturas.FormaEnvio = Correios.CorreioID
GROUP BY Correios.Empresa;
