/* --- RELATÓRIOS E CONSULTAS (SELECT) --- */

-- Consulta 1: Listagem Geral de Produtos e suas Categorias (JOIN)
SELECT p.nome AS Produto, p.preco_atual, c.nome_categoria 
FROM PRODUTO p
JOIN CATEGORIA c ON p.id_categoria = c.id_categoria
ORDER BY p.nome;

-- Consulta 2: Filtrar Clientes de SP (WHERE)
SELECT nome, email, cidade 
FROM CLIENTE 
WHERE estado = 'SP';

-- Consulta 3: Histórico de Compras Detalhado (JOIN triplo)
-- Mostra quem comprou o quê, quando e quanto pagou.
SELECT 
    c.nome AS Cliente, 
    p.data_emissao, 
    prod.nome AS Produto, 
    i.quantidade, 
    i.preco_venda
FROM CLIENTE c
JOIN PEDIDO p ON c.id_cliente = p.id_cliente
JOIN ITEM_PEDIDO i ON p.id_pedido = i.id_pedido
JOIN PRODUTO prod ON i.id_produto = prod.id_produto;

-- Consulta 4: Top 3 Produtos mais caros do estoque (ORDER BY + LIMIT)
SELECT nome, preco_atual 
FROM PRODUTO 
ORDER BY preco_atual DESC
LIMIT 3;