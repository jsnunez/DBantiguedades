-- Insertar Roles
INSERT INTO Roles (nombre) VALUES 
('Administrador'),
('Vendedor'),
('Comprador');

-- Insertar Perfiles
INSERT INTO Perfiles (nombre) VALUES 
('Perfil A'),
('Perfil B'),
('Perfil C');

-- Insertar Usuarios con fechas de registro variadas
INSERT INTO Usuarios (nombre, correo, contraseña, direccion, telefono, fecha_registro, rol_id, perfil_id) VALUES 
('Adriana Silva', 'adriana.silva@example.com', 'password123', 'Calle del Viento 15', '555-1122', '2024-08-10 09:30:00', 2, 1),
('Enrique Ramos', 'enrique.ramos@example.com', 'password123', 'Avenida del Mar 23', '555-2233', '2024-07-25 11:45:00', 3, 2),
('Beatriz García', 'beatriz.garcia@example.com', 'password123', 'Plaza del Sol 6', '555-3344', '2024-09-05 14:20:00', 1, 3),
('Ricardo Méndez', 'ricardo.mendez@example.com', 'password123', 'Calle del Lago 8', '555-4455', '2024-08-22 08:15:00', 2, 1),
('Claudia Castro', 'claudia.castro@example.com', 'password123', 'Calle del Río 4', '555-5566', '2024-09-01 10:00:00', 3, 2),
('Manuel Ortega', 'manuel.ortega@example.com', 'password123', 'Avenida de los Olivos 20', '555-6677', '2024-07-30 16:25:00', 1, 3),
('Verónica Morales', 'veronica.morales@example.com', 'password123', 'Calle de la Fuente 12', '555-7788', '2024-08-18 12:40:00', 2, 1),
('Hugo Vargas', 'hugo.vargas@example.com', 'password123', 'Plaza de la Luna 9', '555-8899', '2024-09-10 15:55:00', 1, 2),
('Camila Fernández', 'camila.fernandez@example.com', 'password123', 'Calle del Sol 3', '555-9900', '2024-08-12 09:00:00', 3, 3),
('Carlos Morales', 'carlos.morales@example.com', 'password123', 'Avenida del Norte 5', '555-1010', '2024-07-28 13:30:00', 2, 2),
('Laura López', 'laura.lopez@example.com', 'password123', 'Calle de la Nieve 7', '555-2020', '2024-09-12 14:00:00', 3, 1),
('Jorge Martínez', 'jorge.martinez@example.com', 'password123', 'Avenida del Valle 22', '555-3030', '2024-08-25 16:30:00', 1, 3),
('Ana Pérez', 'ana.perez@example.com', 'password123', 'Calle del Arte 10', '555-4040', '2024-09-05 09:00:00', 2, 1),
('Pedro Jiménez', 'pedro.jimenez@example.com', 'password123', 'Plaza de la Cultura 8', '555-5050', '2024-08-15 10:30:00', 3, 2),
('Marta Hernández', 'marta.hernandez@example.com', 'password123', 'Calle del Reloj 12', '555-6060', '2024-09-10 11:45:00', 1, 3),
('Antonio Gil', 'antonio.gil@example.com', 'password123', 'Avenida de las Artes 3', '555-7070', '2024-08-20 13:00:00', 2, 1),
('María González', 'maria.gonzalez@example.com', 'password123', 'Calle del Viento 17', '555-8080', '2024-09-08 15:30:00', 3, 2),
('Sergio Ruiz', 'sergio.ruiz@example.com', 'password123', 'Plaza del Sol 5', '555-9090', '2024-08-18 16:00:00', 1, 3);

-- Insertar Categorías
INSERT INTO Categorias (nombre) VALUES 
('Muebles'),
('Relojes'),
('Joyería'),
('Pinturas'),
('Esculturas');

-- Insertar Épocas
INSERT INTO epoca (nombre) VALUES 
('Barroco'),
('Renacimiento'),
('Rococó'),
('Victoriana'),
('Moderno');

-- Insertar Orígenes
INSERT INTO origen (nombre) VALUES 
('Francia'),
('Inglaterra'),
('España'),
('Italia'),
('Alemania');

-- Insertar Estatus
INSERT INTO estatus (nombre) VALUES 
('Disponible'),
('Vendida'),
('Reservada'),
('En Restauración');

-- Insertar Antigüedades con fechas variadas
INSERT INTO Antiguedades (nombre, descripcion, categoria_id, epoca_id, origen_id, estado_conservacion, precio, fecha_publicacion, estatus_id, visitas) VALUES 
('Mueble de Época Victoriana', 'Mueble clásico de la época victoriana.', 1, 4, 2, 'Bueno', 1800.00, '2024-08-15 10:00:00', 1, 55),
('Reloj de Bolsillo Antiguo', 'Reloj de bolsillo con detalles en oro.', 2, 2, 3, 'Muy Bueno', 2500.00, '2024-07-30 12:30:00', 1, 45),
('Broche de Rubíes', 'Broche antiguo con rubíes y diamantes.', 3, 3, 1, 'Excelente', 3200.00, '2024-09-01 14:00:00', 1, 65),
('Cuadro de la Escuela Española', 'Cuadro de la escuela española del siglo XVIII.', 4, 5, 4, 'Bueno', 2700.00, '2024-08-20 11:00:00', 1, 38),
('Escultura de Bronce Moderno', 'Escultura de bronce de estilo moderno.', 5, 5, 5, 'Excelente', 3300.00, '2024-09-05 09:15:00', 1, 22),
('Sillón Barroco', 'Sillón con estilo barroco restaurado.', 1, 2, 4, 'Muy Bueno', 950.00, '2024-08-10 10:30:00', 1, 50),
('Pendientes de Perlas', 'Pendientes antiguos con perlas auténticas.', 3, 3, 2, 'Bueno', 1500.00, '2024-09-02 12:00:00', 1, 60),
('Mesa de Comedor Antigua', 'Mesa de comedor de madera de cerezo.', 1, 4, 3, 'Bueno', 2000.00, '2024-07-28 16:45:00', 1, 42),
('Relieve de Madera', 'Relieve tallado en madera del siglo XIX.', 5, 1, 1, 'Excelente', 2800.00, '2024-08-30 08:00:00', 1, 25),
('Jarrón de Vidrio Antiguo', 'Jarrón de vidrio tallado con detalles dorados.', 1, 2, 5, 'Muy Bueno', 650.00, '2024-09-08 11:30:00', 1, 80),
('Mueble Luis XV', 'Mueble antiguo del estilo Luis XV.', 1, 3, 2, 'Bueno', 1200.00, '2024-08-25 10:00:00', 1, 40),
('Reloj de Pared Francés', 'Reloj de pared con caja de madera tallada.', 2, 1, 3, 'Muy Bueno', 2100.00, '2024-09-05 12:30:00', 1, 55),
('Anillo de Oro con Esmeralda', 'Anillo de oro con esmeralda incrustada.', 3, 4, 1, 'Excelente', 4000.00, '2024-08-15 14:00:00', 1, 70),
('Cuadro Impresionista', 'Cuadro de la escuela impresionista del siglo XIX.', 4, 5, 4, 'Bueno', 2200.00, '2024-09-10 09:15:00', 1, 30),
('Escultura de Mármol', 'Escultura clásica de mármol.', 5, 2, 2, 'Excelente', 3500.00, '2024-08-20 11:30:00', 1, 35),
('Sillón de la Edad Media', 'Sillón de la Edad Media restaurado.', 1, 1, 4, 'Muy Bueno', 800.00, '2024-09-01 10:00:00', 1, 65),
('Collar de Ámbar', 'Collar antiguo hecho de ámbar.', 3, 2, 3, 'Bueno', 1300.00, '2024-08-28 13:00:00', 1, 40),
('Candelabro de Bronce', 'Candelabro antiguo de bronce.', 1, 5, 5, 'Muy Bueno', 1800.00, '2024-09-03 15:30:00', 1, 45),
('Escultura de Hierro Forjado', 'Escultura moderna de hierro forjado.', 5, 4, 1, 'Excelente', 3000.00, '2024-08-12 14:00:00', 1, 55),
('Mueble Art Deco', 'Mueble con diseño Art Deco.', 1, 3, 2, 'Bueno', 2200.00, '2024-08-23 11:00:00', 1, 48),
('Espejo Veneciano', 'Espejo antiguo con marco veneciano.', 1, 2, 3, 'Muy Bueno', 1700.00, '2024-09-07 10:30:00', 1, 35),
('Cámara Fotográfica Antigua', 'Cámara fotográfica de la época victoriana.', 5, 1, 5, 'Excelente', 1400.00, '2024-08-18 16:45:00', 1, 60),
('Reloj de Sol Antiguo', 'Reloj de sol del siglo XIX.', 2, 4, 4, 'Bueno', 800.00, '2024-09-09 09:00:00', 1, 70),
('Piano de Madera', 'Piano antiguo de madera', 1, 3, 2, 'Bueno', 3500.00, '2024-08-27 12:00:00', 1, 30),
('Busto de Mármol', 'Busto clásico en mármol.', 5, 2, 1, 'Muy Bueno', 2800.00, '2024-09-02 11:30:00', 1, 40),
('Silla de Epoca Rusa', 'Silla antigua con diseño ruso.', 1, 4, 3, 'Excelente', 1000.00, '2024-08-29 13:00:00', 1, 50),
('Cuadro Moderno', 'Cuadro con estilo moderno.', 4, 5, 4, 'Bueno', 2000.00, '2024-09-06 15:00:00', 1, 60),
('Candelabro de Plata', 'Candelabro antiguo de plata.', 1, 3, 2, 'Muy Bueno', 2200.00, '2024-08-25 16:00:00', 1, 45),
('Jarrón de Porcelana', 'Jarrón antiguo de porcelana.', 1, 4, 5, 'Excelente', 1900.00, '2024-09-03 09:00:00', 1, 55),
('Reloj de Torre', 'Reloj antiguo de torre.', 2, 3, 4, 'Bueno', 1500.00, '2024-08-15 10:00:00', 1, 50),
('Tetera de Plata', 'Tetera antigua de plata.', 1, 5, 1, 'Muy Bueno', 1300.00, '2024-09-01 14:00:00', 1, 45);


INSERT INTO estadoTransaccion (nombre) VALUES ('Completa');
INSERT INTO estadoTransaccion (nombre) VALUES ('Pendiente');
INSERT INTO estadoTransaccion (nombre) VALUES ('Cancelada');
INSERT INTO estadoTransaccion (nombre) VALUES ('En Proceso');
INSERT INTO estadoTransaccion (nombre) VALUES ('Reembolsada');
-- Insertar Transacciones con fechas variadas
INSERT INTO Transacciones (antiguedad_id, comprador_id, vendedor_id, precio_final, estado_id, fecha_transaccion) VALUES 
(11, 5, 4, 1800.00, 1, '2024-08-15 10:00:00'),
(12, 3, 2, 2500.00, 2, '2024-07-30 12:30:00'),
(13, 7, 1, 3200.00, 1, '2024-09-01 14:00:00'),
(14, 8, 3, 2700.00, 1, '2024-08-20 11:00:00'),
(15, 6, 5, 3300.00, 1, '2024-09-05 09:15:00'),
(16, 2, 6, 950.00, 1, '2024-08-10 10:30:00'),
(17, 4, 3, 1500.00, 1, '2024-09-02 12:00:00'),
(18, 5, 2, 2000.00, 1, '2024-07-28 16:45:00'),
(19, 6, 8, 2800.00, 2, '2024-08-30 08:00:00'),
(20, 9, 4, 650.00, 1, '2024-09-08 11:30:00'),
(11, 1, 2, 1800.00, 1, '2024-08-15 10:00:00'),
(12, 6, 7, 2500.00, 2, '2024-07-30 12:30:00'),
(13, 2, 5, 3200.00, 1, '2024-09-01 14:00:00'),
(14, 9, 1, 2700.00, 1, '2024-08-20 11:00:00'),
(15, 3, 4, 3300.00, 1, '2024-09-05 09:15:00'),
(16, 5, 6, 950.00, 1, '2024-08-10 10:30:00'),
(17, 7, 2, 1500.00, 1, '2024-09-02 12:00:00'),
(18, 4, 3, 2000.00, 1, '2024-07-28 16:45:00'),
(19, 8, 5, 2800.00, 2, '2024-08-30 08:00:00'),
(20, 10, 6, 650.00, 1, '2024-09-08 11:30:00');

-- Insertar Inventario con fechas variadas
INSERT INTO Inventario (antiguedad_id, cantidad_disponible, ubicacion, fecha_actualizacion) VALUES 
(11, 3, 'Almacén C', '2024-08-15 10:00:00'),
(12, 2, 'Almacén D', '2024-07-30 12:30:00'),
(13, 4, 'Almacén C', '2024-09-01 14:00:00'),
(14, 1, 'Galería E', '2024-08-20 11:00:00'),
(15, 3, 'Exposición Principal', '2024-09-05 09:15:00'),
(16, 7, 'Almacén D', '2024-08-10 10:30:00'),
(17, 6, 'Galería F', '2024-09-02 12:00:00'),
(18, 4, 'Almacén C', '2024-07-28 16:45:00'),
(19, 2, 'Exposición Principal', '2024-08-30 08:00:00'),
(20, 8, 'Almacén D', '2024-09-08 11:30:00'),
(11, 2, 'Almacén B', '2024-08-15 10:00:00'),
(12, 3, 'Almacén C', '2024-07-30 12:30:00'),
(13, 5, 'Almacén B', '2024-09-01 14:00:00'),
(14, 2, 'Galería G', '2024-08-20 11:00:00'),
(15, 4, 'Exposición Principal', '2024-09-05 09:15:00'),
(16, 8, 'Almacén C', '2024-08-10 10:30:00'),
(17, 5, 'Galería H', '2024-09-02 12:00:00'),
(18, 3, 'Almacén B', '2024-07-28 16:45:00'),
(19, 1, 'Exposición Principal', '2024-08-30 08:00:00'),
(20, 6, 'Almacén D', '2024-09-08 11:30:00');

-- Insertar Historial de Precios con fechas variadas
INSERT INTO HistorialPrecios (antiguedad_id, precio_anterior, precio_actual, fecha_cambio) VALUES 
(11, 1900.00, 1800.00, '2024-08-15 10:00:00'),
(12, 2600.00, 2500.00, '2024-07-30 12:30:00'),
(13, 3300.00, 3200.00, '2024-09-01 14:00:00'),
(14, 2800.00, 2700.00, '2024-08-20 11:00:00'),
(15, 3400.00, 3300.00, '2024-09-05 09:15:00'),
(16, 1000.00, 950.00, '2024-08-10 10:30:00'),
(17, 1600.00, 1500.00, '2024-09-02 12:00:00'),
(18, 2100.00, 2000.00, '2024-07-28 16:45:00'),
(19, 2900.00, 2800.00, '2024-08-30 08:00:00'),
(20, 700.00, 650.00, '2024-09-08 11:30:00'),
(11, 1800.00, 1700.00, '2024-08-15 10:00:00'),
(12, 2500.00, 2400.00, '2024-07-30 12:30:00'),
(13, 3200.00, 3100.00, '2024-09-01 14:00:00'),
(14, 2700.00, 2600.00, '2024-08-20 11:00:00'),
(15, 3300.00, 3200.00, '2024-09-05 09:15:00'),
(16, 950.00, 900.00, '2024-08-10 10:30:00'),
(17, 1500.00, 1400.00, '2024-09-02 12:00:00'),
(18, 2000.00, 1900.00, '2024-07-28 16:45:00'),
(19, 2800.00, 2700.00, '2024-08-30 08:00:00'),
(20, 650.00, 600.00, '2024-09-08 11:30:00');

-- Insertar Consultas de Antigüedades con fechas variadas
INSERT INTO ConsultasAntiguedades (antiguedad_id, usuario_id, fecha_consulta) VALUES 
(11, 1, '2024-08-15 10:00:00'),
(12, 2, '2024-07-30 12:30:00'),
(13, 3, '2024-09-01 14:00:00'),
(14, 4, '2024-08-20 11:00:00'),
(15, 5, '2024-09-05 09:15:00'),
(16, 6, '2024-08-10 10:30:00'),
(17, 7, '2024-09-02 12:00:00'),
(18, 8, '2024-07-28 16:45:00'),
(19, 9, '2024-08-30 08:00:00'),
(20, 10, '2024-09-08 11:30:00'),
(11, 3, '2024-08-15 10:00:00'),
(12, 4, '2024-07-30 12:30:00'),
(13, 5, '2024-09-01 14:00:00'),
(14, 6, '2024-08-20 11:00:00'),
(15, 7, '2024-09-05 09:15:00'),
(16, 8, '2024-08-10 10:30:00'),
(17, 9, '2024-09-02 12:00:00'),
(18, 1, '2024-07-28 16:45:00'),
(19, 2, '2024-08-30 08:00:00'),
(20, 3, '2024-09-08 11:30:00');
