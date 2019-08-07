use M_Gufos
select * from Categoria order by IdCategoria asc;
select * from Evento order by DataEvento desc;
select * from Usuario;
select * from Presencas;

-- INSERÇÃO DE CATEGORIA-NOME (RELAT-EVENTO-CATEGORIA)
select E.*, C.*
from Evento E
inner join Categoria as C
on E.IdCategoria = C.IdCategoria;

-- INSERÇÃO DE USUARIO-EVENTO (RELAT-PRESENÇAS-USUÁRIO)
select P.*, U.*, E.*
from Presencas as P
inner join Usuario as U
on P.IdUsuario = U.IdUsuario
join Evento as E
on P.IdEvento = E.IdEvento;

select P.*, U.*, E.*, C.*
from Presencas as P
join Usuario as U
on P.IdUsuario = U.IdUsuario
join Evento as E
on P.IdEvento = E.IdEvento
join Categoria as C
on E.IdCategoria = C.IdCategoria;
