# **Consultando o BD e-Market**

Vamos praticar consultas **SELECT**, focando em diferentes tipos de **JOINS**.
Observação:

- Cada instrução corresponde a uma consulta SELECT.
- Lembre-se de salvar as consultas. SQL.

O DER a seguir o ajudará a entender e usar as relações entre as diferentes tabelas:

![Untitled](Untitled%20aaa08115429b4b218055db0758edcbfa/Untitled.png)

### **Relatórios II parte I - Revisando INNER JOIN**

Faça uma consulta sobre o faturamento do e-market. Inclua as seguintes informações:

- ID da fatura
- data da fatura
- nome da empresa de correio (O id da empresa consta da tabela faturas no campo FormaEnvio)
- nome do cliente
- categoria do produto vendido
- nome do produto (Você chega ao produto consultando os detalhes da fatura)
- preço unitário
- quantidade

### **Relatórios II parte II - INNER, LEFT e RIGHT JOIN**

1. Liste todas as categorias junto com informações sobre seus produtos. Incluir todas as categorias, mesmo que não tenham produtos.
2. Liste as informações de contato de clientes que nunca compraram no emarket.
3. Façaumalistadeprodutos.Paracadaum,indiqueseunome, categoria e as informações de contato de seu fornecedor. Lembre-se que podem existir produtos para os quais o fornecedor não foi indicado.
4. Para cada categoria, liste o preço unitário médio de seus produtos.
5. Paracadacliente,indiqueaúltimanotafiscaldecompra. Inclua clientes que nunca compraram no e-market.
6. Todasasfaturastêmumaempresadecorreioassociada(envio).Gere uma lista com todas as empresas de correio e o número de faturas correspondentes. Execute a consulta usando RIGHT JOIN.