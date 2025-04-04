const express = require('express')
const homeRoutes = require('./home')
const clientesRoutes = require('./clientes')
const routes = express.Router()

routes.use('/',homeRoutes)
routes.use('/clientes',clientesRoutes)

module.exports = routes