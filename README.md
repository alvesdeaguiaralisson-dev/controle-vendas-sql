# Sistema de Controle de Vendas — SQL Server

Projeto acadêmico desenvolvido com o objetivo de aplicar conceitos fundamentais de banco de dados relacionais utilizando Microsoft SQL Server.

##  Sobre o projeto

O projeto consiste no desenvolvimento de um banco de dados para uma loja fictícia, permitindo o gerenciamento de clientes, produtos e pedidos.

A proposta é demonstrar a aplicação prática dos fundamentos de SQL, trabalhando com criação de tabelas, relacionamentos, integridade dos dados e consultas para análise de vendas.

## Estrutura do banco de dados

O banco de dados `ControleVendas` possui três tabelas principais:

| Tabela | Descrição |
|---|---|
| Clientes | Armazena informações dos clientes cadastrados. |
| Produtos | Armazena informações dos produtos, preços e estoque. |
| Pedidos | Registra as compras realizadas pelos clientes. |

### Relacionamentos

- Um cliente pode realizar vários pedidos (1:N).
- Um produto pode estar presente em vários pedidos (1:N).
- Cada pedido está associado a um cliente e a um produto.

As tabelas utilizam chaves primárias (`PRIMARY KEY`) para identificação dos registros e chaves estrangeiras (`FOREIGN KEY`) para estabelecer os relacionamentos.

## Conceitos SQL aplicados

Durante o desenvolvimento, foram utilizados os seguintes comandos e recursos:

**Criação e estruturação:**
- `CREATE DATABASE`
- `USE`
- `CREATE TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `IDENTITY`

**Restrições de integridade:**
- `NOT NULL`
- `CHECK`

**Manipulação de dados:**
- `INSERT INTO`
- `UPDATE`
- `DELETE`

**Consultas:**
- `SELECT`
- `WHERE`
- `ORDER BY`
- `JOIN`
- `GROUP BY`
- `SUM`
- `COUNT`
- `AS`

## 📊 Consultas desenvolvidas

O projeto apresenta consultas para análise de informações comerciais, incluindo:

1. Listagem de clientes cadastrados.
2. Consulta de produtos disponíveis.
3. Identificação de produtos com estoque baixo.
4. Histórico de pedidos por cliente.
5. Cálculo do valor total de cada venda.
6. Identificação dos clientes com maior número de compras.
7. Identificação dos produtos mais vendidos.
8. Cálculo do faturamento total registrado.

## 📁 Organização dos arquivos

```text
controle-vendas-sql/
│
├── README.md
│
├── sql/
│   ├── 01_criacao_banco.sql
│   ├── 02_criacao_tabelas.sql
│   ├── 03_insercao_dados.sql
│   ├── 04_consultas.sql
│   └── 05_manipulacao_dados.sql
│
└── docs/
    └── modelo-relacional.png
```

## ▶️ Como executar o projeto

1. Instale o Microsoft SQL Server.
2. Abra o SQL Server Management Studio (SSMS).
3. Abra e execute os arquivos SQL na ordem indicada.
4. Após a criação do banco e inserção dos dados, execute as consultas para visualizar os resultados.

**Observação:** os dados utilizados são fictícios e destinados exclusivamente a fins acadêmicos.
