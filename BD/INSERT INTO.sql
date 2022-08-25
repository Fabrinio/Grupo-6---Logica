INSERT INTO funcionario(
	nome,
	cpf
)
VALUES(
	'Lucas Fabrinio Lima santana',
	'05397119342'
),
(
	'Pedro Braga Magalhães',
	'32165498777'
), 
(
	'Francisco Torres',
	'00000000000'
),
(
	'Juan Marco',
	'11111111111'
),
(
	'Manuela Azeredo',
	'22222222222'
);
INSERT INTO Categoria(tipo, descricao)
    VALUES('eletronico', 'tvs,radios,consoles e coisas'),
		  ('limpeza', 'sabão, detergente, amaciante, etc'),
		  ('Higiena Pessoal', 'sabão, shampoo, perfume, etc'),
		  ('roupa', 'camisa, vestido, calça, etc'),
		  ('calçado', 'tênis, chinelo, crocs, etc');
INSERT INTO endereco (rua,numero,bairro,cep,complemento,cidade)
    VALUES('rua do imperador','222','Centro','25644044','sim','Petrópolis'),
	      ('rua são Sebastião','525','São Sebastião','11111111','Bl.09 B, Ap 304','Petrópolis'),
		  ('rua são Sebastião','123','São Sebastião','11111111','Bl.10 B, Ap 305','Petrópolis'),
		  ('rua são Sebastião','321','São Sebastião','11111111','casa 20','Petrópolis'),
		  ('rua são Sebastião','654','São Sebastião','11111111','casa 10','Petrópolis');
INSERT INTO Cliente (id_cliente,nome_completo,nome_usuario,email,cpf,data_nascimento, cadastro_endereco)
    VALUES(1,'Joacyr maurilio de Sousa','JoarilioS','joacyr@gmail.com','11111111112','1984-02-06',1),
	      (2,'Jacinto Leite','jacy','jacy@gmail.com','11111111113','1984-02-01',2),
		  (3,'Marcos Simão','simba','msimba@gmail.com','11111111114','1984-02-26',3),
		  (4,'Luis da Silva','dedinho','lula13@gmail.com','11111111115','1984-02-14',4),
		  (5,'Neymar Hexa','neyjr','neyjr@gmail.com','11111111116','1984-02-05',5);
INSERT INTO Pedido(produtos,data_pedido,id_cliente)
    VALUES('TV','2022-08-23',1),
		  ('sabão','2022-08-24',2),
		  ('camisa','2022-08-14',3),
		  ('home teater','2022-10-14',4),
		  ('camisa do flamengo','2022-08-01',5);
INSERT INTO Produto (nome,descricao,quant_estoque,data_fabricacao,valor_unitario,id_categoria)
    VALUES('TV','Televisão',10,'2021-07-12',2998,1),
	      ('sabão','limpa todas as manchas',10,'2021-04-12',3.50,2),
		  ('camisa','camisa nike 100% algodão',10,'2021-05-12',70,4),
		  ('home teater','o melhor som para voce',10,'2021-05-15',1500,1),
		  ('camisa do flamengo','a camisa mais linda do mundo',10,'2022-05-12',350,4);
INSERT INTO Cadastro_Produto(id_funcionario,id_produto)
    VALUES(1,1),
		  (2,2),
		  (3,3),
		  (4,4),
		  (5,5);
		  
INSERT INTO Itens_Pedido (desconto,quantidade,id_pedido,id_produto)
    VALUES(0,2,1,1),
		  (0,3,2,2),
		  (0,4,3,3),
		  (0,5,4,4),
		  (0,6,5,5);
		  


		

