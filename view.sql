--Quantas tabelas o banco de dados Pizzaria possui?
--R:5
USE pizzaria;
SHOW Tables;

--Quantos clientes foram cadastrados?
--R:105
USE pizzaria;
SELECT COUNT(*) FROM clientes;

--Quantas pizzas foram cadastradas?
--R: 41
USE pizzaria;
SELECT COUNT(*) FROM Pizzas;


--Quantas pizzas o pedido número 3 possui?
--R:21
USE pizzaria;
SELECT SUM(quantidade) AS total_quantidade 
FROM Itens_Pedido 
WHERE pedido_id = quantidade;


--Qual cliente fez o pedido número 3?
--R:Adriano da Silva Ferreira
USE pizzaria;
SELECT c.nome AS nome_cliente FROM Clientes c JOIN Pedidos p ON c.cliente_id = p.cliente_id WHERE p.pedido_id = 3;

--6 Quais os nomes das pizzas do pedido número 3?
-- R:

SELECT p.nome FROM itens_pedido i INNER JOIN pizzas p 
on i.pizza_id = p.pizza_id;
WHERE i.pedido_id = 3;

--relatorio que apareça todos os dados dos pedidos seus itens, nome do cliente e nome das pizzas