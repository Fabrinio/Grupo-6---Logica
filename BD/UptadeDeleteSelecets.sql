SELECT * FROM p
UPDATE categoria SET tipo = 'Vestuario' WHERE id_categoria = 4;
DELETE FROM categoria WHERE id_categoria=5;

--SELEÇÕES
--2 Join
SELECT c.nome_completo, p.produtos, p.data_pedido
FROM cliente as c
INNER JOIN pedido as p
                on c.id_cliente = p.id_cliente;
SELECT p.nome, p.quant_estoque, c.id_funcionario, c.id_produto
FROM produto as p
INNER JOIN cadastro_produto as c
                on c.id_produto = p.id_produto;
--COUNT AND GROUP BY
SELECT (categoria.tipo), COUNT(produto.id_produto) AS "quantidade de produtos"
FROM produto
JOIN categoria ON produto.id_categoria = categoria.id_categoria
GROUP BY categoria.tipo
ORDER BY "quantidade de produtos" DESC;

--FREE SELECT
SELECT nome_usuario, data_nascimento FROM  cliente
ORDER BY data_nascimento ASC;

--NOTA FISCAL
SELECT (pedido.id_pedido), (cliente.nome_completo), (cliente.nome_usuario), (cliente.cpf), (pedido.data_pedido), (Produto.Nome), (itens_pedido.quantidade), (produto.valor_unitario), (itens_pedido.quantidade * produto.valor_unitario) as "valor total"
FROM pedido
JOIN cliente ON cliente.id_cliente = pedido.id_pedido
JOIN itens_pedido ON pedido.id_pedido = itens_pedido.id_pedido 
JOIN produto ON itens_pedido.id_produto = produto.id_produto
WHERE pedido.id_pedido = 4;

