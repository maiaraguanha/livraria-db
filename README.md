# 📚 Banco de Dados para Sistema de Livraria

Este projeto contém o script SQL para criação de um banco de dados simples destinado a um sistema de livraria. Ele inclui duas tabelas principais: **produtos** (livros) e **pedidos** (compras realizadas).

Repositório: [github.com/maiaraguanha/livraria-db](https://github.com/maiaraguanha/livraria-db)

## 🧱 Estrutura do Banco de Dados

O banco de dados foi desenvolvido utilizando **PostgreSQL** e está estruturado da seguinte forma:

### Tabela: `produtos`
Armazena informações sobre os livros disponíveis.

| Campo   | Tipo         | Descrição                        |
|---------|--------------|----------------------------------|
| id      | SERIAL       | Chave primária (auto incremento)|
| nome    | VARCHAR(100) | Nome do produto                  |
| preco   | DECIMAL(10,2)| Preço do produto                 |
| estoque | INT          | Quantidade em estoque            |

### Tabela: `pedidos`
Registra os pedidos realizados pelos clientes.

| Campo       | Tipo  | Descrição                                     |
|-------------|-------|-----------------------------------------------|
| id          | SERIAL | Chave primária (auto incremento)              |
| id_produto  | INT    | Chave estrangeira referenciando `produtos(id)`|
| quantidade  | INT    | Quantidade pedida                            |
| data_pedido | DATE   | Data do pedido                               |

## 📜 Script SQL

O script [`script_banco.sql`](./script_banco.sql) contém:

- Criação das tabelas `produtos` e `pedidos`;
- Inserção de dados fictícios para testes.

## 💾 Dados de Exemplo

### Produtos:
- **Harry Potter** – R$99.99 – 10 unidades
- **A Cabana** – R$50.00 – 5 unidades
- **Código da Vince** – R$45.00 – 8 unidades

### Pedidos:
- Pedido de 2x **Harry Potter** em 26/05/2025
- Pedido de 1x **A Cabana** em 25/05/2025
- Pedido de 3x **Código da Vince** em 24/05/2025

## 🗃️ Como Usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/maiaraguanha/livraria-db.git
   cd livraria-db
    ```
2. Acesse o PostgreSQL e execute o script:

\i caminho/para/livraria-db.sql

Substitua caminho/para/livraria-db.sql pelo caminho real do arquivo.

## 📌 Requisitos
PostgreSQL instalado (recomendado: versão 13 ou superior)

✅ Status do Projeto
✅ Estrutura de banco de dados criada
✅ Dados iniciais inseridos
✅ Script pronto para testes e integração

## 📄 Licença
Este projeto é livre para fins educacionais.