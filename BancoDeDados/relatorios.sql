---- BANCO DE DADOS TESTE ----
CREATE DATABASE RELATORIOS_EMPRESA;
USE RELATORIOS_EMPRESA;

CREATE TABLE VENDAS (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade_comprada INT NOT NULL,
    data_venda DATE NOT NULL
);

INSERT INTO VENDAS (id_produto, quantidade_comprada, data_venda) VALUES 
(101, 5, '2026-06-28'),
(102, 3, '2026-06-28'), 
(101, 10, '2026-06-29'),
(103, 2, '2026-06-29'), 
(102, 7, '2026-06-30');  

---- STORED PROCEDURE PARA O RELATÓRIO ----

DELIMITER //

CREATE PROCEDURE sp_levantamento_diario_vendas()
BEGIN
    SELECT 
        data_venda AS 'Data da Venda',
        SUM(quantidade_comprada) AS 'Total de Produtos Comprados'
    FROM 
        VENDAS
    GROUP BY 
        data_venda
    ORDER BY 
        data_venda DESC; 

DELIMITER ;