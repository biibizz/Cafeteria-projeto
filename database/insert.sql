USE CODCOFFEE;

INSERT INTO Produto(nome, descricao, preco, categoria, disponivel)
VALUES (
"Expresso Brasileiro Intenso", "Forte, encorpado, com gotas de chocolate amargo e nozes", 8.5, "Cafés", true),
("Capuccino de Doce de Leite", "Expresso cremoso com calda de doce de leite e canela.", 12, "Cafés", true),
("Mocha de Castanha-do-Pará", "Expresso, chocolate e leite de castanha-do-pará. Finalizado com chantilly e raspas de castanha.", 10, "Cafés", true),
("Latte de Paçoca", "Expresso com creme de paçoca e paçoca triturada por cima. Doce, crocante e brasileiro.", 10, "Cafés", true),
("Café com Leite", "Expresso com leite e gotas de baunilha, adocicando o amargo do café.", 10, "Cafés", true),
("Cold Brew Natural", "Café extraído a frio. Suave, sem amargor e refrescante.", 10, "Cafés", true),
("Café Brigadeiro", "Chocolate com leite condensado, doce e viciante, permanecendo o armagor do café com suavidade.", 10, "Cafés", true),
("Café Caramelizado", "Café, leite e caramelo são colocados juntos, tendo um doce sabor.", 10, "Cafés", true);

INSERT INTO Produto(nome, descricao, preco, categoria, disponivel)
VALUES (
"Brownie de Chocolate", "Brownie macio com sabor intenso de chocolate e casquinha crocante.", 15, "Doces", true),
("Cheesecake de Frutas Vermelhase", "Creme leve sobre base crocante, com calda de frutas vermelhas.", 9, "Doces", true),
("Torta de Limão", "Recheio cítrico equilibrado com cobertura leve e base crocante.", 12, "Doces", true),
("Mousse de Maracujá", "Sobremesa cremosa com toque doce e levemente ácido.", 10, "Doces", true),
("Petit Gateau", "Bolinho quente de chocolate com recheio cremoso", 20, "Doces", true),
("Pavê de Chocolate", "Camadas de creme e biscoito com cobertura de chocolate.", 10, "Doces", true),
("Pudim de Leite", "Clássico pudim cremoso com calda de caramelo.", 8, "Doces", true),
("Cookie com Gotas de Chocolate", "Cookie crocante por fora e macio por dentro, com gotas de chocolate.", 7, "Doces", true);

INSERT INTO Produto(nome, descricao, preco, categoria, disponivel)
VALUES (
"Coxinha de Frango", "Crocante por fora, com recheio cremoso de frango temperado.", 8, "Salgados", true),
("Pão de Queijo", "Crocante e macio, com sabor intenso de queijo.", 6, "Salgados", true),
("Empada de Frango", "Massa leve com recheio cremoso e saboroso.", 10, "Salgados", true),
("Quiche de Queijo", "Massa crocante com recheio leve e cremoso.", 10, "Salgados", true),
("Sanduíche Natural", "Leve, fresco e feito com ingredientes selecionados.", 8, "Salgados", true),
("Esfiha de Carne", "Leve, fresco e feito com ingredientes selecionados.", 7, "Salgados", true),
("Torta de Calabresa", "Fatia fofinha com recheio bem servido.", 10, "Salgados", true),
("Croissant Presunto e Queijo", "Folhado leve com recheio cremoso.", 6, "Salgados", true);

INSERT INTO Mesa(numero, capacidade)
VALUES (
1, 4),
(2, 6),
(3, 4),
(4, 6),
(5, 4),
(6, 6),
(7, 4),
(8, 6);

INSERT INTO cliente (nome, email, senha, telefone)
VALUES ("João", "joaomenezes@gmail.com", "gutajota789@", "11 96785-3056"),
("Maria José", "mariajosesilva@hotmail.com", "mjsilva07891", "11 95632-4599"),
("Carmen Souza", "souzacarmen@gmail.com", "csmoreira456723", "11 93756-4872"),
("Carlos Montes", "cmontes56@gmail.com", "montescarlos@5623", "11 98627-2257"),
("José Barbosa", "josebarbosa@hotmail.com", "873barb#", "11 93266-5816");


INSERT INTO Reserva
(id_cliente, data_reserva, horario, qtd_pessoas, status)
VALUES
(1, '2026-06-20', '19:00:00', 2, 'confirmada'),
(2, '2026-06-20', '20:00:00', 4, 'confirmada'),
(3, '2026-06-21', '18:30:00', 3, 'ativa'),
(4, '2026-06-21', '21:00:00', 5, 'confirmada'),
(5, '2026-06-22', '19:30:00', 2, 'cancelada');

INSERT INTO Reserva_Mesa
(id_reserva, id_mesa)
VALUES
(1,1),
(2,2),
(3,3),
(4,6),
(5,5);

INSERT INTO Pedido
(id_cliente, status)
VALUES
(1,'finalizado'),
(1,'finalizado'),
(2,'em preparo'),
(3,'finalizado'),
(4,'recebido'),
(5,'finalizado');

INSERT INTO Item_Pedido
(id_pedido, id_produto, quantidade, preco_unitario)
VALUES

-- Pedido 1 (João)
(1,1,2,8.50),
(1,17,2,6.00),
(1,9,1,15.00),

-- Pedido 2 (João)
(2,2,1,12.00),
(2,21,1,8.00),

-- Pedido 3 (Maria José)
(3,4,2,10.00),
(3,18,1,10.00),
(3,15,2,7.00),

-- Pedido 4 (Carmen)
(4,3,1,10.00),
(4,11,1,12.00),
(4,23,1,10.00),

-- Pedido 5 (Carlos)
(5,7,2,10.00),
(5,13,1,20.00),

-- Pedido 6 (José)
(6,8,1,10.00),
(6,16,2,8.00),
(6,20,1,10.00);