---- CRIAÇÃO DO BANCO DE DADOS ----
CREATE DATABASE ECOMMERCE;
USE ECOMMERCE;

CREATE TABLE CLIENTES (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    cidade VARCHAR(50)
);

CREATE TABLE PEDIDOS (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
);

INSERT INTO CLIENTES (nome, email, cidade) VALUES 
('Ana Silva', 'ana.silva@email.com', 'São Paulo'),
('Bruno Costa', 'bruno.c@email.com', 'Rio de Janeiro'),
('Carlos Souza', 'carlos.s@email.com', 'Belo Horizonte'),
('Diana Lima', 'diana.l@email.com', 'Salvador'); 

INSERT INTO PEDIDOS (data_pedido, valor_total, id_cliente) VALUES 
('2026-06-25', 250.50, 1), 
('2026-06-26', 120.00, 2), 
('2026-06-27', 1350.00, 1), 
('2026-06-28', 89.90, 3);  


---- CONSULTAS ----

SELECT CLIENTES.nome, PEDIDOS.data_pedido, PEDIDOS.valor_total FROM CLIENTES
INNER JOIN PEDIDOS ON CLIENTES.id_cliente = PEDIDOS.id_cliente;

SELECT CLIENTES.nome, PEDIDOS.id_pedido, PEDIDOS.valor_total FROM CLIENTES
LEFT JOIN PEDIDOS ON CLIENTES.id_cliente = PEDIDOS.id_cliente;