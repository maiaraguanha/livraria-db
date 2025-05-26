-- Tabela de produtos
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    estoque INT
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Dados da tabela de produtos
INSERT INTO produtos (nome, preco, estoque) VALUES ('Harry Potter', 99.99, 10);
INSERT INTO produtos (nome, preco, estoque) VALUES ('A Cabana', 50.00, 5);
INSERT INTO produtos (nome, preco, estoque) VALUES ('Código da Vince', 45.00, 8);

-- Dados da tabela de pedidos
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (1, 2, '2025-05-26');
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (2, 1, '2025-05-25');
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (3, 3, '2025-05-24');