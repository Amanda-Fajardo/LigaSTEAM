---- CRIAÇÃO DO BANCO DE DADOS ----
CREATE DATABASE CONTROLE_LOJA;
USE CONTROLE_LOJA;

CREATE TABLE CLIENTES (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_cadastro DATE NOT NULL
);


INSERT INTO CLIENTES (nome, data_cadastro) VALUES 
('Lucas Almeida', '2026-06-30'),
('Mariana Costa', '2026-06-30'), 
('Rodrigo Santos', '2026-06-29'),
('Beatriz Souza', '2026-06-28');

---- CRIAÇÃO DA FUNÇÃO ----

DELIMITER //

CREATE FUNCTION fn_total_clientes_por_dia(data_pesquisa DATE)
RETURNS INT 

DETERMINISTIC 

BEGIN
    DECLARE total_clientes INT;    
    SELECT COUNT(*) INTO total_clientes
    FROM CLIENTES
    WHERE data_cadastro = data_pesquisa;
    
    RETURN total_clientes;
END //

DELIMITER ;