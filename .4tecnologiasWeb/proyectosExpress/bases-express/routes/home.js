//importar nuestro framework
const express = require("express");
const router = express.Router();

//rutas de home
//recibe una ruta y callback, callback recibe request y response

router.get("/", (req, response) => {
  const productos = [
    {
      nombre:'producto1',
      precio:100
    },
    {nombre:'producto2',
      precio:200

    },
    {
      nombre:'producto3',
      precio:300
    },
    {
      nombre:'producto4',
      precio:400
    }
  ]

  //!indicar nombre y donde esta la vista que deseo mostrar, 
  response.render('home/indexHome',{titulo:'Bienvenido a la página principal de express', productos})
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
