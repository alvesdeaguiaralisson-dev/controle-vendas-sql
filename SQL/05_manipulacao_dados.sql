--   Atualiza o e‑mail de um cliente
UPDATE Clientes
SET Email = 'ana.novo@email.com'
WHERE ClienteID = 1;
GO

--  Aumenta o preço de um produto em 10%
UPDATE Produtos
SET Preco = ROUND(Preco * 1.10, 2)
WHERE ProdutoID = 2;   -- Mouse Sem Fio
GO

--   Reduz o estoque após uma venda (ex.: venda de 2 unidades do produto 3)
UPDATE Produtos
SET Estoque = Estoque - 2
WHERE ProdutoID = 3;   -- Teclado Mecânico
GO

--   Exclui um pedido de teste (PedidoID = 12)
DELETE FROM Pedidos
WHERE PedidoID = 8;
GO

--  Exclui um cliente que nunca comprou (ClienteID = 8 – Henrique)
DELETE FROM Pedidos
WHERE PedidoID = 8;

DELETE FROM Clientes
WHERE ClienteID = 8;
GO
