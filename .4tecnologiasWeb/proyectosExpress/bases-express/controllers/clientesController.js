const clienteService = require("../services/clienteService");

const clienteController = {
  mostrarFormulario: async (req, res) => {
    try {
      const data = await clienteService.getDataCliente();
      if (!data.msg) {
        return res.render("client/clientes", {
          title: "Bienvenido a la página principal de express",
          clientes: data.data,
        });
      }
      return res.render("Error404", {
        title: "Error 404",
        error: data.msg,
      });
    } catch (error) {
      console.error(error);
      return res.status(500).render("Error404", {
        title: "Error 500",
        error: "Error interno del servidor",
      });
    }
  },

  agregarCliente: async (clienteData) => {
    try {
      const newClient = await clienteService.addCliente(clienteData);

      if (newClient.msg === "Error") {
        return { msg: newClient.msg, data: [] };
      }

      return { msg: null, data: newClient.data };
    } catch (error) {
      console.error("Error en agregarCliente:", error);
      return { msg: "Error", data: [] };
    }
  },

  mostrarClientes: async (req, res) => {
    try {
      const clientes = await clienteService.getDataCliente();

      return res.render("clientes/lista-clientes", {
        title: "Lista de Clientes",
        clientes: clientes.data,
      });
    } catch (error) {
      console.error("Error al mostrar clientes:", error);
      return res.status(500).render("Error404", {
        title: "Error 500",
        error: "Error interno del servidor",
      });
    }
  },

  eliminarCliente: async (id_cliente) => {
    try {
      const clienteToDelete = await clienteService.deleteCliente(id_cliente);
      if (clienteToDelete.msg === "Not found") {
        return { msg: "Not found" };
      }
      return { msg: "Cliente eliminado correctamente" };
    } catch (error) {
      console.error("Error al eliminar el cliente:", error);
      return { msg: "Error" };
    }
  },

  mostrarFormularioEditar: async (req, res) => {
    try {
      const { id_cliente } = req.params;
      const cliente = await clienteService.getDataClienteById(id_cliente);

      return res.render("clientes/edit-cliente", {
        title: "Editar Cliente",
        cliente: cliente.data,
      });
    } catch (error) {
      console.error("Error al mostrar formulario de edición:", error);
      return res.status(500).render("Error404", {
        title: "Error 500",
        error: "Error interno del servidor",
      });
    }
  },

  editarCliente: async (req, res) => {
    try {
      const { id_cliente } = req.params;
      const { nombre_cliente, correo, telefono, direccion } = req.body;

      await clienteService.updateCliente(id_cliente, {
        nombre_cliente,
        correo,
        telefono,
        direccion,
      });

      return res.redirect("/clientes");
    } catch (error) {
      console.error("Error al editar el cliente:", error);
      return res.status(500).render("Error404", {
        title: "Error 500",
        error: "Error interno del servidor",
      });
    }
  },
};

module.exports = clienteController;
