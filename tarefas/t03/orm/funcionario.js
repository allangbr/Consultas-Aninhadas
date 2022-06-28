const { Sequelize, Model } = require('sequelize')
const Departamento = require('./departamento')
const sequelize = new Sequelize('postgres', 'postgres', 'postgres', {
  dialect: 'postgres',
  host: 'localhost'
})

class Funcionario extends Model {}

Funcionario.init(
  {
    codigo: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      allowNull: false,
      primaryKey: true
    },
    nome: Sequelize.STRING,
    sexo: Sequelize.CHAR,
    dtNasc: Sequelize.DATEONLY,
    salario: Sequelize.DECIMAL(10, 2),
    codSupervisor: {
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
    }
  },
  { 
    sequelize,
    timestamps: false,
  }
)

module.exports = Funcionario
