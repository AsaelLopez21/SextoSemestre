const homeService = {
  //!aqui va la base de datos
  getDataHome: () => {
    const productos = [
      {
        nombre: "producto1",
        precio: 100,
      },
      { nombre: "producto2", precio: 200 },
      {
        nombre: "producto3",
        precio: 300,
      },
      {
        nombre: "producto4",
        precio: 400,
      },
    ];
    return productos;
  },
  addItem: (req, response) => {},
};

module.exports = homeService;
