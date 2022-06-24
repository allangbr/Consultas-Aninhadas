const db = require('./db.js');

async function insertData(){
  await db.connect();

  const queryAtividade = "INSERT INTO atividade (descricao, codProjeto, dataInicio, dataFim) VALUES ($1, $2, $3, $4)"

  await db.query(queryAtividade, ['APF - Atividade 6', 2, '2021-09-30', '2021-10-30'])

  await db.end();

  console.log("Dados Inseridos!");
}

insertData()