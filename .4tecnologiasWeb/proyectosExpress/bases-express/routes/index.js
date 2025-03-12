const express = require('express')
const homeRoutes = require('./home')
const userRoutes = require('./user')
const routes = express.Router()

routes.use('/',homeRoutes)
routes.use('/users',userRoutes)

module.exports = routes