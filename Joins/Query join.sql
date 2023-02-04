-- Criação do banco de dados 
create database LOJA;
USE LOJA;
-- Criação das tabelas de produtos e vendas
CREATE TABLE `loja`.`produtos` (
  `produto_id` INT NOT NULL AUTO_INCREMENT,
  `produto_nome` VARCHAR(45) NOT NULL,
  `produto_preco` DECIMAL NOT NULL,
  PRIMARY KEY (`produto_id`));
  
  CREATE TABLE `loja`.`vendas` (
  `venda_id` INT NOT NULL AUTO_INCREMENT,
  `produto_id` INT NOT NULL,
  `data_venda` DATE NOT NULL,
  `quantidade_vendida` INT NOT NULL,
  PRIMARY KEY (`venda_id`),
  INDEX `produto_id_idx` (`produto_id` ASC) VISIBLE,
  CONSTRAINT `produto_id`
    FOREIGN KEY (`produto_id`)
    REFERENCES `loja`.`produtos` (`produto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- Inserção de dados nas tabelas
INSERT INTO produtos (produto_nome, produto_preco)
VALUES ('Produto A', 10.00),
       ('Produto B', 20.00),
       ('Produto C', 30.00),
       ('Produto D', 40.00);

INSERT INTO vendas (produto_id, data_venda, quantidade_vendida)
VALUES ( 1, '2022-01-01', 5),
       ( 1, '2022-01-02', 3),
       ( 2, '2022-01-03', 2),
       ( 2, '2022-01-04', 4),
       ( 3, '2022-01-01', 5),
       ( 3, '2022-01-02', 3),
       ( 4, '2022-01-01', 5),
       ( 4, '2022-01-02', 3);                
       
 -- Consulta para calcular o total de vendas por produto
SELECT produtos.produto_nome, sum(vendas.quantidade_vendida*produtos.produto_preco) AS Faturamento
FROM vendas
JOIN produtos
ON vendas.produto_id = produtos.produto_id
GROUP BY produtos.produto_nome;













