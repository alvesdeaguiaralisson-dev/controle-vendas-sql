

-- 8 Clientes
INSERT INTO Clientes (Nome, Email, Cidade) VALUES
('Ana Silva',      'ana.silva@email.com',      'São Paulo'),
('Bruno Costa',    'bruno.costa@email.com',    'Rio de Janeiro'),
('Carla Dias',     'carla.dias@email.com',     'Belo Horizonte'),
('Diego Alves',    'diego.alves@email.com',    'Curitiba'),
('Elaine Rocha',   'elaine.rocha@email.com',   'Porto Alegre'),
('Felipe Martins', 'felipe.martins@email.com', 'Salvador'),
('Gabriela Lima',  'gabriela.lima@email.com',  'Fortaleza'),
('Henrique Souza', 'henrique.souza@email.com', 'Recife');
GO

-- 8 Produtos
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque) VALUES
('Notebook Gamer',      'Informática', 4500.00, 5),
('Mouse Sem Fio',       'Acessórios',   120.00, 30),
('Teclado Mecânico',    'Acessórios',   350.00, 12),
('Monitor 24"',         'Monitores',    900.00, 8),
('Headset USB',         'Áudio',        250.00, 15),
('Webcam Full HD',      'Acessórios',   180.00, 20),
('SSD 1TB',             'Armazenamento', 420.00, 10),
('Cadeira Ergonômica',  'Móveis',       1100.00, 4);
GO

-- 12 Pedidos (variados – clientes compram várias vezes, produtos vendidos várias vezes)
INSERT INTO Pedidos (ClienteID, ProdutoID, Quantidade, ValorUnitario, DataPedido) VALUES
(1, 1, 1, 4500.00, '2026-01-10'),   -- Ana – Notebook
(2, 2, 2, 120.00,  '2026-01-12'),   -- Bruno – 2 Mouse
(3, 3, 1, 350.00,  '2026-01-15'),   -- Carla – Teclado
(4, 4, 1, 900.00,  '2026-01-18'),   -- Diego – Monitor
(5, 5, 1, 250.00,  '2026-01-20'),   -- Elaine – Headset
(6, 6, 3, 180.00,  '2026-01-22'),   -- Felipe – 3 Webcams
(7, 7, 1, 420.00,  '2026-01-25'),   -- Gabriela – SSD
(8, 8, 1, 1100.00, '2026-01-28'),   -- Henrique – Cadeira
(1, 2, 1, 120.00,  '2026-02-02'),   -- Ana – Mouse
(2, 1, 1, 4500.00, '2026-02-05'),   -- Bruno – Notebook
(3, 5, 2, 250.00,  '2026-02-08'),   -- Carla – 2 Headsets
(4, 3, 1, 350.00,  '2026-02-10');   -- Diego – Teclado
GO