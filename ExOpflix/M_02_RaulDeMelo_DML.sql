use M_Opflix

-- INSER��O DE DADOS NO TIPO DE USU�RIOS
insert into TipoUsuario (Nome) values ('Cliente');
insert into TipoUsuario (Nome) values ('Administrador');
insert into TipoUsuario (Nome) values ('Parceria');

-- INSER��O DE DADOS DE USU�RIO
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Brutus', 'brutinho@gmail.com', '22016064', '2');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Raul', 'raulzinho@gmail.com', '60642201', '1');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Henrique', 'henriquinho@gmail.com', '22006410', '3');

-- INSER��O DE DADOS DE METRAGEM
insert into TipoMetragem (Nome) values ('Filme');
insert into TipoMetragem (Nome) values ('S�rie');

-- INSER��O DE DADOS EM CATEGORIA
insert into Categoria (Nome) values ('Her�i');
insert into Categoria (Nome) values ('A��o');
insert into Categoria (Nome) values ('Terror');
insert into Categoria (Nome) values ('Romance');

-- INSER��O DE DADOS EM LAN�AMENTO
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Vingadores', 1, 1, '2:20:15', '20031229', 'V� CAGA NO MATO');
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Anabele', 2, 2, '2:20:15', '20031229', 'V� CAGA NO MATO');
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Duro de mamar', 3, 2, '2:20:15', '20031229', 'V� CAGA NO MATO');
insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Hello Kirry', 4, 1, '2:20:15', '20031229', 'V� CAGA NO MATO');

-- INSER��O DE DADOS EM LISTA DE FAVORITOS
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,2)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (2,1)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (3,4)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,1)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,4)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (2,2)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,2)
