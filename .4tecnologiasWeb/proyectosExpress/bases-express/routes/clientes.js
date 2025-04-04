const express = require("express");
const clienteController = require("../controllers/clientesController");
const router = express.Router();

// Route to get all clients
router.get("/", async (req, res) => {
  try {
    await clienteController.mostrarFormulario(req, res); // Llamar correctamente la función con req y res
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Error interno del servidor" });
  }
});

router.post("/", async (req, res) => {
  console.log("Datos recibidos en la solicitud:", req.body); 

  try {
    const { nombre_cliente, correo, telefono, direccion } = req.body;

    const result = await clienteController.agregarCliente({
      nombre_cliente,
      correo,
      telefono,
      direccion,
    });

    if (result.msg === "Error") {
      return res.status(500).json({ message: result.msg });
    }

    return res.status(201).json(result.data);
  } catch (error) {
    console.error("Error al agregar el cliente:", error);
    return res.status(500).json({ message: "Error interno del servidor" });
  }
});

router.delete("/:id", async (req, res) => {
  try {
    const id_cliente = req.params.id;

    const result = await clienteController.eliminarCliente(id_cliente);

    if (result.msg === "Not found") {
      return res.status(404).json({ message: result.msg });
    } else if (result.msg === "Error") {
      return res.status(500).json({ message: result.msg });
    }

    return res.json({ message: result.msg });
  } catch (error) {
    console.error("Error en la ruta DELETE:", error);
    return res.status(500).json({ message: "Error interno del servidor" });
  }
});

module.exports = router;
