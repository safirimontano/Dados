# Group by 

~~~SQL SELECT nome, data_pedido, sum(valor)
FROM clientes
JOIN pedidos on clientes.id_cliente = pedidos.id_cliente
WHERE data_pedido >= '2022-01-01'
group by clientes.nome,pedidos.data_pedido;
~~~


Este código SQL seleciona os nomes de clientes, a data dos pedidos e a soma do valor de cada pedido dos clientes. Ele faz isso juntando as tabelas "clientes" e "pedidos" através do ID do cliente presente em ambas as tabelas. Em seguida, ele filtra os resultados para incluir apenas as linhas cuja data do pedido é igual ou posterior a '2022-01-01'. Finalmente, o resultado é agrupado pelo nome do cliente e data do pedido, e a soma dos valores de cada grupo é calculada.
