create database M_Opflix
use M_Opflix

-- CRIA��O TABELA DE TIPO DE USU�RIO
create table TipoUsuario(
	IdTipoUsuario int primary key identity
	,Nome varchar (255) not null
)

-- CRIA��O TABELA DE USU�RIOS
create table Usuario(
	IdUsuario int primary key identity
	,Nome varchar (255) not null
	,Email varchar (255) not null
	,Senha varchar (255) not null
	,IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
)

-- CRIA��O TABELA DE CATEGORIAS
create table Categoria(
	IdCategoria int primary key identity
	,Nome varchar (255) not null
)

-- CRIA��O TABELA DE TIPO DE METRAGEM
create table TipoMetragem(
	IdTipoMetragem int primary key identity
	,Nome varchar (255) not null
)

-- CRIA��O TABELA DE LAN�AMENTOS
create table Lancamento(
	IdLancamento int primary key identity
	,Nome varchar (255) not null
	,IdCategoria int foreign key references Categoria (IdCategoria)
	,IdTipoMetragem int foreign key references TipoMetragem (IdTipoMetragem)
	,TempDuracao time
	,DataLancamento date
	,Sinopse text
)

-- CRIA��O TABELA DE FILMES FAVORITADOS
create table LancamentoFavoritado(
	IdUsuario int foreign key references Usuario (IdUsuario)
	,IdLancamento int foreign key references Lancamento (IdLancamento)
)