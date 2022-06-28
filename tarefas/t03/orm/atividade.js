const { Sequelize, Model } = require('sequelize')
const Projeto = require('./projeto')
const sequelize = new Sequelize('postgres', 'postgres', 'postgres', {
  dialect: 'postgres',
  host: 'localhost'
})

class Atividade extends Model {}

Atividade.init(
  {
    codigo: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    descricao: Sequelize.STRING(250),
    codProjeto: {
      type: Sequelize.INTEGER,
      references: {
        model: Projeto,
        key: 'codigo',
        deferrable: Sequelize.Deferrable.INITIALLY_IMMEDIATE
      }
    },
    dataInicio: Sequelize.DATEONLY,
    dataFim: Sequelize.DATEONLY,
  },
  { 
    sequelize,
    timestamps: false,
  }
)

module.exports = Atividade
