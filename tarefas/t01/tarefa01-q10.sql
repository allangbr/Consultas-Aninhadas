CREATE view depFuncionario (departamento, codDepartamento)
AS SELECT d.descricao, d.codigo
FROM departamento d LEFT JOIN funcionario f on d.cod_gerente = f.codigo;

SELECT p.nome, d.descricao, f.nome, df.departamento
FROM projeto p RIGHT JOIN departamento d ON p.cod_depto = d.codigo
LEFT JOIN funcionario f on p.cod_responsavel = f.codigo
RIGHT JOIN depFuncionario df on d.codigo = df.codDepartamento;
