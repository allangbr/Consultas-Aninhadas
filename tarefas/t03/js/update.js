const db = require('./db.js')

async function updateData() {
  await db.connect()

  const queryProjeto =
    'UPDATE projeto SET codResponsavel = $1 WHERE codResponsavel = $2'

  await db.query(queryProjeto, [2, 1])

  await db.end()

  console.log('Dados Atualizados!')
}

updateData()
