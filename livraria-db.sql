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