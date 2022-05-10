CREATE VIEW atividadesFunc (codFunc, numAtiv)
AS SELECt f.codigo, COUNT(a.codigo)
FROm atividade a, funcionario f 
WHERE a.cod_responsavel = f.codigo
GROUP by f.codigo;

SELECT f.nome, af.numAtiv
FROM funcionario f,atividadesFunc af 
WHERE f.codigo = af.codFunc;
