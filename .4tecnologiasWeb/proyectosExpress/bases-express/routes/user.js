const express = require("express");
const router = express.Router();

//rutas de usuarios
router.get("/", (req, response) => {
  response.render("users/home_user",{title:'Hola usuarios'});
});

router.post("/", (req, response) => {
  response.send("mensaje de post usuarios");
});

router.put("/", (req, response) => {
  response.send("mensaje de put usuarios");
});

router.delete("/", (req, response) => {
  response.send("mensaje de delete usuarios");
}); 

module.exports = router;
