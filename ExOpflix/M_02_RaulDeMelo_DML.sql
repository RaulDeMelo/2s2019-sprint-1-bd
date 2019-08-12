use M_Opflix

-- INSERÇÃO DE DADOS NO TIPO DE USUÁRIOS
insert into TipoUsuario (Nome) values ('Cliente');
insert into TipoUsuario (Nome) values ('Administrador');
insert into TipoUsuario (Nome) values ('Parceria');

-- INSERÇÃO DE DADOS DE USUÁRIO
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Brutus', 'brutinho@gmail.com', '22016064', '2');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Raul', 'raulzinho@gmail.com', '60642201', '1');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Henrique', 'henriquinho@gmail.com', '22006410', '3');

-- INSERÇÃO DE DADOS DE METRAGEM
insert into TipoMetragem (Nome) values ('Filme');
insert into TipoMetragem (Nome) values ('Série');

-- INSERÇÃO DE DADOS EM CATEGORIA
insert into Categoria (Nome) values ('Herói');
insert into Categoria (Nome) values ('Ação');
insert into Categoria (Nome) values ('Terror');
insert into Categoria (Nome) values ('Romance');

-- INSERÇÃO DE DADOS EM LANÇAMENTO
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Vingadores', 1, 1, '2:20:15', '20031229', 'VÁ CAGA NO MATO');
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Anabele', 2, 2, '2:20:15', '20031229', 'VÁ CAGA NO MATO');
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Duro de mamar', 3, 2, '2:20:15', '20031229', 'VÁ CAGA NO MATO');
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Hello Kirry', 4, 1, '2:20:15', '20031229', 'VÁ CAGA NO MATO');

-- INSERÇÃO DE DADOS EM LISTA DE FAVORITOS
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,2)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (2,1)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (3,4)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,1)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,4)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (2,2)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,2)
