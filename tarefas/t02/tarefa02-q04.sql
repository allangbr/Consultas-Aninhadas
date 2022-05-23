CREATE TRIGGER addMilhas AFTER 
INSERT ON cliente 
FOR EACH ROW 
INSERT INTO milhas (codido_cliente, quantidade) VALUES (NEW.codigo, 0); 

# Inserindo um cliente
INSERT INTO cliente (nome, endereco) VALUES ('Allan', 'Parelhas');