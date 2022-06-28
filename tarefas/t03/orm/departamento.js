const { Sequelize, Model } = require('sequelize')
const sequelize = new Sequelize('postgres', 'postgres', 'postgres', {
  dialect: 'postgres',
  host: 'localhost'
})
const Funcionario = require('./funcionario')

class Departamento extends Model {}

Departamento.init(
  {
    codigo: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    sigla: Sequelize.STRING(10),
    descricao: Sequelize.STRING(50),
    codGerente: {
      type: Sequelize.INTEGER,
      references: {
        model: Funcionario,
        key: 'codigo',
        deferrable: Sequelize.Deferrable.INITIALLY_IMMEDIATE
      }
    }
  },
  { 
    sequelize,
    timestamps: false,
  }
)

module.exports = Departamento
