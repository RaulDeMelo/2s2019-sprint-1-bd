-- M�TODOS --

	-- VIEW CRIA��O DE VISUALIZA��O DE TODOS OS USU�RIOS USU�RIOS 
		create view VisualizarUsuarios as
		select U.IdUsuario as CodigoIdentifica��o, U.Nome as NomeDoUsuario, T.Nome as Autoriza��o
		from Usuario as U
		inner join TipoUsuario as T
		on U.IdTipoUsuario = T.IdTipoUsuario

		-- VIEW CRIA��O DE VISUALIZA��O INDIVIDUAL DE USU�RIO
		create procedure VisualizarUsuario
		@IdUsuario int as
		select * from Usuario
		where IdUsuario = @IdUsuario
		go

	-- PROCEDURE CRIA��O DE VISUALIZA��O POR TIPO DE USU�RIO
		create procedure VisualizarUsuarioPorAutorizacao
		@IdTipoUsuario int as
		select * from Usuario
		where IdTipoUsuario = @IdTipoUsuario
		go

	-- VIEW CRIA��O DE VISUALIZA��O DE LAN�AMENTOS
		create view VisualizarLancamentos as
		select C.Nome as Categoria, T.Nome as TipoDeProdu��o, L.Nome as NomeDoLan�amento, L.DataLancamento as DataDeLan�amento, L.Sinopse, L.TempDuracao as TempoDeDura��o
		from Lancamento as L
		inner join Categoria as C
		on L.IdCategoria = C.IdCategoria
		join TipoMetragem as T
		on L.IdTipoMetragem = T.IdTipoMetragem

	-- PROCEDURE CRIA��O DE VISUALIZA��O DE FAVORITOS
		create procedure VisualizarFavorito 
		@IdLancamento int
		as
		select count(IdLancamento) as NumeroDeFavoritos from LancamentoFavoritado 
		where IdUsuario = @IdLancamento
		go

	-- PROCEDURE CRIA��O DE VISUALIZA��O N�MERO DE FILMES POR CADA CATEGORIA
		create procedure VisualizarFilmesPorCategorias
		@IdCategoria int
		as
		select count(IdCategoria) as NumeroDeFilmesDestaCategoria from Lancamento 
		where IdCategoria = @IdCategoria
		go

-- FINAL DE M�TODOS --

use M_Opflix

-- VISUALIZA��O INDIVIDUAL DE TABELAS --

	-- VISUALIZAR TODO TIPO DE USUARIO
		select * from TipoUsuario;
	-- VISUALIZAR TODOS OS USU�RIOS
		select * from Usuario;
	-- VISUALIZAR TODO TIPO DE METRAGEM
		select * from TipoMetragem;
	-- VISUALIZAR TODAS AS CATEGORIAS
		select * from Categoria;
	-- VISUALIZAR TODOS OS LAN�AMENTOS
		select * from Lancamento;
	-- VISUALIZAR TODOS OS LAN�AMENTOS FAVORITADOS EM ORDEM CRESCENTE DE INSCRI��O
		select * from LancamentoFavoritado order by IdLancamento asc;

-- FINAL VISUALIZA��O INDIVIDUAL DE TABELAS --

-- EXIBI��O

	-- EXIBIR CARTAZ DE FILMES A SEREM LAN�ADOS
		select * from VisualizarLancamentos;
	-- EXIBIR TODOS OS FILMES CADASTRADOS
		select count(IdLancamento) from Lancamento
	-- EXECUTAR VISUALIZA��O DE FAVORITOS, ONDE N�MERO 'INT' EQUIVALE AO ID DE LAN�AMENTO INERENTE
		exec VisualizarFavorito 4;
	-- EXIBIR ESPECIFICA��O DE TIPOS DE USU�RIO
		exec VisualizarUsuarioPorAutorizacao 1;
	-- EXIBIR USU�RIOS EM P�BLICO
		select * from VisualizarUsuarios
	-- EXIBIR N�MERO DE USU�RIOS
		select count(IdUsuario) as NumeroDeUsuarios from Usuario;
	-- FILTRAR USU�RIO POR NOME - TODOS OS DADOS
		exec VisualizarUsuario 3;
	-- FILTRAR FILMES CADASTRADOS EM CADA CATEGORIA
		exec VisualizarFilmesPorCategorias 2;

-- FINAL EXIBI��O
