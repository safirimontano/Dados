use subquerys;

CREATE TABLE `customers`(
`id_cliente` INT NOT NULL AUTO_INCREMENT,
`nome` varchar (20),
`sobrenome` varchar (25),
`data de registro` date,
primary key (`id_cliente`)
);

RENAME TABLE customers TO clientes;

ALTER TABLE clientes CHANGE `data de registro` data date;

CREATE TABLE `Pedidos`(
`id_pedido` INT NOT NULL AUTO_INCREMENT,
`data` date NOT NULL,
`valor` decimal (10,2) NOT NULL,
`id_cliente` INT NOT NULL,
primary key (`id_pedido`),
CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `clientes` (`id_cliente`)
);
ALTER TABLE pedidos CHANGE data data_pedido date;

INSERT INTO clientes (nome, sobrenome, data)
VALUES ('Luzia', 'Braga', '2022-02-22'),
       ('Barbara', 'Gonçalves', '2022-02-12'),
       ('Amelia', 'Fernandes', '2022-02-10'),
       ('Dionisio', 'Ribeiro', '2022-02-05');

INSERT INTO pedidos (data_pedido, valor,id_cliente)
VALUES ('2022-02-23',45,1),
       ('2022-02-13',34,2),
       ('2022-02-11',45,1),
       ('2022-02-06',34,3),
		('2022-02-07',45,4),
        ('2022-02-09',45,4),
         ('2022-02-08',23,4),
         ('2021-02-23',45,1),    
         ('2022-02-23',32,1);
         
SELECT nome, data_pedido, sum(valor)
FROM clientes
JOIN pedidos on clientes.id_cliente = pedidos.id_cliente
WHERE data_pedido >= '2022-01-01'
group by clientes.nome,pedidos.data_pedido;

SELECT clientes.nome, SUM(pedidos.valor) as valor_total
FROM clientes
JOIN pedidos on clientes.id_cliente = pedidos.id_cliente
GROUP BY clientes.nome;

