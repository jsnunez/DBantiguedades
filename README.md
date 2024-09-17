# Antiguedades
base de datos basada en un venta de antiguedades

## CONSULTAS
   
1.Consulta para listar todas las antigüedades disponibles para la venta:

 ```sql
SELECT 
    a.nombre AS nombre_pieza,
    c.nombre AS categoria,
    a.precio,
    a.estado_conservacion
FROM 
    Antiguedades a
JOIN 
    Categorias c ON a.categoria_id = c.categoria_id
JOIN 
    Inventario i ON a.antiguedad_id = i.antiguedad_id
WHERE 
    i.cantidad_disponible > 0;

 ```
| nombre_pieza                | categoria  | precio  | estado_conservacion |
|-----------------------------|------------|---------|---------------------|
| Mueble Luis XV              | Muebles    | 1200.00 | Bueno               |
| Reloj de Pared Francés      | Relojes    | 2100.00 | Muy Bueno           |
| Anillo de Oro con Esmeralda | Joyería    | 4000.00 | Excelente           |
| Cuadro Impresionista        | Pinturas   | 2200.00 | Bueno               |
| Escultura de Mármol         | Esculturas | 3500.00 | Excelente           |
| Sillón de la Edad Media     | Muebles    |  800.00 | Muy Bueno           |
| Collar de Ámbar             | Joyería    | 1300.00 | Bueno               |
| Candelabro de Bronce        | Muebles    | 1800.00 | Muy Bueno           |
| Escultura de Hierro Forjado | Esculturas | 3000.00 | Excelente           |
| Mueble Art Deco             | Muebles    | 2200.00 | Bueno               |
| Mueble Luis XV              | Muebles    | 1200.00 | Bueno               |
| Reloj de Pared Francés      | Relojes    | 2100.00 | Muy Bueno           |
| Anillo de Oro con Esmeralda | Joyería    | 4000.00 | Excelente           |
| Cuadro Impresionista        | Pinturas   | 2200.00 | Bueno               |
| Escultura de Mármol         | Esculturas | 3500.00 | Excelente           |
| Sillón de la Edad Media     | Muebles    |  800.00 | Muy Bueno           |
| Collar de Ámbar             | Joyería    | 1300.00 | Bueno               |
| Candelabro de Bronce        | Muebles    | 1800.00 | Muy Bueno           |
| Escultura de Hierro Forjado | Esculturas | 3000.00 | Excelente           |
| Mueble Art Deco             | Muebles    | 2200.00 | Bueno               |


2.-- Consulta para buscar antigüedades por categoría y rango de precio:
  ```sql 
   SELECT 
    a.nombre AS nombre_pieza,
    a.precio,
    a.estado_conservacion
FROM 
    Antiguedades a
JOIN 
    Categorias c ON a.categoria_id = c.categoria_id
WHERE 
    c.nombre = 'Muebles'
    AND a.precio BETWEEN 500 AND 2000;

 

 ```
| nombre_pieza                | precio  | estado_conservacion |
|-----------------------------|---------|---------------------|
| Mueble de Época Victoriana  | 1800.00 | Bueno               |
| Sillón Barroco              |  950.00 | Muy Bueno           |
| Mesa de Comedor Antigua     | 2000.00 | Bueno               |
| Jarrón de Vidrio Antiguo    |  650.00 | Muy Bueno           |
| Mueble Luis XV              | 1200.00 | Bueno               |
| Sillón de la Edad Media     |  800.00 | Muy Bueno           |
| Candelabro de Bronce        | 1800.00 | Muy Bueno           |
| Espejo Veneciano            | 1700.00 | Muy Bueno           |
| Silla de Epoca Rusa         | 1000.00 | Excelente           |
| Jarrón de Porcelana         | 1900.00 | Excelente           |
| Tetera de Plata             | 1300.00 | Muy Bueno           |

3 Consulta para mostrar el historial de ventas de un cliente específico:
  ```sql 
   SELECT 
    a.nombre AS nombre_pieza,
    t.fecha_transaccion,
    t.precio_final,
    u.nombre AS comprador
FROM 
    Transacciones t
JOIN 
    Antiguedades a ON t.antiguedad_id = a.antiguedad_id
JOIN 
    Usuarios u ON t.comprador_id = u.usuario_id
WHERE 
    t.comprador_id = 2;

 ```
   | nombre_pieza                | fecha_transaccion   | precio_final | comprador     |
|-----------------------------|---------------------|--------------|---------------|
| Sillón de la Edad Media     | 2024-08-10 10:30:00 |       950.00 | Enrique Ramos |
| Anillo de Oro con Esmeralda | 2024-09-01 14:00:00 |      3200.00 | Enrique Ramos |


  4. Consulta para obtener el total de ventas realizadas en un periodo de tiempo:

 ```sql 
   SELECT 
    SUM(t.precio_final) AS total_ventas
FROM 
    Transacciones t
WHERE 
    t.fecha_transaccion BETWEEN '2024-09-01' AND '2024-09-18';
 ```
| total_ventas |
|--------------|
|     17300.00 |
   5. Consulta para encontrar los clientes más activos (con más compras realizadas):
 ```sql 
   SELECT 
    u.nombre,
    COUNT(t.transaccion_id) AS cantidad_compras
FROM 
    Transacciones t
JOIN 
    Usuarios u ON t.comprador_id = u.usuario_id
GROUP BY 
    u.usuario_id
ORDER BY 
    cantidad_compras DESC;

 ```

| nombre            | cantidad_compras |
|-------------------|------------------|
| Claudia Castro    |                3 |
| Manuel Ortega     |                3 |
| Enrique Ramos     |                2 |
| Beatriz García    |                2 |
| Ricardo Méndez    |                2 |
| Verónica Morales  |                2 |
| Hugo Vargas       |                2 |
| Camila Fernández  |                2 |
| Adriana Silva     |                1 |
| Carlos Morales    |                1 |

6. Consulta para listar las antigüedades más populares por número de visitas o consultas:
  ```sql 
SELECT 
    a.nombre AS nombre_pieza,
    a.visitas,
    COUNT(ca.consulta_id) AS cantidad_consultas
FROM 
    Antiguedades a
LEFT JOIN 
    ConsultasAntiguedades ca ON a.antiguedad_id = ca.antiguedad_id
GROUP BY 
    a.antiguedad_id
ORDER BY 
    cantidad_consultas DESC;
 ```

| nombre_pieza                   | visitas | cantidad_consultas |
|--------------------------------|---------|--------------------|
| Mueble Luis XV                 |      40 |                  2 |
| Reloj de Pared Francés         |      55 |                  2 |
| Anillo de Oro con Esmeralda    |      70 |                  2 |
| Cuadro Impresionista           |      30 |                  2 |
| Escultura de Mármol            |      35 |                  2 |
| Sillón de la Edad Media        |      65 |                  2 |
| Collar de Ámbar                |      40 |                  2 |
| Candelabro de Bronce           |      45 |                  2 |
| Escultura de Hierro Forjado    |      55 |                  2 |
| Mueble Art Deco                |      48 |                  2 |
| Mueble de Época Victoriana     |      55 |                  0 |
| Reloj de Bolsillo Antiguo      |      45 |                  0 |
| Broche de Rubíes               |      65 |                  0 |
| Cuadro de la Escuela Española  |      38 |                  0 |
| Escultura de Bronce Moderno    |      22 |                  0 |
| Sillón Barroco                 |      50 |                  0 |
| Pendientes de Perlas           |      60 |                  0 |
| Mesa de Comedor Antigua        |      42 |                  0 |
| Relieve de Madera              |      25 |                  0 |
| Jarrón de Vidrio Antiguo       |      80 |                  0 |
| Espejo Veneciano               |      35 |                  0 |
| Cámara Fotográfica Antigua     |      60 |                  0 |
| Reloj de Sol Antiguo           |      70 |                  0 |
| Piano de Madera                |      30 |                  0 |
| Busto de Mármol                |      40 |                  0 |
| Silla de Epoca Rusa            |      50 |                  0 |
| Cuadro Moderno                 |      60 |                  0 |
| Candelabro de Plata            |      45 |                  0 |
| Jarrón de Porcelana            |      55 |                  0 |
| Reloj de Torre                 |      50 |                  0 |
| Tetera de Plata                |      45 |                  0 |


7. Consulta para listar las antigüedades vendidas en un rango de fechas específico:
    
   ```sql 
   SELECT 
    a.nombre AS nombre_pieza,
    t.fecha_transaccion,
    u_vendedor.nombre AS vendedor,
    u_comprador.nombre AS comprador
   FROM 
    Transacciones t
   JOIN 
    Antiguedades a ON t.antiguedad_id = a.antiguedad_id
   JOIN 
    Usuarios u_vendedor ON t.vendedor_id = u_vendedor.usuario_id
   JOIN 
    Usuarios u_comprador ON t.comprador_id = u_comprador.usuario_id
   WHERE 
    t.fecha_transaccion BETWEEN '2024-08-01' AND '2024-09-30';
    ```
| nombre_pieza                | fecha_transaccion   | vendedor        | comprador         |
|-----------------------------|---------------------|-----------------|-------------------|
| Mueble Luis XV              | 2024-08-15 10:00:00 | Ricardo Méndez  | Claudia Castro    |
| Anillo de Oro con Esmeralda | 2024-09-01 14:00:00 | Adriana Silva   | Verónica Morales  |
| Cuadro Impresionista        | 2024-08-20 11:00:00 | Beatriz García  | Hugo Vargas       |
| Escultura de Mármol         | 2024-09-05 09:15:00 | Claudia Castro  | Manuel Ortega     |
| Sillón de la Edad Media     | 2024-08-10 10:30:00 | Manuel Ortega   | Enrique Ramos     |
| Collar de Ámbar             | 2024-09-02 12:00:00 | Beatriz García  | Ricardo Méndez    |
| Escultura de Hierro Forjado | 2024-08-30 08:00:00 | Hugo Vargas     | Manuel Ortega     |
| Mueble Art Deco             | 2024-09-08 11:30:00 | Ricardo Méndez  | Camila Fernández  |
| Mueble Luis XV              | 2024-08-15 10:00:00 | Enrique Ramos   | Adriana Silva     |
| Anillo de Oro con Esmeralda | 2024-09-01 14:00:00 | Claudia Castro  | Enrique Ramos     |
| Cuadro Impresionista        | 2024-08-20 11:00:00 | Adriana Silva   | Camila Fernández  |
| Escultura de Mármol         | 2024-09-05 09:15:00 | Ricardo Méndez  | Beatriz García    |
| Sillón de la Edad Media     | 2024-08-10 10:30:00 | Manuel Ortega   | Claudia Castro    |
| Collar de Ámbar             | 2024-09-02 12:00:00 | Enrique Ramos   | Verónica Morales  |
| Escultura de Hierro Forjado | 2024-08-30 08:00:00 | Claudia Castro  | Hugo Vargas       |
| Mueble Art Deco             | 2024-09-08 11:30:00 | Manuel Ortega   | Carlos Morales    |
   
   7. Consulta para obtener un informe de inventario actual:
 ```sql 
   SELECT 
    c.nombre AS categoria,
    COUNT(i.antiguedad_id) AS cantidad_articulos
   FROM 
    Inventario i
   JOIN 
    Antiguedades a ON i.antiguedad_id = a.antiguedad_id
   JOIN 
    Categorias c ON a.categoria_id = c.categoria_id
   GROUP BY 
    c.categoria_id;
   ```


| categoria  | cantidad_articulos |
|------------|--------------------|
| Muebles    |                  8 |
| Relojes    |                  2 |
| Joyería    |                  4 |
| Pinturas   |                  2 |
| Esculturas |                  4 |


Diagrama Conceptual
![conceptual](https://github.com/user-attachments/assets/a7535e4b-29c8-43f7-a022-992b3b10f4f8)
Diagrama Logico
![image (1)](https://github.com/user-attachments/assets/7aafff08-6983-4dca-a497-fabcb77c16f5)
diagrama Entidad Relacion
![Entidad-Relacion](https://github.com/user-attachments/assets/5afa303b-1027-41a5-9b21-5a22b9e44879)
