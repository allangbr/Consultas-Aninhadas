# Table Funcionario
CREATE TABLE funcionario(
  codigo INT NOT NULL, 
  nome varchar(50), 
  sexo CHAR, 
  dt_nasc DATE, 
  salario DECIMAL(10,2), 
  
  Primary Key(codigo)
)

#Table Departamento
CREATE TABLE departamento(
  codigo int not NULL, 
  descricao VARCHAR(200), 
  cod_gerente int not NULL,
  
  PRIMARY KEY(codigo),
  FOREIGN KEy(cod_gerente) REFERENCES funcionario(codigo)
)

#Adicionando a chave estrangeira do departamento na tabela funcionário
ALTER TABLE funcionario ADD COLUMN cod_depto
Alter TABLE funcionario ADD FOREIGN KEY(cod_depto) REFERENCES departamento(codigo) 

#Table Projeto
CREATE TABLE projeto (
  codigo int not NULL, 
  nome VARCHAR(50), 
  descricao VARCHAR(200), 
  cod_depto INT, 
  cod_responsavel int, 
  data_inicio DATE, 
  data_fim DATE,
  
  PRIMARY KEY(codigo),
  FOREIGN KEY(cod_depto) REFERENCES departamento(codigo), 
  FOREIGN KEy(cod_responsavel) REFERENCES funcionario(codigo)
)

#Table Atividade
create table atividade(
  codigo int not NULL, 
  nome VARCHAR(50), 
  descricao VARCHAR(200), 
  cod_responsavel INT, 
  data_inicio DATE, 
  data_fim DATE,

  PRIMARY key(codigo),
  FOREIGN KEy(cod_responsavel) REFERENCES funcionario(codigo)
)

#Table Atividade_Projeto
CREATE TABLE atividade_projeto(
  cod_projeto INT NOT NULL, 
  cod_atividade INT NOT NULL,

  PRIMARY KEY(cod_projeto, cod_atividade),
  FOREIGN KEY(cod_projeto) REFERENCES projeto(codigo),
  FOREIGN KEY(cod_atividade) REFERENCES atividade(codigo)
)
