//todo: necesito el modelo
const Productos = require("../models/productos");

const homeService = {
  //!aqui va la base de datos
  getDataHome: async () => {
    //!async porque estamos recuperando datos de la base de datos
    console.log('holagetbyid');

    try {
      const data = await Productos.findAll(); //info: select * from usuarios;
      return { msg: null, data:data }; //*regresar un objeto
    } catch (error) {
      return { msg: "ERROR", data: [] }; //*al ser un error la data sera null
    }
  },
  addItem: (req, response) => {},
  getById: async (id) => {
    console.log('holagetbyid');

    try {
      const product = await Productos.findAll({
        where: {
          id_producto: id,
        },
      });
      console.log('todo bien');
      return { msg: null, data: product[0] };
    } catch (error) {
      console.log('todo mal');

      return { msg: "ERROR", data: [] };
    }
  },
};

module.exports = homeService;
