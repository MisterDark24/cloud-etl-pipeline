
-- Crear base de datos si no existe
CREATE DATABASE IF NOT EXISTS tienda_tecnologia;
USE tienda_tecnologia;

-- Tabla de países
CREATE TABLE IF NOT EXISTS paises (
    id_pais INT PRIMARY KEY,
    pais VARCHAR(100),
    codigo_pais CHAR(2)
);

-- Tabla de ciudades
CREATE TABLE IF NOT EXISTS ciudades (
    id_ciudad INT PRIMARY KEY,
    ciudad VARCHAR(100),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);

-- Tabla de sucursales
CREATE TABLE IF NOT EXISTS sucursales (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(100),
    id_ciudad INT,
    FOREIGN KEY (id_ciudad) REFERENCES ciudades(id_ciudad)
);

-- Tabla de categorías
CREATE TABLE IF NOT EXISTS categorias (
    id_categoria INT PRIMARY KEY,
    categoria VARCHAR(100)
);

-- Tabla de productos
CREATE TABLE IF NOT EXISTS productos (
    id_producto INT PRIMARY KEY,
    producto VARCHAR(100),
    descripcion TEXT,
    precio_unitario DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Tabla de clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    correo VARCHAR(150),
    telefono VARCHAR(50),
    id_pais INT,
    id_ciudad INT,
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais),
    FOREIGN KEY (id_ciudad) REFERENCES ciudades(id_ciudad)
);

-- Tabla de métodos de pago
CREATE TABLE IF NOT EXISTS metodos_pago (
    id_metodo_pago INT PRIMARY KEY,
    metodo_pago VARCHAR(100)
);

-- Tabla de ventas (encabezado)
CREATE TABLE IF NOT EXISTS ventas_encabezado (
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    id_sucursal INT,
    fecha_venta DATETIME,
    total DECIMAL(12,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal)
);

-- Tabla de líneas de venta
CREATE TABLE IF NOT EXISTS ventas_lineas (
    id_linea_venta INT PRIMARY KEY,
    id_venta INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    subtotal DECIMAL(12, 2),
    FOREIGN KEY (id_venta) REFERENCES ventas_encabezado(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- Tabla de pagos por venta
CREATE TABLE IF NOT EXISTS ventas_pagos (
    id_pago INT PRIMARY KEY,
    id_venta INT,
    id_metodo_pago INT,
    monto DECIMAL(12, 2),
    FOREIGN KEY (id_venta) REFERENCES ventas_encabezado(id_venta),
    FOREIGN KEY (id_metodo_pago) REFERENCES metodos_pago(id_metodo_pago)
);
