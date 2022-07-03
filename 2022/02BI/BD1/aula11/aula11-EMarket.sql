USE EMarket;

SHOW TABLES;

-- CATEGORIAS E PRODUTOS

-- 1) Queremos ter uma lista de todas as categorias.
SELECT
	*
FROM categorias;

-- 2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.
SELECT
	CategoriaNome AS "Nome",
	descricao AS "Descrição"
FROM categorias;

-- 3) Obtenha uma lista dos produtos.
SELECT
	*
FROM Produtos;

-- 4) Existem produtos descontinuados? (Descontinuado = 1). Não.
SELECT
	Descontinuado
FROM Produtos
WHERE Descontinuado = 1;

-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.
SELECT
	ProvedorID AS "Nª Fornecedor",
  ProdutoNome AS "Produtos"
FROM Produtos
WHERE ProvedorID = 8;

-- 6) Queremos saber todos os produtos cujo preço unitário se encontra entre 10 e 22.
SELECT
	PrecoUnitario AS "Preco Unitário"
FROM Produtos
WHERE PrecoUnitario BETWEEN 10 AND 22;

-- 7) Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem inferiores ao nível de reabastecimento.
-- Existem produtos a solicitar? Sim.
SELECT
	ProdutoNome,
  UnidadesEstoque,
  NivelReabastecimento
FROM Produtos
WHERE UnidadesEstoque < NivelReabastecimento;

-- 8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.
SELECT
	ProdutoNome,
  UnidadesEstoque,
  UnidadesPedidas,
  NivelReabastecimento
FROM Produtos
WHERE UnidadesPedidas = 0;

-- CLIENTES

-- 1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.
SELECT
	Contato,
  Titulo AS "Cargo",
  Pais AS "País"
FROM Clientes
ORDER BY Pais ASC;

-- 2) Queremos atender todos os clientes que possuem o título de  “Proprietário". Esse título estará em inglês (Owner).
SELECT
	Contato AS "Clientes",
	Titulo AS "Título"
FROM Clientes
WHERE Titulo = "Owner";

-- 3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". 
-- Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?
SELECT
	Contato
FROM Clientes
WHERE Contato LIKE "C%";

-- FATURAS
	
-- 1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.

SELECT
	*
FROM Faturas
ORDER BY DataFatura ASC;

-- 2) Agora é necessário uma lista de faturas com o país de envio "EUA" e que a FormaeEnvio seja diferente de 3.

SELECT
	FaturaId AS "ID Fatura",
	PaisEnvio AS "País Envio",
  FormaEnvio AS "Forma e Envio"
FROM Faturas
WHERE PaisEnvio = "USA" AND FormaEnvio != 3;

-- 3) O cliente 'GOURL' fez um pedido? Sim.

SELECT 
	NomeEnvio AS "Nome Envio",
  ClienteID,
  DataFatura
FROM Faturas
WHERE ClienteID LIKE "%GOURL%";

-- 4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.
SELECT
	EmpregadoID,
  FaturaId
FROM Faturas	
WHERE EmpregadoID IN (2, 3, 5, 8, 9);

-- PRODUTOS

-- 1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.
SELECT
	*
FROM Produtos
WHERE PrecoUnitario
ORDER BY PrecoUnitario DESC;

-- 2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".
SELECT
	ProdutoID,
  ProdutoNome,
	PrecoUnitario
FROM Produtos
WHERE PrecoUnitario
ORDER BY PrecoUnitario DESC
LIMIT 5;

-- 3) Obtenha um top 10 dos produtos com mais unidades em estoque.
SELECT
	ProdutoID AS "ID Produto",
  ProdutoNome AS "Nome do produto",
	UnidadesEstoque AS "Unidades em estoque"
FROM Produtos
ORDER BY UnidadesEstoque DESC
LIMIT 10;

-- DetalheFatura

-- 1) Obtenha uma lista de FaturaId, Produto, Quantidade.
SELECT
	FaturaId AS "ID Fatura",
  ProdutoID AS "ID Produto",
  Quantidade
FROM DetalheFatura;

-- 2) Classifique a lista acima por Quantidade decrescente.
SELECT
	FaturaId AS "ID Fatura",
  ProdutoID AS "ID Produto",
  Quantidade
FROM DetalheFatura
WHERE Quantidade
ORDER BY Quantidade DESC;

-- 3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100.
SELECT
	FaturaId AS "ID Fatura",
  ProdutoID AS "ID Produto",
  Quantidade
FROM DetalheFatura
WHERE Quantidade BETWEEN 50 AND 100;

-- 4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário * Quantidade)
SELECT
	FaturaId AS "Número da fatura",
  ProdutoID AS "Produto",
  (PrecoUnitario * Quantidade) AS "Total"
FROM DetalheFatura;

-- Extras
-- Sobrou tempo? Você quer continuar praticando? Deixamos alguns exercícios extras da mesma base:
    
-- 1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” ou que tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);
SELECT
	Contato,
  Titulo,
  Pais
FROM Clientes
WHERE Pais = "Brazil" OR Pais = "Mexico" OR Titulo LIKE "Sales%";

-- 2) Obtenha uma lista de todos os clientes que pertencem a uma empresa que comece com a letra “A”.
SELECT
	Contato,
	Empresa
FROM Clientes
WHERE Empresa LIKE "A%";

-- 3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome), Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".
SELECT
	Contato AS "Nome e Sobrenome",
  Titulo AS "Cargo",
  Cidade
FROM Clientes
WHERE Cidade = "Madrid";

-- 4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500.
SELECT
	FaturaId
FROM Faturas
WHERE FaturaId BETWEEN 10000 AND 10500
ORDER BY FaturaId ASC;

-- 5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de clientes com IDs começando com "B".
SELECT
	FaturaId,
  ClienteID
FROM Faturas
WHERE FaturaId BETWEEN 10000 AND 10500 OR ClienteID LIKE "B%";

-- 6) Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio =  3?
SELECT
	*
FROM Faturas
WHERE CidadeEnvio = "Vancouver" OR FormaEnvio = 3;

-- 7) Qual é a identificação do funcionário de “Buchanan”? 5.
SELECT
	Sobrenome,
	EmpregadoID AS "Funcionário"
FROM Empregados
WHERE Sobrenome = "Buchanan";

-- 8) Existem Notas Fiscais com o EmpregadoId do funcionário acima? SIm muitas.
SELECT
  *
FROM Faturas
WHERE EmpregadoID = 5;
