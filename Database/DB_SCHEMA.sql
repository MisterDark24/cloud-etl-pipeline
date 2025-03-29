-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS final_proyect DEFAULT CHARACTER SET utf8mb4;
USE final_proyect;

-- Tabla: paises
CREATE TABLE paises (
    id_pais INT PRIMARY KEY,
    pais VARCHAR(100) NOT NULL
);

-- Tabla: ciudades
CREATE TABLE ciudades (
    id_ciudad INT PRIMARY KEY,
    ciudad VARCHAR(100) NOT NULL,
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);

-- Tabla: categorias
CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY,
    categoría VARCHAR(100) NOT NULL
);

-- Tabla: productos
CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    producto VARCHAR(100) NOT NULL,
    categoría VARCHAR(100),
    FOREIGN KEY (categoría) REFERENCES categorias(categoría)
);

-- Tabla: metodos_pago
CREATE TABLE metodos_pago (
    id_metodo_pago INT PRIMARY KEY,
    método_pago VARCHAR(100) NOT NULL
);

-- Tabla: clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    cliente VARCHAR(150) NOT NULL
);

-- Tabla: ventas
CREATE TABLE ventas (
    id_venta VARCHAR(50) PRIMARY KEY,
    fecha DATETIME,
    id_cliente INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    total DECIMAL(10,2),
    id_metodo_pago INT,
    id_ciudad INT,
    id_pais INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_metodo_pago) REFERENCES metodos_pago(id_metodo_pago),
    FOREIGN KEY (id_ciudad) REFERENCES ciudades(id_ciudad),
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);
