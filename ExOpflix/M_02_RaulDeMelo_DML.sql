use M_Opflix

-- INSERÇÃO DE DADOS NO TIPO DE USUÁRIOS
insert into TipoUsuario (Nome) values ('Cliente');
insert into TipoUsuario (Nome) values ('Administrador');
insert into TipoUsuario (Nome) values ('Parceria');

-- INSERÇÃO DE DADOS DE USUÁRIO
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Erik', 'erik@email.com', '123456', '2');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Cassiana', 'cassiana@email.com', '123456', '2');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Helena', 'helena@gmail.com', '123456', '1');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Roberto', 'rob@gmail.com', '3110', '1');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('Raul', 'raulzinho@gmail.com', '22016064', '3');
insert into Usuario (Nome, Email, Senha, IdTipoUsuario) values ('NaomiUmehara', 'naominha@gmail.com', '5689134', '1');

-- INSERÇÃO DE DADOS DE METRAGEM
insert into TipoMetragem (Nome) values ('Filme');
insert into TipoMetragem (Nome) values ('Série');

-- INSERÇÃO DE DADOS EM CATEGORIA
insert into Categoria (Nome) values ('Herói');
insert into Categoria (Nome) values ('Ação');
insert into Categoria (Nome) values ('Terror');
insert into Categoria (Nome) values ('Romance');
insert into Categoria (Nome) values ('Documentário');
insert into Categoria (Nome) values ('Comédia');
insert into Categoria (Nome) values ('Drama');
insert into Categoria (Nome) values ('Ficção Científica');

-- INSERÇÃO DE DADOS EM PLATAFORMAS
insert into Plataforma (Nome) values ('Telecine');
insert into Plataforma (Nome) values ('Record');
insert into Plataforma (Nome) values ('Globo');

-- INSERÇÃO DE DADOS EM LANÇAMENTO
-- insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Vingadores', 1, 1, '3:29:11', '20030710', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eget molestie sapien. Suspendisse potenti. Maecenas risus augue, interdum porta congue ac, pellentesque id lectus. Quisque efficitur ex feugiat, pretium diam at, rhoncus libero. Proin convallis ultricies porttitor. Integer fringilla vehicula convallis. Etiam vitae lacus suscipit lacus ultricies elementum ut vel nisi.');
-- insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Anabele', 3, 1, '2:20:15', '20090416', 'Vivamus dolor enim, commodo in convallis id, accumsan a augue. Fusce fringilla dui quis justo scelerisque egestas. Nunc semper lorem metus, id vehicula nulla aliquet vulputate. Suspendisse varius eleifend leo. Aliquam sit amet accumsan elit. Morbi efficitur tortor ac lorem ullamcorper pretium. Praesent in tincidunt ante. Suspendisse consectetur ante vel magna suscipit, ac tempus nulla ornare.');
-- insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Duro de matar', 2, 1, '2:20:15', '20100814', 'Praesent varius lorem id ligula sollicitudin, eget pretium massa accumsan. Aenean ultrices felis purus, ut luctus tellus commodo eget. Phasellus vestibulum turpis in erat feugiat pharetra. Nam quis orci ligula. Vestibulum libero dolor, pharetra vel pretium vitae, rutrum ac ex. Aenean nunc tellus, mollis sit amet suscipit quis, pellentesque sit amet mi. Sed enim eros, faucibus eget iaculis vel, mattis vel tortor. In hac habitasse platea dictumst. Vivamus ligula ante, blandit et tellus vel, lacinia dignissim justo.');
-- insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values ('Hello Kirry', 4, 2, '2:20:15', '20160116', 'Aliquam id tellus sit amet diam pulvinar ultricies lacinia eget leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent ut feugiat tellus. Donec imperdiet scelerisque mauris vitae vehicula. Sed interdum felis quis euismod vestibulum. Nulla rhoncus auctor quam, ut mollis nisi cursus sit amet. Duis in nulla tortor. Maecenas dui dui, sodales ac justo accumsan, luctus consequat nisi. Phasellus sed velit mauris. Phasellus at auctor leo. Donec tincidunt ac tortor vitae condimentum. Pellentesque non pharetra nunc. Donec at feugiat velit, sed fermentum lacus. Nulla suscipit turpis et posuere euismod. Etiam nunc ante, aliquet gravida mi vel, porttitor efficitur ante.');

-- PROCEDURE INSERIR FILME
create procedure InserirFilme
@Nome varchar (255), @IdCategoria int, @IdTipoMetragem int, @TempDuracao time, @DataLancamento date, @Sinopse text
as insert into Lancamento (Nome, IdCategoria, IdTipoMetragem, TempDuracao, DataLancamento, Sinopse) values (@Nome,
@IdCategoria, @IdTipoMetragem, @TempDuracao, @DataLancamento, @Sinopse)
go

-- INVOCAR PROCESSO DE INSERÇÃO DE FILME AUTOMATIZADO
exec InserirFilme  'asdsadkjdsa', 1, 2, '20:00:00', '20030516', 'kdsajdas';

-- INSERÇÃO DE DADOS EM LISTA DE FAVORITOS
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,2)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (2,1)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (3,4)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,1)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,4)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (2,2)
insert into LancamentoFavoritado (IdUsuario, IdLancamento) values (1,2)
