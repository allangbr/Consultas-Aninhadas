# Cadastrando cartão de milhagem para o cliente 1
INSERT INTO milhas (codigo_cliente, quantidade) VALUES (1,  1);

CREATE TRIGGER addUpdateCard AFTER
UPDATE ON cliente
FOR EACH ROW 
INSERT INTO milhas (codigo_cliente, quantidade) VALUES (OLD.codigo, 0) ;

# Atualizando o cliente 1
UPDATE cliente 
SET endereco = "Caico"
WHERE cliente.codigo = 1;

# Após a atualização dos dados do cliente, ele possuirá um novo cartão.