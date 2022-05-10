SELECT f.nome, f.salario, d.descricao 
from funcionario f LEFT JOIN departamento d
ON f.cod_depto = d.codigo 
