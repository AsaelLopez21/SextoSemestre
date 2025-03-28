const { response } = require("express");
const homeService = require("../services/homeService");

//!es un objeto
const homeController = {
  getHome: async (req, response) => {
    try {
      const data = await homeService.getDataHome();
      // console.log(data.data);
      if (!response.msg) {
        //!indicar nombre y donde esta la vista que deseo mostrar,
        return response.render("home/indexHome", {
          title: "Bienvenido a la página principal de express",
          productos: data.data,
        });
      }
      return response.render("Error404", {
        title: "Error 404",
        error: data.msg,
      });
    } catch (error) {
      console.log(error);
    }
  },
  addHome: (req, response) => {
    return response.send("addHome");
  },
  getById: async (req, response) => {
    try {
      const { id } = req.params;
      const resp = await homeService.getById(id);
      response.send(`ID:${id} - producto: ${resp.data.nombre}`);
      console.log(resp);
      // response.render("home/show",{title:'Show product',producto:resp.data[0]}  );
    } catch (error) {
      response.send(`Error: ${error}`);
    }
  },
};

module.exports = homeController;
