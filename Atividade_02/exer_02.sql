/*Crie um banco de dados para um serviço de uma Pizzaria. 
O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa.
O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.

CREATE TABLE tb_categorias(
id BIGINT auto_increment PRIMARY KEY,
categoria VARCHAR(255),
fatias INT
);

-- Insira 5 registros na tabela tb_categorias.

INSERT INTO tb_categorias(categoria,fatias)VALUES("DOCE",8);
INSERT INTO tb_categorias(categoria,fatias)VALUES("SALGADA",8);
INSERT INTO tb_categorias(categoria,fatias)VALUES("ESPECIAIS",8);
INSERT INTO tb_categorias(categoria,fatias)VALUES("PREMIUM",10);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
categoria_id BIGINT,
sabor VARCHAR(255),
valor DECIMAL(10,2),
tempo_min DECIMAL(10,2),

 PRIMARY KEY (id),
    FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)

);

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categoria.			.

INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(2,"CALABRESA",29.90,30);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(2,"MUÇARELA",29.90,30);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(2,"FRANGO COM CATURIRY",39.90,35);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(1,"CHOCOLATE",49.90,40);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(1,"DOCE DE LEITE",49.90,35);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(3,"BRASIL",79.90,35);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(3,"ITALIA",79.90,35);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(4,"A MODA DA CASA",99.90,35);
INSERT INTO tb_pizzas(categoria_id,sabor,valor,tempo_min)VALUES(4,"ORIENTAL",110.00,35);


-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

SELECT * FROM tb_pizzas  where valor > 45;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.

SELECT * FROM tb_pizzas  where valor >= 50 and valor <=100; 

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

SELECT * FROM tb_pizzas  where sabor like "%m%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias,
-- onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id 
WHERE tb_categorias.categoria = "DOCE";