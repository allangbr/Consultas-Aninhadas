const { Sequelize, Model } = require('sequelize')
const Funcionario = require('./funcionario')
const Departamento = require('./departamento')
const sequelize = new Sequelize('postgres', 'postgres', 'postgres', {
  dialect: 'postgres',
  host: 'localhost'
})

class Projeto extends Model {}

Projeto.init(
  {
    codigo: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    nome: Sequelize.STRING(50),
    descricao: Sequelize.STRING(250),
    codResponsavel: {
      type: Sequelize.INTEGER,
      references: {
        model: Funcionario,
        key: 'codigo',
        deferrable: Sequelize.Deferrable.INITIALLY_IMMEDIATE
      }
    },
    codDepto: {
      type: Sequelize.INTEGER,
      references: {
        model: Departamento,
        key: 'codigo',
        deferrable: Sequelize.Deferrable.INITIALLY_IMMEDIATE
      }
    },
    dataInicio: Sequelize.DATEONLY,
    dataFim: Sequelize.DATEONLY
  },
  { 
    sequelize,
    timestamps: false,
  }
)

module.exports = Projeto
