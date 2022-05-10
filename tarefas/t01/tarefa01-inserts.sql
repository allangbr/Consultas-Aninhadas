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
