//!npm install --save sequelize
//!npm install --save mysql2
const {Sequelize} = require('sequelize');

const sequelize = new Sequelize('punto_venta', 'postgres', 'novauniversitas', {
    host: 'localhost',
    dialect:'postgres', 
    port: '5432'
});

sequelize.authenticate()
    .then(()=>console.log('conectado'))
    .catch((error)=>console.log({'error':error}));

module.exports = sequelize;

