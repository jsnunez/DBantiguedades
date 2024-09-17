drop database antiguedades;
create database antiguedades;

use antiguedades;

-- Tabla de Roles
CREATE TABLE Roles (
    rol_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);
-- Tabla de Perfiles 
CREATE TABLE Perfiles (
    perfil_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL

);

-- Tabla de Usuarios
CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL, -- La contraseña debe almacenarse de forma encriptada
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    rol_id INT,
    perfil_id INT,
    FOREIGN KEY (perfil_id) REFERENCES perfiles(perfil_id),

    FOREIGN KEY (rol_id) REFERENCES Roles(rol_id)
);


-- Tabla de Categorías
CREATE TABLE Categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);
-- Tabla de epoca

CREATE TABLE epoca (
    epoca_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);
-- Tabla de origen

CREATE TABLE origen (
    origen_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de estatus

CREATE TABLE estatus (
    estatus_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);
-- Tabla de Antigüedades
CREATE TABLE Antiguedades (
    antiguedad_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    categoria_id INT,
    epoca_id INT,
    origen_id INT,
    estado_conservacion VARCHAR(50),
    precio DECIMAL(10, 2) NOT NULL,
    fecha_publicacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    estatus_id INT,
    visitas INT DEFAULT 0,  
    FOREIGN KEY (estatus_id) REFERENCES estatus(estatus_id),
    FOREIGN KEY (origen_id) REFERENCES origen(origen_id),
    FOREIGN KEY (epoca_id) REFERENCES epoca(epoca_id),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id)
);

-- Tabla de Fotos de Antigüedades
CREATE TABLE FotosAntiguedades (
    foto_id INT PRIMARY KEY AUTO_INCREMENT,
    antiguedad_id INT,
    url_foto VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) ,
    FOREIGN KEY (antiguedad_id) REFERENCES Antiguedades(antiguedad_id)
);


-- Tabla de Categorías
CREATE TABLE estadoTransaccion (
    estado_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);
-- Tabla de Transacciones
CREATE TABLE Transacciones (
    transaccion_id INT PRIMARY KEY AUTO_INCREMENT,
    antiguedad_id INT,
    comprador_id INT,
    vendedor_id INT, -- Ahora el vendedor se coloca en esta tabla
    fecha_transaccion DATETIME DEFAULT CURRENT_TIMESTAMP,
    precio_final DECIMAL(10, 2) NOT NULL,
    estado_id INT,
    FOREIGN KEY (estado_id) REFERENCES estadoTransaccion(estado_id),
    FOREIGN KEY (antiguedad_id) REFERENCES Antiguedades(antiguedad_id),
    FOREIGN KEY (comprador_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (vendedor_id) REFERENCES Usuarios(usuario_id)
);



-- Tabla de Inventario
CREATE TABLE Inventario (
    inventario_id INT PRIMARY KEY AUTO_INCREMENT,
    antiguedad_id INT,
    cantidad_disponible INT DEFAULT 1,
    ubicacion VARCHAR(255),
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (antiguedad_id) REFERENCES Antiguedades(antiguedad_id)
);

-- Tabla de Historial de Precios
CREATE TABLE HistorialPrecios (
    historial_precio_id INT PRIMARY KEY AUTO_INCREMENT,
    antiguedad_id INT,
    precio_anterior DECIMAL(10, 2),
    precio_actual DECIMAL(10, 2),
    fecha_cambio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (antiguedad_id) REFERENCES Antiguedades(antiguedad_id)
);




-- Tabla de Consultas de Antigüedades
CREATE TABLE ConsultasAntiguedades (
    consulta_id INT PRIMARY KEY AUTO_INCREMENT,
    antiguedad_id INT,
    usuario_id INT,
    fecha_consulta DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (antiguedad_id) REFERENCES Antiguedades(antiguedad_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);


