CREATE TRIGGER add_passageiro AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE voo v
SET num_passageiros = num_passageiros + 1
WHERE v.codigo = NEW.codigo_voo;

# Inserindo um cliente
INSERT INTO cliente (nome, endereco) VALUES ('Allan', 'Parelhas');

# Inserindo um Piloto
INSERT INTO piloto (nome, num_voos) VALUES ('Osvaldo', 0);

# Inserindo um voo
INSERT INTO voo (tipo, codigo_piloto, num_passageiros, distancia) VALUES ('Fretado', 1, 0, 300.00);

# Inserindo o cliente ao voo
INSERT INTO cliente_voo (codigo_cliente, codigo_voo, classe) VALUES (1, 1, 'Economica');
