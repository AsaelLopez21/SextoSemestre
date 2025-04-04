const Clientes = require("../models/clientes");

const clienteService = {
  getDataCliente: async () => {
    try {
      const clienteData = await Clientes.findAll();
      return { msg: null, data: clienteData };
    } catch (error) {
      return { msg: "Error", data: [] };
    }
  },
  addCliente: async (clienteData) => {
    try {
      const newClient = await Clientes.create(clienteData);
      return { msg: null, data: newClient };
    } catch (err) {
      console.error("Error en addCliente:", err);
      return { msg: "Error", data: [] };
    }
  },
  deleteCliente: async (id_cliente) => {
    try {
      const clienteToDelete = await Clientes.findByPk(id_cliente);
      if (!clienteToDelete) {
        return { msg: "Not found", data: [] };
      }
      await clienteToDelete.destroy();
      return { msg: "Cliente eliminado correctamente" };
    } catch (err) {
      console.error("Error en el servicio deleteCliente:", err);
      return { msg: "Error" };
    }
  },
};

module.exports = clienteService;
