CREATE VIEW funcCaro (maiorSalario, codDep)
AS SELECT MAX(f.salario), d.codigo
FROM funcionario f, departamento d 
WHERE f.cod_depto = d.codigo
GROUP By d.codigo

SELECT f.nome, d.descricao
FROM funcionario f, departamento d, funcCaro fc
WHERE f.cod_depto = fc.codDep and f.salario = fc.maiorSalario AND d.codigo = fc.codDep
GROUP By f.nome
