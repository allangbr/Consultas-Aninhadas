const db = require('./db.js')

async function listData() {
  await db.connect()
  var result

  const queryLista =
    'SELECT p.nome, p.descricao, p.codDepto, p.codResponsavel, p.dataInicio, p.dataFim, a.descricao, a.codProjeto, a.dataInicio, a.dataFim FROM projeto as p, atividade as a WHERE a.codProjeto = p.codigo'

  result = await db.query(queryLista)

  await db.end()

  console.log('LISTA: ');
  console.log(result.rows);
}

listData()


