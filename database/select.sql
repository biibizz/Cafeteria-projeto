USE codcoffee;

SELECT * FROM Produto;
describe cliente;
SELECT * FROM cliente WHERE nome = "João";

SELECT COUNT(*) AS total_clientes
FROM cliente;

SELECT *
FROM cliente
WHERE nome LIKE 'C%';

SELECT nome, email
FROM cliente
WHERE email LIKE '%gmail.com';


-- Consulta itens comprados por cliente:
SELECT
    c.nome AS cliente,
    pr.nome AS produto,
    ip.quantidade,
    ip.preco_unitario
FROM Cliente c
INNER JOIN Pedido pe
    ON c.id_cliente = pe.id_cliente
INNER JOIN Item_Pedido ip
    ON pe.id_pedido = ip.id_pedido
INNER JOIN Produto pr
    ON ip.id_produto = pr.id_produto
ORDER BY c.nome;

-- Valor total gasto por pedido
SELECT
    pe.id_pedido,
    c.nome,
    SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM Pedido pe
INNER JOIN Cliente c
    ON pe.id_cliente = c.id_cliente
INNER JOIN Item_Pedido ip
    ON pe.id_pedido = ip.id_pedido
GROUP BY pe.id_pedido, c.nome;

-- Produtos mais vendidos
SELECT
    pr.nome,
    SUM(ip.quantidade) AS quantidade_vendida
FROM Produto pr
INNER JOIN Item_Pedido ip
    ON pr.id_produto = ip.id_produto
GROUP BY pr.nome
ORDER BY quantidade_vendida DESC;

-- Clientes com reserva confirmada
SELECT
    c.nome,
    r.data_reserva,
    r.horario
FROM Cliente c
INNER JOIN Reserva r
    ON c.id_cliente = r.id_cliente
WHERE r.status = 'confirmada';