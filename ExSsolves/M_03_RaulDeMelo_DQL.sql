use M_Ssolves

-- TESTE TABELA CLIENTE
select * from Cliente
-- TESTE TABELA FUNCIONÁRIO
select * from Funcionario
-- TESTE TABELA OCORRÊNCIA
select * from Ocorrencia
-- TESTE TABELA RELAÇÃO FUNCIONÁRIO-OCORRÊNCIA
select * from CorreFuncOcorre order by IdOcorrencia asc;

-- RELACIONAR IDCLIENTE COM OCORRÊNCIA
select O.*, C.*
from Ocorrencia as O
inner join Cliente as C
on O.IdCliente = C.IdCliente

-- RELACIONAR FUNCIONÁRIO COM SERVIÇO
select O.*, F.*, Cr.*
from CorreFuncOcorre as Cr
inner join Funcionario as F
on Cr.IdFuncionario = F.IdFuncionario
join Ocorrencia as O
on Cr.IdOcorrencia = O.IdOcorrencia;

format
