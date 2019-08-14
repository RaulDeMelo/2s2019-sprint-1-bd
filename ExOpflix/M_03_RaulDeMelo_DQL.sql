-- MÉTODOS --

	-- VIEW CRIAÇÃO DE VISUALIZAÇÃO DE TODOS OS USUÁRIOS USUÁRIOS 
		create view VisualizarUsuarios as
		select U.IdUsuario as CodigoIdentificação, U.Nome as NomeDoUsuario, T.Nome as Autorização
		from Usuario as U
		inner join TipoUsuario as T
		on U.IdTipoUsuario = T.IdTipoUsuario

		-- VIEW CRIAÇÃO DE VISUALIZAÇÃO INDIVIDUAL DE USUÁRIO
		create procedure VisualizarUsuario
		@IdUsuario int as
		select * from Usuario
		where IdUsuario = @IdUsuario
		go

	-- PROCEDURE CRIAÇÃO DE VISUALIZAÇÃO POR TIPO DE USUÁRIO
		create procedure VisualizarUsuarioPorAutorizacao
		@IdTipoUsuario int as
		select * from Usuario
		where IdTipoUsuario = @IdTipoUsuario
		go

	-- VIEW CRIAÇÃO DE VISUALIZAÇÃO DE LANÇAMENTOS
		create view VisualizarLancamentos as
		select C.Nome as Categoria, T.Nome as TipoDeProdução, L.Nome as NomeDoLançamento, L.DataLancamento as DataDeLançamento, L.Sinopse, L.TempDuracao as TempoDeDuração
		from Lancamento as L
		inner join Categoria as C
		on L.IdCategoria = C.IdCategoria
		join TipoMetragem as T
		on L.IdTipoMetragem = T.IdTipoMetragem

	-- PROCEDURE CRIAÇÃO DE VISUALIZAÇÃO DE FAVORITOS
		create procedure VisualizarFavorito 
		@IdLancamento int
		as
		select count(IdLancamento) as NumeroDeFavoritos from LancamentoFavoritado 
		where IdUsuario = @IdLancamento
		go

	-- PROCEDURE CRIAÇÃO DE VISUALIZAÇÃO NÚMERO DE FILMES POR CADA CATEGORIA
		create procedure VisualizarFilmesPorCategorias
		@IdCategoria int
		as
		select count(IdCategoria) as NumeroDeFilmesDestaCategoria from Lancamento 
		where IdCategoria = @IdCategoria
		go

-- FINAL DE MÉTODOS --

use M_Opflix

-- VISUALIZAÇÃO INDIVIDUAL DE TABELAS --

	-- VISUALIZAR TODO TIPO DE USUARIO
		select * from TipoUsuario;
	-- VISUALIZAR TODOS OS USUÁRIOS
		select * from Usuario;
	-- VISUALIZAR TODO TIPO DE METRAGEM
		select * from TipoMetragem;
	-- VISUALIZAR TODAS AS CATEGORIAS
		select * from Categoria;
	-- VISUALIZAR TODOS OS LANÇAMENTOS
		select * from Lancamento;
	-- VISUALIZAR TODOS OS LANÇAMENTOS FAVORITADOS EM ORDEM CRESCENTE DE INSCRIÇÃO
		select * from LancamentoFavoritado order by IdLancamento asc;

-- FINAL VISUALIZAÇÃO INDIVIDUAL DE TABELAS --

-- EXIBIÇÃO

	-- EXIBIR CARTAZ DE FILMES A SEREM LANÇADOS
		select * from VisualizarLancamentos;
	-- EXIBIR TODOS OS FILMES CADASTRADOS
		select count(IdLancamento) from Lancamento
	-- EXECUTAR VISUALIZAÇÃO DE FAVORITOS, ONDE NÚMERO 'INT' EQUIVALE AO ID DE LANÇAMENTO INERENTE
		exec VisualizarFavorito 4;
	-- EXIBIR ESPECIFICAÇÃO DE TIPOS DE USUÁRIO
		exec VisualizarUsuarioPorAutorizacao 1;
	-- EXIBIR USUÁRIOS EM PÚBLICO
		select * from VisualizarUsuarios
	-- EXIBIR NÚMERO DE USUÁRIOS
		select count(IdUsuario) as NumeroDeUsuarios from Usuario;
	-- FILTRAR USUÁRIO POR NOME - TODOS OS DADOS
		exec VisualizarUsuario 3;
	-- FILTRAR FILMES CADASTRADOS EM CADA CATEGORIA
		exec VisualizarFilmesPorCategorias 2;

-- FINAL EXIBIÇÃO
