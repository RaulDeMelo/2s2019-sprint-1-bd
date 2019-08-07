use M_Ssolves

-- INSERÇÃO VALORES DE CLIENTE
insert into Cliente (NomeFantasia, CNPJ, RazaoSocial, Endereco) values ('Cocacolis', '31190464000131', 'ColisCoca CompanyBebids', 'Avenida Sete de Setembro, 77')
insert into Cliente (NomeFantasia, CNPJ, RazaoSocial, Endereco) values ('Phanta', '87850986000177', 'Phanta CompanyPhantasmas', 'Travessa de José Muniz Castro, 707')
insert into Cliente (NomeFantasia, CNPJ, RazaoSocial, Endereco) values ('Prepsi', '25913516000158', 'Prepsi CompanyTropersOpers', 'Estrada BNL, 203')
insert into Cliente (NomeFantasia, CNPJ, RazaoSocial, Endereco) values ('McBonalds', '4636878000179', 'McBonalds CompanyFooders', 'Avenida Rio Negro, 101')

-- INSERÇÃO VALORES DE FUNCIONÁRIO
insert into Funcionario (Nome) values ('Jojo')
insert into Funcionario (Nome) values ('Raul')
insert into Funcionario (Nome) values ('Carlão')
insert into Funcionario (Nome) values ('Henrique')

-- INSERÇÃO VALORES DE OCORRÊNCIA
insert into Ocorrencia (IdCliente, ItemOcorrencia, LocalComodo, DataInicio, DataEstimada, StatusP, Preco)	
values (1, 'Ar-Condicionado', 'Sala de serviços', '20031222', '20031226', 1, '55')
insert into Ocorrencia (IdCliente, ItemOcorrencia, LocalComodo, DataInicio, DataEstimada, StatusP, Preco)	
values (1, 'Chuveiro', 'Banheiro', '20031225', '20031228', 2, '86') 
insert into Ocorrencia (IdCliente, ItemOcorrencia, LocalComodo, DataInicio, DataEstimada, StatusP, Preco)	
values (2, 'Garrafa plástica', 'Cozinha', '20031222', '20031229', 3, '150') 
insert into Ocorrencia (IdCliente, ItemOcorrencia, LocalComodo, DataInicio, DataEstimada, StatusP, Preco)	
values (4, 'Lata de lixo', 'Garagem', '20031223', '20031225', 2, '200') 
insert into Ocorrencia (IdCliente, ItemOcorrencia, LocalComodo, DataInicio, DataEstimada, StatusP, Preco)	
values (3, 'Máquina de lavar', 'Varanda', '20031225', '20031227', 3, '106')
insert into Ocorrencia (IdCliente, ItemOcorrencia, LocalComodo, DataInicio, DataEstimada, StatusP, Preco)	
values (4, 'Bebedouro', 'Pátio', '20031226', '20031229', 3, '76')

-- INSERÇÃO VALORES RELAÇÃO FUNCIONÁRIO-OCORRÊNCIA
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (3,1)
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (3,1)
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (4,2)
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (2,3)
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (1,4)
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (1,5)
insert into CorreFuncOcorre (IdFuncionario, IdOcorrencia) values (2,5)





