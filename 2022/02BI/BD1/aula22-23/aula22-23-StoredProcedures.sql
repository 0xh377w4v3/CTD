USE musimundos;

SHOW TABLES;

-- Utilizando a base de dados musimundos_v2, na tabela faturas crie as procedures:

-- 1) Crie uma procedure que selecione o valor da fatura com o valor mais baixo.
DELIMITER $$
CREATE PROCEDURE MenorFatura()
BEGIN
	SELECT
		valor_total AS "Fatura com menor valor"
	FROM faturas
  WHERE valor_total
  ORDER BY valor_total ASC
  LIMIT 1;
END$$
DELIMITER ;

CALL MenorFatura;

-- 2) Crie uma procedure que retorna a quantidade de faturas que tem o país de cobrança como “Canada”.
DELIMITER $$
CREATE PROCEDURE FaturaCanada()
BEGIN
	SELECT
		COUNT(pais_cobranca) AS "Quantidade de faturas do Canadá"
	FROM faturas
  WHERE pais_cobranca = "Canada";
END$$
DELIMITER ;

CALL FaturaCanada;

-- 3) Uma procedure que retorna o valor somado de todas as faturas.
DELIMITER $$
CREATE PROCEDURE SomaFatura()
BEGIN
	SELECT
		SUM(valor_total) AS "Valor total de todas faturas"
	FROM faturas;
END$$
DELIMITER ;

CALL SomaFatura;

-- 4) Uma procedure que retorna o valor médio de todas as faturas.
DELIMITER $$
CREATE PROCEDURE ValorMedio()
BEGIN
	SELECT
		AVG(valor_total) AS "Valor total de todas faturas"
	FROM faturas;
END$$
DELIMITER ;

CALL ValorMedio;

-- Utilizando a base de dados musimundos_v2, na tabela cancoes crie as procedures:

-- 1) Crie uma procedure que retorna o tamanho em bytes e a duração de uma canção pelo seu id.
DELIMITER $$
CREATE PROCEDURE TamanhoBytesDuracao(IN var_id SMALLINT)
BEGIN
	SELECT
		bytes,
		SEC_TO_TIME(ROUND(duracao_milisegundos / 1000)) AS "Duração"
	FROM cancoes
	WHERE cancoes.id LIKE(var_id);
END$$
DELIMITER ;

CALL TamanhoBytesDuracao(10);

-- 2) Crie uma procedure que retorna o preço unitário uma canção pelo seu id.
DELIMITER $$
CREATE PROCEDURE PrecoCancao(IN var_id SMALLINT)
BEGIN
	SELECT
		id,
		preco_unitario AS "Preço"
	FROM cancoes
	WHERE cancoes.id LIKE(var_id);
END$$
DELIMITER ;

CALL PrecoCancao(1);
-- 3) Crie uma procedure que retorna o id da canção, o nome da canção e o tipo de arquivo(table tipos_de_arquivo) desta canção á partir de um id da canção informado.
DELIMITER $$
CREATE PROCEDURE CancaoTipo(IN var_id SMALLINT)
BEGIN
	SELECT
		cancoes.id,
		cancoes.nome AS "Nome da música",
		tipos_de_arquivo.nome AS "Tipo de arquivo"
	FROM cancoes
	JOIN tipos_de_arquivo ON cancoes.id_tipo_de_arquivo = tipos_de_arquivo.id
	WHERE cancoes.id LIKE(var_id);
END$$
DELIMITER ;

CALL CancaoTipo(7);

-- Utilizando a base de dados musimundos_v2, na tabela clientes crie as procedures:

-- 1) Crie uma procedure que retorna o nome e sobrenome concatenados e também o email de todos os clientes.
DELIMITER $$
CREATE PROCEDURE NomeEmail()
BEGIN
	SELECT
		CONCAT(nome, " ", sobrenome) AS "Nome completo",
		email AS "E-mail"
	FROM clientes;
END$$
DELIMITER ;

CALL NomeEmail;

-- 2) Crie uma procedure que retorna o nome completo (nome e sobrenome concatenados) e também o endereço completo (endereço, cidade, estado e país) de um cliente pelo id informado.
DELIMITER $$
CREATE PROCEDURE NomeId(IN var_id TINYINT)
BEGIN
	SELECT
		id,
		CONCAT(nome, " ", sobrenome) AS "Nome completo",
		endereco AS "Endereço",
		cidade AS "Cidade",
		estado AS "Estado",
		pais AS "País"
	FROM clientes
  WHERE id LIKE(var_id);
END$$
DELIMITER ;

CALL NomeId(2);

-- 3) Crie uma procedure que retorna o nome do cliente e o valor total de cada uma das suas faturas pelo id do cliente informado.
DELIMITER $$
CREATE PROCEDURE TotalFaturaCliente(IN var_id TINYINT)
BEGIN
	SELECT
		clientes.id,
		clientes.nome AS "Nome",
		faturas.valor_total AS "Valor Total da fatura"
	FROM clientes
	JOIN faturas ON clientes.id = faturas.id
  WHERE clientes.id LIKE(var_id);
END$$
DELIMITER ;

CALL TotalFaturaCliente(8);
