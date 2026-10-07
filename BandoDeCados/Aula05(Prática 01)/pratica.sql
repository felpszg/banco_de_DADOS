-- Active: 1791409986913@@127.0.0.1@5432@bd_hortifruti@public
--CREATE DATABASE bd_hortifruti;

DROP TABLE IF EXISTS itens_venda;

CREATE TABLE itens_venda(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    venda_id INTEGER NOT NULL,
    data_venda DATE NOT NULL,
    bairro_entrega TEXT,
    produto_id INTEGER NOT NULL,
    produto_nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    unidade TEXT NOT NULL,
    quantidade NUMERIC(10,3) NOT NULL,
    valor_unitario NUMERIC(10,2) NOT NULL
);

INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
-- 2026-08-03, segunda-feira
(3001, '2026-08-03', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 1.235, 5.99),
(3001, '2026-08-03', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.874, 7.49),
(3001, '2026-08-03', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 2.99),
(3001, '2026-08-03', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 2.000, 2.50),
(3002, '2026-08-03', NULL, 6, 'Batata', 'Legume', 'Kg', 2.140, 4.99),
(3002, '2026-08-03', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.965, 5.19),
(3003, '2026-08-03', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 2.000, 7.90),
(3003, '2026-08-03', 'Centro', 2, 'Laranja pera', 'Fruta', 'Kg', 3.180, 3.79),
(3003, '2026-08-03', 'Centro', 8, 'Cenoura', 'Legume', 'Kg', 1.020, 4.29),
-- 2026-08-04, terca-feira
(3004, '2026-08-04', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.460, 7.49),
(3004, '2026-08-04', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.785, 4.49),
(3004, '2026-08-04', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.00),
(3005, '2026-08-04', NULL, 4, 'Morango', 'Fruta', 'UN', 2.000, 9.90),
(3006, '2026-08-04', 'Lagoinha', 1, 'Banana prata', 'Fruta', 'Kg', 2.310, 5.99),
(3006, '2026-08-04', 'Lagoinha', 6, 'Batata', 'Legume', 'Kg', 1.505, 4.99),
(3006, '2026-08-04', 'Lagoinha', 10, 'Alface crespa', 'Verdura', 'UN', 2.000, 2.99),
(3006, '2026-08-04', 'Lagoinha', 12, 'Cheiro-verde', 'Verdura', 'UN', 1.000, 2.50),
-- 2026-08-05, quarta-feira
(3007, '2026-08-05', NULL, 2, 'Laranja pera', 'Fruta', 'Kg', 2.450, 3.49),
(3007, '2026-08-05', NULL, 5, 'Tomate', 'Legume', 'Kg', 0.635, 7.99),
(3008, '2026-08-05', NULL, 8, 'Cenoura', 'Legume', 'Kg', 0.780, 4.39),
(3008, '2026-08-05', NULL, 9, 'Cebola', 'Legume', 'Kg', 1.215, 5.19),
(3008, '2026-08-05', NULL, 11, 'Couve', 'Verdura', 'UN', 2.000, 3.00),
(3009, '2026-08-05', 'Centro', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 7.50),
(3009, '2026-08-05', 'Centro', 4, 'Morango', 'Fruta', 'UN', 1.000, 9.49),
(3009, '2026-08-05', 'Centro', 1, 'Banana prata', 'Fruta', 'Kg', 1.890, 6.29),
-- 2026-08-06, quinta-feira
(3010, '2026-08-06', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 0.925, 4.79),
(3010, '2026-08-06', NULL, 10, 'Alface crespa', 'Verdura', 'UN', 1.000, 3.29),
(3011, '2026-08-06', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.975, 8.49),
(3011, '2026-08-06', NULL, 6, 'Batata', 'Legume', 'Kg', 3.020, 5.29),
(3011, '2026-08-06', NULL, 12, 'Cheiro-verde', 'Verdura', 'UN', 3.000, 2.50),
(3012, '2026-08-06', 'Planalto', 2, 'Laranja pera', 'Fruta', 'Kg', 4.060, 3.49),
(3012, '2026-08-06', 'Planalto', 8, 'Cenoura', 'Legume', 'Kg', 1.340, 4.39),
-- 2026-08-07, sexta-feira
(3013, '2026-08-07', NULL, 1, 'Banana prata', 'Fruta', 'Kg', 0.965, 6.49),
(3013, '2026-08-07', NULL, 9, 'Cebola', 'Legume', 'Kg', 0.540, 5.49),
(3013, '2026-08-07', NULL, 11, 'Couve', 'Verdura', 'UN', 1.000, 3.50),
(3014, '2026-08-07', 'Lagoinha', 4, 'Morango', 'Fruta', 'UN', 3.000, 8.90),
(3014, '2026-08-07', 'Lagoinha', 3, 'Abacaxi', 'Fruta', 'UN', 1.000, 6.99),
-- 2026-08-08, sabado
(3015, '2026-08-08', NULL, 6, 'Batata', 'Legume', 'Kg', 1.250, 5.49),
(3016, '2026-08-08', NULL, 5, 'Tomate', 'Legume', 'Kg', 1.115, 8.99),
(3016, '2026-08-08', NULL, 7, 'Batata-doce', 'Legume', 'Kg', 1.360, 4.79);



-- 2.4 
INSERT INTO itens_venda
 (venda_id, data_venda, bairro_entrega, produto_id, produto_nome,
 categoria, unidade, quantidade, valor_unitario)
VALUES
(3017,'2026-08-08',NULL,5,'Tomate','Legume','Kg',1.340,8.99),
(3017,'2026-08-08',NULL,10,'Alface crespa','Verdura','UN',2, 3.49),
(3017,'2026-08-08',NULL,4,'Morango','Fruta','UN',1, 9.90);


--2.5
SELECT
    *
FROM
    itens_venda;


--PARTE 3
--Consulta 1
SELECT DISTINCT
    produto_id,
    produto_nome,
    categoria,
    unidade
FROM
    itens_venda
ORDER BY
    categoria ASC,
    produto_nome ASC;



--Consulta 2
SELECT
    venda_id,
    produto_nome,
    valor_unitario
FROM
    itens_venda
WHERE
    valor_unitario BETWEEN 3 AND 5 AND
    categoria IN (
        'Legume',
        'Verdura'
    )
ORDER BY
    valor_unitario DESC,
    venda_id;
    

    
--Consulta 3
SELECT
    venda_id,
    data_venda,
    produto_nome,
    quantidade
FROM
    itens_venda
WHERE
    produto_nome LIKE ('Batata%')
ORDER BY
    data_venda,
    venda_id;



--Consulta 4
SELECT DISTINCT
    venda_id,
    data_venda,
    bairro_entrega
FROM
    itens_venda
WHERE 
    bairro_entrega IS NOT NULL
ORDER BY  
    venda_id;



--Expressões e agregações
--Consulta 5
SELECT
    venda_id,
    produto_nome,
    quantidade,
    unidade,
    valor_unitario,
    ROUND((quantidade * valor_unitario),2) AS valor_item
FROM
    itens_venda
ORDER BY
    valor_item DESC,
    venda_id ASC
LIMIT 5
OFFSET 5;



--Consulta 6
SELECT
    venda_id,
    data_venda,
    quantidade AS itens,
    ROUND(SUM(valor_unitario*quantidade),2) AS valor_total,
    COALESCE(
        bairro_entrega,
        'Retirada No balcao'
    ) AS destino
FROM
    itens_venda
GROUP BY
    venda_id,
    data_venda,
    bairro_entrega,
    quantidade
ORDER BY
    valor_total DESC;



--Consulta 7
SELECT
    data_venda,
    COUNT(DISTINCT venda_id) AS vendas,
    SUM(quantidade) AS ITENS,
    ROUND(SUM(valor_unitario*quantidade),2) AS faturamento
FROM
    itens_venda
GROUP BY
    data_venda
ORDER BY
    data_venda



--Consulta 8
SELECT
    produto_id,
    produto_nome,
    unidade,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(valor_unitario*quantidade),2) AS faturamento,
    ROUND(AVG(valor_unitario),2) AS media_simples,
    ROUND(AVG(valor_unitario)/quantidade,2) AS media_ponderada
FROM
    itens_venda
GROUP BY
    produto_id,
    produto_nome,
    unidade,
    quantidade
ORDER BY
    faturamento DESC;



--Consulta 9
SELECT
    categoria,
    COUNT(*) AS itens,
    unidade,
    SUM(quantidade) AS qtd_total,
    ROUND(SUM(valor_unitario*quantidade),2) AS faturamento
FROM
    itens_venda
GROUP BY
    categoria,
    unidade
ORDER BY
    categoria;



--Consulta 10
SELECT
    bairro_entrega,
    COUNT(*) AS entregas,
    ROUND(SUM(valor_unitario * quantidade), 2) AS faturamento
FROM
    itens_venda
WHERE
    bairro_entrega IS NOT NULL
GROUP BY
    bairro_entrega
HAVING
    SUM(valor_unitario * quantidade) >= 40
ORDER BY
    faturamento DESC;


--Consulta 11
SELECT
    venda_id,
    ROUND(SUM(valor_unitario*quantidade),2) AS total_arredondado,
    SUM(ROUND(valor_unitario * quantidade, 2)) AS soma_dos_itens_arredondados
FROM
    itens_venda
GROUP BY
    venda_id
HAVING
ROUND(SUM(valor_unitario*quantidade),2) !=  SUM(ROUND(valor_unitario * quantidade, 2))
ORDER BY
    venda_id ASC;

--PARTE 4

--QUESTÃO 1: As colunas data_venda e bairro_entrega se repetem porque pertencem à venda. Já produto_nome, categoria e unidade se repetem porque pertencem ao produto.
--O valor_unitario é diferente, pois pode variar de uma venda para outra.
--Se o nome de um produto fosse alterado em apenas algumas linhas, na Consulta 1 o mesmo produto poderia aparecer mais de uma vez. Na Consulta 8, ele seria dividido em grupos diferentes, alterando os cálculos.


--QUESTÃO 2: 
--1-Uma venda deveria ter sempre a mesma data e bairro.
--2-Um produto deveria ter sempre o mesmo nome, categoria e unidade.

--Exemplo de INSERT inválido para a regra, mas aceito pelo banco:
--INSERT INTO itens_venda
--(venda_id, data_venda, produto_id, produto_nome, categoria, unidade, quantidade, valor_unitario)
--VALUES
--(3001, '2026-08-09', 1, 'Banana prata', 'Fruta', 'Kg', 1, 5.99);


--QUESTÃO 3:
--No morango, a maior quantidade foi vendida por um preço menor, então a média ponderada fica menor.
--No abacaxi, a maior quantidade foi vendida pelo preço maior, então a média ponderada fica maior.
--No cheiro-verde, todos os preços são R$ 2,50, então a média simples e a ponderada são iguais.




-- Continuação 

SELECT
    COUNT(*) AS linhas
FROM
    itens_venda;

DROP TABLE IF EXISTS vendas;

DROP TABLE IF EXISTS produto;


--O tomate e a tabela única

SELECT
    id,
    venda_id,
    produto_id,
    produto_nome,
    categoria
FROM
    itens_venda
WHERE
    produto_id = 5
ORDER BY
    venda_id;

UPDATE tabela
SET coluna1 = valor1,
    coluna2 = valor2
WHERE
    condicao; 
    

UPDATE itens_venda
SET categoria = 'Fruta'
WHERE
    produto_id = 5;


CREATE TABLE
    produto(
        id INTEGER PRIMARY KEY,
        nome TEXT NOT NULL UNIQUE,
        categoria TEXT NOT NULL CHECK(categoria IN ('Fruta', 'Legume', 'Verdura')),
        unidade TEXT NOT NULL CHECK(unidade IN ('Kg', 'UN'))
    );


INSERT INTO produto(id, nome, categoria, unidade)
SELECT DISTINCT
    produto_id,
    produto_nome,
    categoria,
    unidade
FROM
    itens_venda;


SELECT
    *
FROM
    produto;

ALTER TABLE itens_venda
    ADD CONSTRAINT fk_itens_venda_produto
    FOREIGN KEY (produto_id)
    REFERENCES produto(id);

ALTER TABLE itens_venda
    DROP COLUMN produto_nome,
    DROP COLUMN categoria,
    DROP COLUMN unidade;

SELECT
    *
FROM
    produto;
WHERE 
    id = 2;


SELECT
    i.id,
    i.venda_id,
    p.nome AS produto,
    p.categoria,
    p.unidade,
    i.quantidade,
    i.valor_unitario
FROM
    itens_venda AS i
    INNER JOIN
    produto AS p
    ON 
        p.id = i.produto_id
WHERE
    i.venda_id = 3017
ORDER BY
    i.id;


SELECT
    p.id,
    p.nome,
    p.unidade,
    ROUND(SUM(i.quantidade),2)  AS quantidade,
    ROUND(SUM(i.quantidade * i.valor_unitario),2) AS faturamento,
    ROUND(AVG(i.valor_unitario)) AS media_simples,
    ROUND(SUM(i.quantidade * i.valor_unitario)/SUM(i.quantidade),2) AS media_ponderada
FROM
        itens_venda AS i
    INNER JOIN
        produto AS p
    ON 
        p.id = i.produto_id
GROUP BY
    p.id,
    p.nome,
    p.unidade
ORDER BY
    faturamento DESC;


SELECT
    p.categoria,
    COUNT(*) AS itens,
    p.unidade,
    ROUND(SUM(i.quantidade),2) AS qtd_total,
    ROUND(SUM(i.valor_unitario*i.quantidade),2) AS faturamento
FROM
    itens_venda AS i INNER JOIN produto AS p ON p.id = i.produto_id
GROUP BY
    p.categoria,
    p.unidade
ORDER BY
    categoria;


-- LEFT JOIN : PRODUTOS QUE NÃO ESTÃO EM ITENS VENDAS, QUANTIDADE VENDIDA DE CADA PRODUTO
SELECT
    p.id,
    p.nome,
    COUNT(i.id) AS itens_vendidos
--LEFT INNER E RIGHT JOIN 😂😂😂😂😂👌
FROM produto AS p RIGHT JOIN itens_venda AS i ON p.id = i.produto_id
GROUP BY
    p.id,
    p.nome
ORDER BY
    p.id;

INSERT INTO produto(id, nome, categoria, unidade)
VALUES(13,'Pimentão', 'Legume', 'Kg')



--INSERT INTO itens_venda(venda_id, data_venda, bairro_entrega, produto_id, quantidade, valor_unitario)
--VALUES(3018,'2026-08-09','Centro',13,0.8, 8.89)



SELECT DISTINCT
    p.id,
    p.nome,
    p.categoria
FROM
    produto AS p
RIGHT JOIN 
    itens_venda AS i
ON i.produto_id = p.id
WHERE
    i.id IS NOT NULL
ORDER BY
    p.id;



-- TABELA: VENDAS
SELECT
    *
FROM
    itens_venda




DROP TABLE IF EXISTS vendas;

CREATE TABLE vendas(
    id INTEGER PRIMARY KEY,
    data_venda DATE NOT NULL,
    bairro_entrega TEXT
);



INSERT INTO vendas(id, data_venda, bairro_entrega)
SELECT DISTINCT
    venda_id,
    data_venda,
    bairro_entrega
FROM
    itens_venda;


SELECT
*
FROM
vendas;