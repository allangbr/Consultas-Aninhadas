# Inserts Tabela Funcionário
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario) VALUES (1, 'Allan', 'M', '2000/12/31', 10000.00)
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario) VALUES (2, 'Joan', 'M', '2000/12/11', 9000.00)
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario) VALUES (3, 'Thaynara', 'F', '2000/12/03', 100000.00)
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario) VALUES (4, 'David', 'M', '2000/03/05', 50000.00)
INSERT INTO funcionario (codigo, nome, sexo, dt_nasc, salario) VALUES (5, 'Wesley', 'M', '2000/06/15', 8000.00)

# Inserts Tabela Departamento
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES (1, 'Departamento de Analistas', 1)
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES (2, 'Departamento de Gerenciamento', 2)
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES (3, 'Departamento de Direito', 3)
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES (4, 'Departamento de Programação', 4)
INSERT INTO departamento (codigo, descricao, cod_gerente) VALUES (5, 'Departamento de Processos', 5)

# Adicionando o cod_depto nos funcionários
UPDATE funcionario SET cod_depto = 1 WHERE codigo = 1;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 2;
UPDATE funcionario SET cod_depto = 3 WHERE codigo = 3;
UPDATE funcionario SET cod_depto = 4 WHERE codigo = 4;
UPDATE funcionario SET cod_depto = 5 WHERE codigo = 5;

# Inserts Tabela Projeto
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) 
VALUES (1, 'Análise de Sistemas', 'Projeto para ensinar como fazer a análise de sistemas de software', 1, 1, '2022/05/01', '2022/05/08')
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) 
VALUES (2, 'Gerenciamento de Sistemas', 'Projeto para ensinar como fazer a gerencia de sistemas de software', 2, 2, '2022/06/02', '2022/06/09')
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) 
VALUES (3, 'Gerenciamento de Dados de Sistemas', 'Projeto para ensinar como fazer a gerencia de dados guardados pelo software', 3, 3, '2022/07/03', '2022/07/10')
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) 
VALUES (4, 'Programando Sistemas de Software', 'Projeto para ensinar como fazer o desenvolvimento de um software', 4, 4, '2022/08/04', '2022/08/11')
INSERT INTO projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) 
VALUES (5, 'Gerenciando os Processos de Software', 'Projeto para ensinar como fazer o gerenciamento dos processos de desenvolvimento de um software', 5, 5, '2022/09/05', '2022/09/12')
