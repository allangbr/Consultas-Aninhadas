CREATE TRIGGER addVoo AFTER 
INSERT ON voo 
FOR EACH ROW 
UPDATE piloto 
SET num_voos = num_voos + 1 
WHERE codigo = NEW.codigo_piloto; 

# Inserindo um Piloto
INSERT INTO piloto (nome, num_voos) VALUES ('Osvaldo', 0);

# Inserindo um voo
INSERT INTO voo (tipo, codigo_piloto, num_passageiros, distancia) VALUES ('Fretado', 1, 0, 300.00);