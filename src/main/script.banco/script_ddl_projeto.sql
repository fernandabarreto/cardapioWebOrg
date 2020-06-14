
-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE produto (
id int AUTO_INCREMENT PRIMARY KEY,
nome varchar(100),
preco float (5,2),
id_categoria int
);

CREATE TABLE categoria (
id int AUTO_INCREMENT PRIMARY KEY,
nome varchar(40)
);

CREATE TABLE pedido (
id int AUTO_INCREMENT PRIMARY KEY,
data_pedido date,
data_entrega date,
total float(5,2),
id_cliente int
);

CREATE TABLE lista_produto (
id_produto int,
id_pedido int,
quantidade int,
total float(5,2),
PRIMARY key (id_produto, id_pedido),
FOREIGN KEY(id_produto) REFERENCES produto (id),    
FOREIGN KEY(id_pedido) REFERENCES pedido (id)
);

CREATE TABLE cliente (
id int AUTO_INCREMENT PRIMARY KEY,
nome varchar(100),
cidade varchar(100),
endereco varchar(200),
telefone varchar(12)
);

ALTER TABLE produto ADD FOREIGN KEY (id_categoria) REFERENCES categoria 
(id);
ALTER TABLE pedido ADD FOREIGN KEY (id_cliente) REFERENCES cliente 
(id);
