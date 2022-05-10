CREATE VIEW oldest (dtNasc)
AS SELECT MIN(dt_nasc) 
FROM funcionario;

SELECT f.nome
FROM funcionario f, oldest o 
WHERE f.dt_nasc > o.dtNasc;
