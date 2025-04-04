require('dotenv').config()
const express = require('express')

//Traer las rutas
const routes = require('./routes')
const morgan = require('morgan')//info: ver las peticiones hechas al servidor
const path = require('path') //info:obtener las rutas de forma dinamica
const express_layout = require('express-ejs-layouts') //!layout
const app = express()
const sequelize = require('./database/database');//! base de datos usando sequelize 
//! const productos = require('./models/productos')

//que es protocolo http
//metodos del protocolo http
//cuales son y para que sirven

//configuraciones, no es middleware, estoy diciendo que motor de vistas voy a usar
app.set('view engine','ejs')
app.set('views',path.join(__dirname,'views')) //info:obteniendo de forma dinamica la ruta de la carpeta views
app.set('views','./views');
app.set('layout','layouts/layout') //!usando layout

//middleware
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express_layout)//!layout
app.use('/',routes)
app.use(morgan('combined'))
app.use(express.static(path.join(__dirname,'static'))) //info:buscando la carpeta static
sequelize.sync()
.then(()=>console.log('sincronizado'))
.catch((error)=>console.log({'error':error}));


//puerto para levantar el servidor
// console.log("nada?",process.env)
app.listen(3000, () => {
  console.log(`Servidor: http://localhost:3000`);
})
//!Instalar nodemon para no reiniciar el servidor cada vez que se hace algun cambio



//!notas segundo parcial
//?dotenv ->npm i dotenv