(async () => {
  const database = require('./db')
  const Funcionario = require('./funcionario')
  const Departamento = require('./departamento')
  const Projeto = require('./projeto')
  const Atividade = require('./atividade')
  await Funcionario.sync({ force: true });
  await Departamento.sync();
  await Projeto.sync();
  await Atividade.sync();
})()
