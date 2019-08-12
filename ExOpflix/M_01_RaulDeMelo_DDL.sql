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
	,Email varchar (255) not null
	,Senha varchar (255) not null
	,IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
)

-- CRIAÇÃO TABELA DE CATEGORIAS
create table Categoria(
	IdCategoria int primary key identity
	,Nome varchar (255) not null
)

-- CRIAÇÃO TABELA DE TIPO DE METRAGEM
create table TipoMetragem(
	IdTipoMetragem int primary key identity
	,Nome varchar (255) not null
)

-- CRIAÇÃO TABELA DE LANÇAMENTOS
create table Lancamento(
	IdLancamento int primary key identity
	,Nome varchar (255) not null
	,IdCategoria int foreign key references Categoria (IdCategoria)
	,IdTipoMetragem int foreign key references TipoMetragem (IdTipoMetragem)
	,TempDuracao time
	,DataLancamento date
	,Sinopse text
)

-- CRIAÇÃO TABELA DE FILMES FAVORITADOS
create table LancamentoFavoritado(
	IdUsuario int foreign key references Usuario (IdUsuario)
	,IdLancamento int foreign key references Lancamento (IdLancamento)
)