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
		,Localizacao varchar (255) null
		,Ativo bit not null default(1)
		,IdCategoria int foreign key references Categoria (IdCategoria)
);
create table Presencas(
		IdUsuario int foreign key references Usuario (IdUsuario)
		,IdEvento int foreign key references Evento (IdEvento)
);
