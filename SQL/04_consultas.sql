--  Quais clientes estão cadastrados?
SELECT ClienteID, Nome, Email, Cidade
FROM Clientes
ORDER BY Nome;
GO

--  Quais produtos estão disponíveis?
SELECT ProdutoID, Nome, Categoria, Preco, Estoque
FROM Produtos
ORDER BY Nome;
GO

-- Quais produtos possuem estoque baixo? (definido como ≤ 5)
SELECT ProdutoID, Nome, Estoque
FROM Produtos
WHERE Estoque <= 5
ORDER BY Estoque;
GO

-- Quais pedidos foram realizados por determinado cliente?
-- Exemplo: cliente com ClienteID = 1 (Ana Silva)
SELECT p.PedidoID, p.DataPedido, pr.Nome AS Produto,
       p.Quantidade, p.ValorUnitario,
       (p.Quantidade * p.ValorUnitario) AS ValorTotal
FROM Pedidos p
JOIN Produtos pr ON p.ProdutoID = pr.ProdutoID
WHERE p.ClienteID = 1
ORDER BY p.DataPedido;
GO

-- Qual o valor total de cada venda? (total por pedido)
SELECT PedidoID,
       ClienteID,
       ProdutoID,
       Quantidade,
       ValorUnitario,
       (Quantidade * ValorUnitario) AS ValorTotalVenda
FROM Pedidos
ORDER BY PedidoID;
GO

--  Qual cliente realizou mais compras? (maior número de pedidos)
SELECT TOP 1 c.ClienteID, c.Nome, COUNT(p.PedidoID) AS TotalPedidos
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
GROUP BY c.ClienteID, c.Nome
ORDER BY TotalPedidos DESC;
GO

--  Quais produtos foram mais vendidos? (maior quantidade total)
SELECT TOP 3 pr.ProdutoID, pr.Nome, SUM(p.Quantidade) AS QtdVendida
FROM Produtos pr
JOIN Pedidos p ON pr.ProdutoID = p.ProdutoID
GROUP BY pr.ProdutoID, pr.Nome
ORDER BY QtdVendida DESC;
GO

--   Qual foi o faturamento total registrado?
SELECT SUM(Quantidade * ValorUnitario) AS FaturamentoTotal
FROM Pedidos;
GO
