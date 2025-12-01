/* --- MANIPULAÇÃO DE DADOS (UPDATE / DELETE) --- */

-- A. ATUALIZAÇÕES (UPDATE)

-- 1. Aumento de 10% no preço do Monitor (Regra de Negócio)
UPDATE PRODUTO 
SET preco_atual = preco_atual * 1.10 
WHERE id_produto = 40;

-- 2. Atualizar status do pedido da Maria para 'Enviado'
UPDATE PEDIDO 
SET status = 'Enviado' 
WHERE id_pedido = 501;

-- 3. Correção do endereço do cliente Carlos
UPDATE CLIENTE 
SET logradouro = 'Rua das Araucárias, 500' 
WHERE id_cliente = 102;


-- B. EXCLUSÕES (DELETE)
-- Nota: Para deletar dados relacionais, criamos dados fictícios isolados abaixo
-- para garantir que o script rode sem erro de Chave Estrangeira.

-- Inserindo dados temporários para teste de exclusão
INSERT INTO CATEGORIA VALUES (99, 'Categoria Teste', 'Será deletada');
INSERT INTO CLIENTE VALUES (999, 'Cliente Teste', '00000000000', 'teste@t.com', 'Rua X', 'Cid', 'UF');
INSERT INTO PRODUTO VALUES (999, 'Produto Teste', 1.00, 10, 99);

-- 1. Deletar o Produto Teste (Exclusão por ID)
DELETE FROM PRODUTO 
WHERE id_produto = 999;

-- 2. Deletar a Categoria Teste (Agora que está vazia)
DELETE FROM CATEGORIA 
WHERE id_categoria = 99;

-- 3. Deletar o Cliente Teste (Exclusão por CPF)
DELETE FROM CLIENTE 
WHERE cpf = '00000000000';