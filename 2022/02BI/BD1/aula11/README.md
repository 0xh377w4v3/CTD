# **Consultando o Banco de Dados e-Market**

O e-Market é um comércio eletrônico de venda de produtos pela Internet.

Para uma melhor compreensão da base, fornecemos uma referência do conteúdo
de cada tabela:

Na base e-Market, existem 13 tabelas, a saber:

- **Categorias:** onde estão cadastradas as categorias dos produtos.
- **Clientes:** onde estão cadastrados os Clientes
- **ClientesDemo:** esta tabela estará vazia
- **ClientesDemografia:** esta tabela estará vazia
- **Correios:** Nome e telefone das empresas de transporte
- **DetalheFatura:** Detalhe do que foi comprado em cada fatura
- **EmpregadoLocalizacao:** Lista da localização de cada funcionário
- **Fornecedores:** Lista dos fornecedores que fornecem os produtos
- **Funcionários:** Lista de funcionário responsáveis pela venda
- **Faturas:** Lista de faturas de cada venda
- **Localizações:** Localização geográfica
- **Produtos:** Produtos que são vendidos na empresa
- **Regiões:** regiões onde a empresa opera.

### **Consultas Queries ML Parte I**

Vamos praticar consultas, com foco em SELECT, WHERE, Operadores de condição
como AND, OR, Between, Like, IN e outros.

**Adendo:**

- Cada instrução corresponde a uma consulta SELECT.

- Lembre-se de salvar as consultas SQL.

**Instruções**

**Categorias e produtos**

1) Queremos ter uma lista de todas as categorias.
2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome descrição da lista de categorias.
3) Obtenha uma lista dos produtos.
4) Existem produtos descontinuados? (Descontinuado = 1). Não.
5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.
6) Queremos saber todos os produtos cujo preço unitário se encontra entre 10 e 22.
7) Fica definido que um produto deve ser solicitado ao fornecedor se suas
unidades em estoque forem inferiores ao nível de reabastecimento. Existem produtos a solicitar? Sim.
8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.

**Clientes**

1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País.
Classifique a lista por país.
2) Queremos atender todos os clientes que possuem o título de “Proprietário".
Esse título estará em inglês (Owner).
3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?

**Faturas**

1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem
ascendente.
2) Agora é necessário uma lista de faturas com o país de envio "EUA" e
que a FormaeEnvio seja diferente de 3.
3) O cliente 'GOURL' fez um pedido? Sim.
4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.

### **Queries I - Parte II**

Nesta segunda parte, vamos intensificar a prática de consultas SELECT, adicionando ALIAS, LIMIT e OFFSET.

**Produtos**

1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.
2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".
3) Obtenha um top 10 dos produtos com mais unidades em estoque.

**DetalheFatura**

1) Obtenha uma lista de FaturaId, Produto, Quantidade.2) Classifique a lista acima por Quantidade decrescente.
3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100.
4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário * Quantidade)

**Extras**

Sobrou tempo? Você quer continuar praticando?
Deixamos alguns exe rcícios extras da mesma base:
1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” ou que tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);
2) Obtenha uma lista de todos os clientes que pertencem a uma empresa que comece com a letra “A”. 3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome), Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".
4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500
5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de clientes com IDs começando com "B".
6) Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio = 3?
7) Qual é a identificação do funcionário de “Buchanan”? 5.
8) Existem Notas Fiscais com o EmpregadoId do funcionário acima? SIm muitas.