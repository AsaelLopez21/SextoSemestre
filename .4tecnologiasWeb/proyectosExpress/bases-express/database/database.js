//!npm install --save sequelize
//!npm install --save mysql2
const {Sequelize} = require('sequelize');
require('dotenv').config

const sequelize = new Sequelize(process.env.DATABASE, process.env.DB_USER, process.env.PASSWORD, {
    host: process.env.DB_HOST,
    dialect: process.env.DB_DIALECT, 
    port: process.env.DB_PORT
});

sequelize.authenticate()
    .then(()=>console.log('conectado'))
    .catch((error)=>console.log({'error':error}));

module.exports = sequelize;

