CREATE TRIGGER add_passageiro AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE voo v
SET num_passageiros = num_passageiros + 1;
WHERE v.codigo = NEW.codigo_voo;