SELECT f.nome, f.salario, f.cod_depto
FROM funcionario f
WHERE f.codigo NOT IN (SELECT cod_gerente FROM departamento)
ORDER by f.cod_depto;
