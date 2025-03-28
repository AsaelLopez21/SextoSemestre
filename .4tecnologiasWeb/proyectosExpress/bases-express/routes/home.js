//importar nuestro framework
const express = require("express");
const router = express.Router();
const homeController = require('../controllers/homeController')

//rutas de home
//recibe una ruta y callback, callback recibe request y response

router.get("/", (req, response) => homeController.getHome(req,response));

router.post("/", homeController.addHome);

router.put("/", (req, response) => {
  response.send("mensaje de put");
});

router.delete("/", (req, response) => {
  response.send("mensaje de delete");
});

router.get('/:id(\\d+)', homeController.getById);

//exportar las rutas que tienen que ver con el home
module.exports = router;
