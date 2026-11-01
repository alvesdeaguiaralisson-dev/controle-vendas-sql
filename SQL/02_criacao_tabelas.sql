

CREATE TABLE Clientes
(
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,   -- PK, auto‑increment
    Nome      VARCHAR(100) NOT NULL,           -- obrigatório
    Email     VARCHAR(100),                    -- opcional
    Cidade    VARCHAR(50)                      -- opcional
);
GO


CREATE TABLE Produtos
(
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY,   -- PK, auto‑increment
    Nome      VARCHAR(100) NOT NULL,           -- obrigatório
    Categoria VARCHAR(50),                     -- opcional
    Preco     DECIMAL(10,2) NOT NULL
                CHECK (Preco > 0),             -- impede ≤ 0
    Estoque   INT NOT NULL
                CHECK (Estoque >= 0)           -- impede negativo
);
GO


CREATE TABLE Pedidos
(
    PedidoID     INT IDENTITY(1,1) PRIMARY KEY,   -- PK, auto‑increment
    ClienteID    INT NOT NULL,
    ProdutoID    INT NOT NULL,
    Quantidade   INT NOT NULL
                 CHECK (Quantidade > 0),          -- impede ≤ 0
    ValorUnitario DECIMAL(10,2) NOT NULL
    CHECK (ValorUnitario > 0),
    DataPedido   DATE NOT NULL,

    -- FKs
    CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (ClienteID)
        REFERENCES Clientes (ClienteID),
    CONSTRAINT FK_Pedidos_Produtos FOREIGN KEY (ProdutoID)
        REFERENCES Produtos (ProdutoID)
);
GO