use M_Ssolves

-- TESTE TABELA CLIENTE
select * from Cliente
-- TESTE TABELA FUNCION�RIO
select * from Funcionario
-- TESTE TABELA OCORR�NCIA
select * from Ocorrencia
-- TESTE TABELA RELA��O FUNCION�RIO-OCORR�NCIA
select * from CorreFuncOcorre order by IdOcorrencia asc;

-- RELACIONAR IDCLIENTE COM OCORR�NCIA
select O.*, C.*
from Ocorrencia as O
inner join Cliente as C
on O.IdCliente = C.IdCliente

-- RELACIONAR FUNCION�RIO COM SERVI�O
select O.*, F.*, Cr.*
from CorreFuncOcorre as Cr
inner join Funcionario as F
on Cr.IdFuncionario = F.IdFuncionario
join Ocorrencia as O
on Cr.IdOcorrencia = O.IdOcorrencia;

format
