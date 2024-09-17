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


Diagrama Conceptual
![conceptual](https://github.com/user-attachments/assets/a7535e4b-29c8-43f7-a022-992b3b10f4f8)
Diagrama Logico
![image (1)](https://github.com/user-attachments/assets/7aafff08-6983-4dca-a497-fabcb77c16f5)
diagrama Entidad Relacion
![Entidad-Relacion](https://github.com/user-attachments/assets/5afa303b-1027-41a5-9b21-5a22b9e44879)
