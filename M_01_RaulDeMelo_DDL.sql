create database M_Gufos
use M_Gufos
create table Usuario(
		IdUsuario int primary key identity not null
		,Nome varchar (255) not null
		,Email varchar (255) not null unique
		,Senha varchar (255) not null
		,Permissao varchar (255) not null
);
create table Categoria(
		IdCategoria int primary key identity not null
		,Nome varchar (255) not null unique
);
create table Evento(
		IdEvento int primary key identity not null
		,Titulo varchar (255) not null
		,Descricao text
		,DataEvento datetime not null
		,
)
