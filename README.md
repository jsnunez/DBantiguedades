# TallerAutomotrizMySql
base de datos basada en un taller automotriz

## CONSULTAS
   
1. Obtener el historial de reparaciones de un vehículo específico
 
 ```sql
select r.id AS reparacion,placa,r.descripcion,fecha from reparacion AS r
JOIN vehiculo AS v
ON v.id=r.fkIdVehiculo
where fkIdVehiculo = 12;
 ```
| reparacion | placa  | descripcion                                                | fecha      |
|------------|--------|------------------------------------------------------------|------------|
|          6 | HIJ456 | Cambio de batería debido a problemas de arranque           | 2024-04-25 |
|          7 | HIJ456 | Revisión y cambio de aceite para mantenimiento preventivo  | 2024-04-26 |
|          8 | HIJ456 | Cambio de bujías para mejorar el rendimiento del motor     | 2024-04-27 |
|          9 | HIJ456 | Revisión del sistema de escape por ruidos anormales        | 2024-04-28 |
|         10 | HIJ456 | Lavado exterior e interior del vehículo                    | 2024-04-29 |


Diagrama Conceptual
![conceptual](https://github.com/user-attachments/assets/a7535e4b-29c8-43f7-a022-992b3b10f4f8)
Diagrama Logico
![image (1)](https://github.com/user-attachments/assets/7aafff08-6983-4dca-a497-fabcb77c16f5)
diagrama Entidad Relacion
![Entidad-Relacion](https://github.com/user-attachments/assets/5afa303b-1027-41a5-9b21-5a22b9e44879)
