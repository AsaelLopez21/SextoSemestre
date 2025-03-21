const homeService = require("../services/homeService");


//!es un objeto
const homeController = {
  getHome: (req, response) => {
    const data = homeService.getDataHome();

    //!indicar nombre y donde esta la vista que deseo mostrar,
    response.render("home/indexHome", {
      title: "Bienvenido a la página principal de express",
      productos:data,
    });
  },
  addHome:(req, response)=>{
    return response.send("addHome");
  }
};

module.exports = homeController;
