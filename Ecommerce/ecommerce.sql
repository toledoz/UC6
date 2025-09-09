create database ecommerce;
use ecommerce;
create table cliente(
id int auto_increment primary key,
nome varchar(100) not null,
email varchar(150) unique not null,
senha varchar(100) not null,
telefone varchar(20),
criado_em datetime default current_timestamp
);

create table enderecos (
id int auto_increment primary key,
cliente_id int,
rua varchar(100),
numero varchar(100),
complemento varchar(100),
bairro varchar(100),
cidade varchar (100),
estado char(2)
);

create table categorias(
id int auto_increment primary key,
nome varchar(100) not null, 
descricao text
);

create table produtos (
id int auto_increment primary key,
cliente_id int,
data_pedido datetime default current_timestamp,
status varchar(50) default 'Pendente',
total decimal(10,2)
);

create table itens_pedidos (
id int auto_increment primary key,
pedido_id int,
produto_id int,
quantidade int not null,
preco_unitario decimal(10,2) not null
);

alter table clientes
change column telefone celular varchar (15);
rename table clientes to usuarios;
alter table usuarios
add column telefone varchar(15) after email;
alter table enderecos add column cep varchar(10) after estado;
create table pedidos(
id int auto_increment primary key,
padidos_id int,
data_pedido datetime default current_timestamp,
sitacao varchar(50) default 'Pendente',
total decimal (10,2)
);
alter table usuarios
add index idx_email (email);
show tables;
describe cliente;