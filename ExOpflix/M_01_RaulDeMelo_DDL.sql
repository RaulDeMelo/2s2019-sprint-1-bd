create database M_Opflix
use M_Opflix

-- CRIAÇÃO TABELA DE TIPO DE USUÁRIO
create table TipoUsuario(
	IdTipoUsuario int primary key identity
	,Nome varchar (255) not null
)

-- CRIAÇÃO TABELA DE USUÁRIOS
create table Usuario(
	IdUsuario int primary key identity
	,Nome varchar (255) not null
	,Email varchar (255) not null unique
	,Senha varchar (255) not null unique
	,IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
)

-- CRIAÇÃO TABELA DE CATEGORIAS
create table Categoria(
	IdCategoria int primary key identity
	,Nome varchar (255) not null unique
)

-- CRIAÇÃO TABELA DE TIPO DE METRAGEM
create table TipoMetragem(
	IdTipoMetragem int primary key identity
	,Nome varchar (255) not null unique
)

-- CRIAÇÃO TABELA DE PLATAFORMAS
create table Plataforma(
	IdPlataforma int primary key identity
	,Nome varchar (255) not null
)

-- CRIAÇÃO TABELA DE LANÇAMENTOS
create table Lancamento(
	IdLancamento int primary key identity
	,Nome varchar (255) not null
	,IdCategoria int foreign key references Categoria (IdCategoria)
	,Sinopse text
	,IdTipoMetragem int foreign key references TipoMetragem (IdTipoMetragem)
	,TempDuracao time
	,DataLancamento date
	,IdPlataforma int foreign key references Plataforma (IdPlataforma)
)

-- CRIAÇÃO TABELA DE FILMES FAVORITADOS
create table LancamentoFavoritado(
	IdUsuario int foreign key references Usuario (IdUsuario)
	,IdLancamento int foreign key references Lancamento (IdLancamento)
)
