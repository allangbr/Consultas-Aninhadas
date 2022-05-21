#Tabela cliente (codigo, nome, endereco)

CREATE TABLE cliente (
  codigo INT AUTO_INCREMENT,
  nome VARCHAR(255),
  endereco VARCHAR(255),
  
  PRIMARY KEY(codigo)
);
 
#Tabela piloto (codigo, nome, num_voos)

CREATE TABLE piloto(
   codigo INT AUTO_INCREMENT,
   nome VARCHAR(255),
   num_voos INT,
   
   PRIMARY KEY(codigo)
);

#Tabela voo (codigo, tipo, piloto, num_passageiros, distancia)

CREATE TABLE voo(
  codigo INT AUTO_INCREMENT,
  tipo VARCHAR(255),
  codigo_piloto INT,
  num_passageiros INT,
  distancia DECIMAL(10,2),
  
  PRIMARY KEY(codigo),
  FOREIGN KEY(codigo_piloto) REFERENCES piloto(codigo)
);

#Tabela milhas (cliente, quantidade)

CREATE TABLE milhas(
  codigo_cliente INT,
  quantidade INT,
  
  PRIMARY KEY(codigo_cliente),
  FOREIGN KEY(codigo_cliente) REFERENCES cliente(codigo)
);

#Tabela cliente_voo (cliente, voo, classe)

CREATE TABLE cliente_voo (
  codigo_cliente INT,
  codigo_voo INT,
  classe VARCHAR(100),
  
  PRIMARY KEY(codigo_cliente, codigo_voo),
  FOREIGN KEY(codigo_cliente) REFERENCES cliente(codigo),
  FOREIGN KEY(codigo_voo) REFERENCES voo(codigo)
);