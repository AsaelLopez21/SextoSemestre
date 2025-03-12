const express = require('express')
//Traer las rutas
const routes = require('./routes')
const morgan = require('morgan')//info: ver las peticiones hechas al servidor
const path = require('path') //info:obtener las rutas de forma dinamica
const app = express()
//que es protocolo http
//metodos del protocolo http
//cuales son y para que sirven

//configuraciones, no es middleware, estoy diciendo que motor de vistas voy a usar
app.set('view engine','ejs')
app.set('views',path.join(__dirname,'views')) //info:obteniendo de forma dinamica la ruta de la carpeta views
app.set('views','./views');

//middleware
app.use('/',routes)
app.use(morgan('combined'))
app.use(express.static(path.join(__dirname,'static'))) //info:buscando la carpeta static

//puerto para levantar el servidor
app.listen(3000, () => {
  console.log(`Servidor: http://localhost:3000`);
})
//!Instalar nodemon para no reiniciar el servidor cada vez que se hace algun cambio
