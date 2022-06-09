-- Integrantes:
-- Antonio Mesquita
-- Gilmar Miranda
-- Gilmar Moraes
-- Tiago Santana

use EMarket;
show tables;

-- DICA: set sql_safe_updates = 0;

-- 1.	Fazer uma query para retornar apenas os clientes que têm 3 faturas ou mais

select 
	Clientes.Empresa,
	count(*) as Faturas
from clientes
inner join faturas
on clientes.ClienteID = Faturas.ClienteID
group by Faturas.ClienteID, Clientes.Empresa
having count(*) >= 3;

-- 2.	Atualizar o campo PrecoUnitario (tabela Produtos) em 20% apenas para os produtos que estão relacionados às faturas dos clientes que têm mais de 3 faturas

update Produtos set PrecoUnitario = PrecoUnitario * 1.2 where ProdutoID in (

select 
	ProdutoID
from Faturas
inner join DetalheFatura
on Faturas.FaturaId = DetalheFatura.FaturaID
where Faturas.ClienteID in (
select 
	Clientes.ClienteID
from clientes
inner join faturas
on clientes.ClienteID = Faturas.ClienteID
group by Faturas.ClienteID, Clientes.Empresa
having count(*) >= 3));

-- 3.	Criar uma consulta que retorne apenas os produtos cujo campo quantidadeporunidade contenha a palavra 'boxes'

select 
	QuantidadePorUnidade
from Produtos where QuantidadePorUnidade like '%boxes%';

-- 4.	IGNORE: Faça uma query que retorne o nome do produto, o nome do fornecedor, nome da categoria e mostre .....
-- 5.	Criar uma consulta que mostre o id da fatura, o nome e id do cliente e a arrecadação total por fatura e ordene os resultados de forma decrescente.
-- 		DICA: o total da fatura é a soma do produto de todos os itens.

select 
	FaturaID as fatura,
    ClienteID as idCliente,
	NomeEnvio as nomeCliente
from Faturas order by NomeEnvio desc;

-- 		Ex.: de retorno

-- 		fatura		idCliente		nomeCliente			totalFatura
-- 		00001		XPTO			C&C Imagens			1.500,65
-- 		80505		VINI			Cia do Corpo		1.250,00
-- 		45465		XPTO			C&C Imagens			420,00

-- 6.	IGNORE: Criar uma tabela com os produtos das faturas que tiveram uma arrecadação acima da média do período
-- 7.	Criar uma consulta que retorne todos os funcionários. Porém, os funcionários que tiverem o campo 'gestor' igual a NULL deve exibir um hífen em vez de NULL.
-- 8.	Aumente 5% o preço (PrecoUnitario da tabela produto) dos 3 produtos menos vendidos
-- 9.	Faça uma consulta que retorne o nome e o sobrenome de um empregado, o nome e sobrenome do gestor dele em uma única coluna (nome + sobrenome)
-- 10.	Faça uma consulta, com base na anterior, que mostre a quantidade de empregados que estão debaixo da liderança de cada um dos gestores. Ordene de forma crescente.


