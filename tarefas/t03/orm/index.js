(async () => {
  const Funcionario = require('./funcionario')
  const Departamento = require('./departamento')
  const Projeto = require('./projeto')
  const Atividade = require('./atividade')
  await Funcionario.sync()
  await Departamento.sync()
  await Projeto.sync()
  await Atividade.sync()

  const newAtividade = Atividade.create({
    descricao: 'ES - Atividade 3',
    codProjeto: 4,
    dataInicio: '2021-09-30',
    dataFim: '2021-10-30'
  })

  const attProjeto = Projeto.update(
    { codResponsavel: 2 },
    {
      where: {
        codResponsavel: 1
      }
    }
  )
})()
