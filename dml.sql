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
