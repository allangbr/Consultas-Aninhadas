CREATE VIEW responsavelGerente(responsavelGer)
AS SELECT f.codigo 
from funcionario f
WHERE f.codigo IN (SELECT cod_responsavel from projeto);

SELECT f.nome
from funcionario f JOIN responsavelGerente rg ON f.codigo = rg.responsavelGer 
and f.codigo in (SELECt cod_gerente from departamento)
or f.codigo = rg.responsavelGer 
AND f.salario > (
  SELECT f.salario from funcionario f, departamento d
  WHERE f.codigo = f.cod_depto
  group by f.salario
);
