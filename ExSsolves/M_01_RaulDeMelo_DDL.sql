create database M_Ssolves
use M_Ssolves

-- TABELA DE CLIENTES
create table Cliente(
	IdCliente int primary key identity
	,NomeFantasia varchar (255) not null
	,CNPJ varchar (255) not null unique
	,RazaoSocial varchar (255) not null
	,Endereco varchar (255) not null
)

-- TABELA DE FUNCIONÁRIOS
create table Funcionario(
	IdFuncionario int primary key identity
	,Nome varchar (255) not null
)

create table StatusP(
	IdStatus int primary key identity
	,Nome varchar (255) not null
)

-- TABELA DE OCORRÊNCIAS
create table Ocorrencia(
	IdOcorrencia int primary key identity
	,IdCliente int foreign key references Cliente (IdCliente)
	,ItemOcorrencia varchar (255) not null
	,LocalComodo varchar (255) not null
	,DataInicio date not null
	,DataEstimada date not null
	,StatusP int foreign key references StatusP (IdStatus)
	,Preco int
)

-- TABELA DE RELAÇÃO FUNCIONÁRIO-OCORRÊNCIA
create table CorreFuncOcorre(
	IdOcorrencia int foreign key references Ocorrencia (IdOcorrencia)
	,IdFuncionario int foreign key references Funcionario (IdFuncionario)
)

