use M_Gufos

-- USUARIO ADD
insert into Usuario (Nome, Email, Senha, Permissao) values ('Administrador', 'admin@admin.com','calebe123','Administrador')
insert into Usuario (Nome, Email, Senha, Permissao) values ('Josias Cabele', 'josias@aluno.com','admin123','Aluno')

-- CATEGORIA ADD
insert into Categoria (Nome) values ('Jogos'), ('Meetup'), ('Futebol');


-- ORDENAÇÃO
select * from Evento order by Titulo asc;
select * from Usuario;

-- EVENTO ADD
insert into Evento (Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria) values ('Campeonato Futebolis', 'Jogo do mengão de PingPong', getdate(), 1, 'Alameda Barão de Limeira, 139', 1) 
insert into Evento (Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria) values ('Minecraft', 'SkyWars I-N-S-A-N-O', getdate(), 1, 'Alameda Barão de Limeira, 139', 1) 

-- PRESENCAS ADD
insert Presencas (IdEvento, IdUsuario) values (1,2);
