CREATE DATABASE CODCOFFEE;

USE CODCOFFEE;

CREATE TABLE Cliente (
	id_cliente int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) unique not null,
    senha varchar(255) not null,
    telefone varchar(20),
    data_cadastro datetime default current_timestamp
);

CREATE TABLE Reserva(
	id_reserva int primary key auto_increment,
    id_cliente int not null,
    data_reserva date not null,
    horario time not null,
    qtd_pessoas int not null,
    status varchar(20) default 'ativa',
    foreign key (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Mesa(
	id_mesa int primary key auto_increment,
    numero int unique not null,
    capacidade int not null
);

CREATE TABLE Reserva_Mesa(
	id_reserva int,
    id_mesa int,
    
    primary key(id_reserva, id_mesa),
    foreign key (id_reserva) references Reserva(id_reserva),
    foreign key (id_mesa) references Mesa(id_mesa)
);

CREATE TABLE Produto(
	id_produto int primary key auto_increment,
    nome varchar(100) not null,
    descricao text,
    preco decimal(10,2) not null,
    categoria varchar(50),
    disponivel boolean default true
);

CREATE TABLE Pedido(
	id_pedido int primary key auto_increment,
    id_cliente int not null,
    data_pedido datetime default current_timestamp,
    status varchar(20) default 'recebido',
    
    foreign key (id_cliente) references Cliente(id_cliente)
);

CREATE TABLE Item_Pedido(
	id_item int primary key auto_increment,
    id_pedido int,
    id_produto int,
    quantidade int not null,
    preco_unitario decimal(10,2) not null,
    
    foreign key (id_pedido) references Pedido(id_pedido),
    foreign key (id_produto) references Produto(id_produto)
);

CREATE TABLE Funcionario(
	id_funcionario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) unique,
    senha varchar(255),
    cargo varchar(50)
);
