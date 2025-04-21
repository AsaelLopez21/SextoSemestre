const {DataTypes, Model} = require('sequelize')
const sequelize = require('../database/database')

class Clientes extends Model{}

Clientes.init(
  {
    id_cliente: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    nombre_cliente: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    correo: DataTypes.TEXT,
    telefono: DataTypes.TEXT,
    direccion: DataTypes.TEXT,
  },
  {
    sequelize,
    modelName: "Clientes",
    timestamps: false,
  }
);

module.exports = Clientes