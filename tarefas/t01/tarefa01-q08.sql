CREATE VIEW numProj (departamento, gerente, numProjetos)
AS SELECT d.descricao, f.nome, COUNT(p.cod_depto)
FROM departamento d LEFT JOIN projeto p ON d.codigo = p.cod_depto
LEFT JOIN funcionario f ON f.codigo = p.cod_responsavel
GROUP BY d.descricao;

SELECT * from numProj
