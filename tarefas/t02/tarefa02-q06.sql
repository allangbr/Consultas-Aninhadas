CREATE TRIGGER somaMilhas AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE milhas 
SET quantidade = quantidade + 
  (SELECT distancia 
  FROM voo, cliente_voo 
  WHERE NEW.codigo_voo = voo.codigo
  ) / 10
WHERE codigo_cliente = new.codigo_cliente;

# Inserindo um cliente
INSERT INTO cliente (nome, endereco) VALUES ('Allan', 'Parelhas');

# Inserindo um Piloto
INSERT INTO piloto (nome, num_voos) VALUES ('Osvaldo', 0);

# Inserindo um voo
INSERT INTO voo (tipo, codigo_piloto, num_passageiros, distancia) VALUES ('Fretado', 1, 0, 300.00);

# Inserindo o cliente ao voo
INSERT INTO cliente_voo (codigo_cliente, codigo_voo, classe) VALUES (1, 1, 'Economica');