const {DataTypes,Model} = require('sequelize')//!para establecer los tipos de datos
const sequelize = require('../database/database')

class Products extends Model{}

Products.init(
    {
        id_producto:{
            type:DataTypes.INTEGER,
            primaryKey:true,
            autoIncrement:true,
            allowNull:true
        },
        nombre: DataTypes.TEXT,
        precio:DataTypes.DECIMAL(10,2),
        stock:DataTypes.INTEGER
    },//!recibe tipos de datos que corresponden a la tabla
    {
        sequelize,modelName:'Products',tableName:'productos',timestamps:false
    }
); //!opciones de configuracion

console.log(Products === sequelize.models.Products); //!verificar si se ha creado el modelo
module.exports = Products; //!exportar el modelo