---- CRIAÇÃO DO BANCO DE DADOS ----

CREATE DATABASE CONTROLE_ESTOQUE;
USE CONTROLE_ESTOQUE;

---- CRIAÇÃO DAS TABELAS ----

CREATE TABLE PRODUTOS (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE VENDAS (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade_vendida INT NOT NULL,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);

---- CRIAÇÃO DO TRIGGER ----

DELIMITER //

CREATE TRIGGER tg_atualiza_estoque_pos_venda
AFTER INSERT ON VENDAS 
FOR EACH ROW 
BEGIN

    UPDATE PRODUTOS 
    SET quantidade_estoque = quantidade_estoque - NEW.quantidade_vendida
    WHERE id_produto = NEW.id_produto; 
END // 

DELIMITER ;

---- INSERÇÃO DE DADOS E VERIFICAÇÃO

INSERT INTO PRODUTOS (nome, quantidade_estoque) VALUES ('Console PlayStation 5', 50);

SELECT * FROM PRODUTOS;

INSERT INTO VENDAS (id_produto, quantidade_vendida) VALUES (1, 3);

SELECT * FROM PRODUTOS;