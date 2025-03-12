//importar nuestro framework
const express = require("express");
const router = express.Router();

//rutas de home
//recibe una ruta y callback, callback recibe request y response

router.get("/", (req, response) => {
  //!indicar nombre y donde esta la vista que deseo mostrar, 
  response.render('home/indexHome')
});

router.post("/", (req, response) => {
  response.send("mensaje de post");
});

router.put("/", (req, response) => {
  response.send("mensaje de put");
});

router.delete("/", (req, response) => {
  response.send("mensaje de delete");
});

//exportar las rutas que tienen que ver con el home
module.exports = router;
