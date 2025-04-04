CREATE DATABASE IF NOT EXISTS punto_venta;

USE punto_venta;

-- Eliminar tabla si existe
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS productos;

CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT,
    precio DECIMAL(10,2),
    stock INTEGER
);

CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente TEXT NOT NULL,
    correo TEXT,
    telefono TEXT,
    direccion TEXT
);

-- Insertar datos en la tabla clientes
INSERT INTO clientes (nombre_cliente, correo, telefono, direccion)
VALUES
('Juan Pérez', 'juan.perez@example.com', '1234567890', 'Calle Principal 123'),
('María Rodríguez', 'maria.rodriguez@example.com', '9876543210', 'Avenida Secundaria 456'),
('Carlos López', 'carlos.lopez@example.com', '5551234567', 'Calle Tercera 789'),
('Ana García', 'ana.garcia@example.com', '7778901234', 'Paseo Cuarto 901'),
('Pedro Martínez', 'pedro.martinez@example.com', '9991112223', 'Calle Quinta 234');
INSERT INTO productos (nombre, precio, stock)
VALUES
('iPhone 14', 999.99, 50),
('Samsung Galaxy S23', 899.99, 75),
('MacBook Air', 1299.99, 30),
('HP Pavilion Gaming', 799.99, 40),
('Canon EOS 80D', 699.99, 20),
('Sony PlayStation 5', 499.99, 60),
('Xbox Series X', 599.99, 45),
('Dell Inspiron 15', 699.99, 35),
('Asus ROG Zephyrus', 1499.99, 15),
('Nikon D5600', 599.99, 25);

