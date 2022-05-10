SELECT p.nome, p.data_inicio, p.data_fim, a.descricao, a.data_inicio, a.data_fim
from projeto p, atividade a, atividade_projeto ap
WHERE p.codigo = ap.cod_projeto and a.codigo = ap.cod_atividade
