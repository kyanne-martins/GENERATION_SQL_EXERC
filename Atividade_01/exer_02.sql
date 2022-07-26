-- Comando para criar banco de dados (comentário de linha)

/*Chave primaria = referencia de um dado dentro da minha tabela,será meu id. 
Chave estrangeira = Você não cria, você só indica a referencia da outra tabela.
Comentatio de bloco
é usado para várias linhas
*/

CREATE DATABASE db_lojinha;

USE db_lojinha;

CREATE TABLE tb_produtos(

	id BIGINT auto_increment PRIMARY KEY, /* BIGINT (significa número inteiro), auto_increment (siginifica que é o próprio sistema que vai incrementa), PRIMARY KEY (sem essa chave o banco não cria a tabela)*/
	nome_produto VARCHAR(255),/* VARCHAR - significa uma string e o numero em parenteses, é a defivinição da quantidade de caracteres a ser usado*/
    valor DECIMAL(8,2), /* DECIMAL - tipo de dados, e os parenteses para definir até quantos digitos vamos receber e quantos numeros depois da virgula vamos receber.*/
    quantidade INT,
    pagamento_cartão BOOLEAN
    
);

INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("CAMISETA",25.59,5,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("CALÇA",59.90,10,true);		
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("BONÉ",29.90,30,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("VESTIDO",99.90,12,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("SAIA",39.90,7,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("SHORT",89.90,20,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("CROPPED",59.90,25,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartão)VALUES("TRICOT",89.90,28,true);

UPDATE tb_produtos SET valor = 39.90 WHERE id = 1;

SELECT * FROM tb_produtos  where valor > 50.00

