INSERT INTO Paises (pais_id, nombre)
VALUES
    (1, 'Estados Unidos'),
    (2, 'Canadá'),
    (3, 'México');

INSERT INTO Ciudades (ciudad_id, nombre, pais_id)
VALUES
    (1, 'Nueva York', 1),
    (2, 'Toronto', 2),
    (3, 'Ciudad de México', 3);

INSERT INTO Sucursales (sucursal_id, nombre, direccion, ciudad_id)
VALUES
    (1, 'Sucursal Manhattan', '123 Main St, Manhattan', 1),
    (2, 'Sucursal Toronto Downtown', '456 Bay St, Toronto', 2),
    (3, 'Sucursal Reforma', '789 Av. Reforma, CDMX', 3);

INSERT INTO Conductores (conductor_id, nombre)
VALUES
    (1, 'Juan Pérez'),
    (2, 'María García');

INSERT INTO Vehiculos (vehiculo_id, placa, marca, modelo, capacidad_carga, sucursal_id)
VALUES
    (1, 'ABC123', 'Ford', 'Transit', 1500.00, 1),
    (2, 'XYZ456', 'Chevrolet', 'Express', 2000.00, 2);

INSERT INTO Rutas (ruta_id, descripcion, sucursal_id)
VALUES
    (1, 'Ruta local Manhattan', 1),
    (2, 'Ruta GTA', 2);

INSERT INTO Clientes (cliente_id, nombre, email, direccion)
VALUES
    (1, 'Empresa A', 'empresaA@example.com', '123 Business St, New York'),
    (2, 'Cliente B', 'clienteB@example.com', '456 Main St, Toronto');

INSERT INTO Paquetes (paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, tipo_servicio, estado)
VALUES
    (1, 'PKG001', 5.25, '20x30x10 cm', 'Libros', 100.00, 'Express', 'En tránsito'),
    (2, 'PKG002', 3.10, '15x25x8 cm', 'Electrónicos', 150.00, 'Standard', 'Entregado');

INSERT INTO Envios (envio_id, cliente_id, paquete_id, fecha_envio, destino, ruta_id, sucursal_id)
VALUES
    (1, 1, 1, '2024-06-20 10:00:00', 'Los Angeles', 1, 1),
    (2, 2, 2, '2024-06-21 09:30:00', 'Montreal', 2, 2);

INSERT INTO Telefonos_Clientes (telefono_id, numero, cliente_id)
VALUES
(1, '123-456-7890', 101),
(2, '234-567-8901', 102),
(3, '345-678-9012', 103),
(4, '456-789-0123', 104),
(5, '567-890-1234', 105);

INSERT INTO Vehiculos (vehiculo_id, placa, marca, modelo, capacidad_carga, sucursal_id)
VALUES
(1, 'ABC-123', 'Toyota', 'Hilux', 1500.00, 1),
(2, 'DEF-456', 'Ford', 'Ranger', 1200.50, 2),
(3, 'GHI-789', 'Chevrolet', 'Silverado', 1800.75, 1),
(4, 'JKL-012', 'Nissan', 'Frontier', 1400.25, 3),
(5, 'MNO-345', 'Mitsubishi', 'L200', 1300.80, 2);

INSERT INTO Telefonos_Conductores (telefono_id, numero, conductor_id)
VALUES
(1, '111-222-3333', 201),
(2, '222-333-4444', 202),
(3, '333-444-5555', 203),
(4, '444-555-6666', 204),
(5, '555-666-7777', 205);

INSERT INTO Ruta_Auxiliares (ruta_id, auxiliar_id)
VALUES
(1, 301),
(1, 302),
(2, 303),
(3, 304),
(3, 305),
(4, 306),
(4, 307);

INSERT INTO Auxiliares (auxiliar_id, nombre)
VALUES
(301, 'Juan Pérez'),
(302, 'María López'),
(303, 'Pedro Martínez'),
(304, 'Ana Ramírez'),
(305, 'Luisa Gómez'),
(306, 'Carlos Sánchez'),
(307, 'Laura Hernández');

INSERT INTO Seguimiento (seguimiento_id, paquete_id, ubicacion, fecha_hora, estado)
VALUES
(1, 201, 'Centro de distribución A', '2024-06-21 09:00:00', 'En tránsito'),
(2, 202, 'Oficina de destino', '2024-06-22 11:30:00', 'En reparto'),
(3, 203, 'En almacén de tránsito', '2024-06-23 08:45:00', 'En espera'),
(4, 204, 'En proceso de entrega', '2024-06-24 13:45:00', 'En reparto'),
(5, 201, 'Entregado al cliente', '2024-06-21 15:30:00', 'Entregado'),
(6, 203, 'En ruta hacia destino final', '2024-06-24 10:00:00', 'En tránsito');

