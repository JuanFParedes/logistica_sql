Caso de uso 1: Registrar un nuevo pais

INSERT INTO Paises (pais_id, nombre)
VALUES
    (1, 'Estados Unidos'),
    (2, 'Canadá'),
    (3, 'México');

Caso de uso 2: Registrar una nueva ciudad

INSERT INTO Ciudades (ciudad_id, nombre, pais_id)
VALUES
    (1, 'Nueva York', 1),
    (2, 'Toronto', 2),
    (3, 'Ciudad de México', 3);

Caso de uso 3: Registrar una nueva sucursal

INSERT INTO Sucursales (sucursal_id, nombre, direccion, ciudad_id)
VALUES
    (1, 'Sucursal Manhattan', '123 Main St, Manhattan', 1),
    (2, 'Sucursal Toronto Downtown', '456 Bay St, Toronto', 2),
    (3, 'Sucursal Reforma', '789 Av. Reforma, CDMX', 3);

Caso de uso 4: Registrar un nuevo cliente

INSERT INTO Clientes (cliente_id, nombre, email, direccion)
VALUES
    (1, 'Empresa A', 'empresaA@example.com', '123 Business St, New York'),
    (2, 'Cliente B', 'clienteB@example.com', '456 Main St, Toronto');

Caso de uso 5: Registrar un nuevo telefono par un cliente

INSERT INTO Telefonos_Clientes (telefono_id, numero, cliente_id)
VALUES
(1, '123-456-7890', 101),
(2, '234-567-8901', 102),
(3, '345-678-9012', 103),
(4, '456-789-0123', 104),
(5, '567-890-1234', 105);

Caso de uso 6: Registrar un nuevo paquete

INSERT INTO Paquetes (paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, tipo_servicio, estado)
VALUES
    (1, 'PKG001', 5.25, '20x30x10 cm', 'Libros', 100.00, 'Express', 'En tránsito'),
    (2, 'PKG002', 3.10, '15x25x8 cm', 'Electrónicos', 150.00, 'Standard', 'Entregado');

Caso de uso 7: Registrar un nuevo envio 

INSERT INTO Envios (envio_id, cliente_id, paquete_id, fecha_envio, destino, ruta_id, sucursal_id)
VALUES
    (1, 1, 1, '2024-06-20 10:00:00', 'Los Angeles', 1, 1),
    (2, 2, 2, '2024-06-21 09:30:00', 'Montreal', 2, 2);

Caso de Uso 8: Registrar un Nuevo Vehículo

INSERT INTO Vehiculos (vehiculo_id, placa, marca, modelo, capacidad_carga, sucursal_id)
VALUES
(1, 'ABC-123', 'Toyota', 'Hilux', 1500.00, 1),
(2, 'DEF-456', 'Ford', 'Ranger', 1200.50, 2),
(3, 'GHI-789', 'Chevrolet', 'Silverado', 1800.75, 1),
(4, 'JKL-012', 'Nissan', 'Frontier', 1400.25, 3),
(5, 'MNO-345', 'Mitsubishi', 'L200', 1300.80, 2);

Caso de Uso 9: Registrar un Nuevo Conductor

INSERT INTO Conductores (conductor_id, nombre)
VALUES
    (1, 'Juan Pérez'),
    (2, 'María García');

Caso de Uso 10: Registrar un Nuevo Teléfono para un conductor

INSERT INTO Telefonos_Conductores (telefono_id, numero, conductor_id)
VALUES
(1, '111-222-3333', 201),
(2, '222-333-4444', 202),
(3, '333-444-5555', 203),
(4, '444-555-6666', 204),
(5, '555-666-7777', 205);

Caso de Uso 11: Asignar un Conductor a una Ruta y un vehículo

INSERT INTO conductores_rutas (conductor_id, ruta_id, vehiculo_id, sucursal_id) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

Caso de Uso 12: Registrar un Nuevo Auxiliar

INSERT INTO Auxiliares (auxiliar_id, nombre)
VALUES
(301, 'Juan Pérez'),
(302, 'María López'),
(303, 'Pedro Martínez'),
(304, 'Ana Ramírez'),
(305, 'Luisa Gómez'),
(306, 'Carlos Sánchez'),
(307, 'Laura Hernández');

Caso de uno 13: Asignar un auxiliar a una ruta

INSERT INTO ruta_auxiliares (ruta_id, auxiliar_id) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

Caso de Uso 14: Registrar un Evento de Seguimiento para un paquete

INSERT INTO Seguimiento (seguimiento_id, paquete_id, ubicacion, fecha_hora, estado)
VALUES
(1, 201, 'Centro de distribución A', '2024-06-21 09:00:00', 'En tránsito'),
(2, 202, 'Oficina de destino', '2024-06-22 11:30:00', 'En reparto'),
(3, 203, 'En almacén de tránsito', '2024-06-23 08:45:00', 'En espera'),
(4, 204, 'En proceso de entrega', '2024-06-24 13:45:00', 'En reparto'),
(5, 201, 'Entregado al cliente', '2024-06-21 15:30:00', 'Entregado'),
(6, 203, 'En ruta hacia destino final', '2024-06-24 10:00:00', 'En tránsito');

Caso de Uso 15: Generar un Reporte de Envíos por Cliente

SELECT 
    c.nombre AS nombre_cliente,
    e.envio_id,
    e.fecha_envio,
    e.destino,
    e.estado
FROM 
    Envios e
JOIN 
    Clientes c ON e.cliente_id = c.cliente_id
WHERE 
    c.cliente_id = 101;

Caso de uso 16: Actualizar el estado de un paquete

UPDATE Paquetes SET estado = 'Nuevo_Estado' WHERE paquete_id = 1;

Caso de uso 17: Rastrear la ubicacion actual de un paquete

SELECT ubicacion, fecha_hora, estado 
FROM Seguimiento 
WHERE paquete_id = 1 
ORDER BY fecha_hora DESC 
LIMIT 1;

-----------------CASOS MULTITABLA---------------

Caso de Uso 1: Obtener Información Completa de Envíos

SELECT 
    e.envio_id,
    c.nombre AS nombre_cliente,
    e.fecha_envio,
    e.destino,
    e.estado,
    p.numero_seguimiento,
    p.peso,
    p.dimensiones,
    p.contenido,
    p.valor_declarado,
    p.tipo_servicio
FROM 
    Envios e
JOIN 
    Clientes c ON e.cliente_id = c.cliente_id
JOIN 
    Paquetes p ON e.paquete_id = p.paquete_id;
