INSERT INTO Producto (ID_producto, nombre_producto, precio) VALUES
(1, 'Pizza Napolitana', 1500.00),
(2, 'Pizza Muzarella', 1200.00),
(3, 'Pizza Especial', 1800.00),
(4, 'Empanada de Carne', 250.00),
(5, 'Empanada de Jamón y Queso', 250.00),
(6, 'Empanada de Pollo', 250.00),
(7, 'Fainá', 200.00),
(8, 'Combo Pizza Napolitana y 2 Gaseosas', 2000.00),
(9, 'Lata de Gaseosa', 300.00),
(10, 'Combo Familiar de Empanadas (12 unidades)', 2800.00);

INSERT INTO Metodo_de_pago(descripcion) VALUES
('efectivo'),
('tarjeta credito'),
('tarjeta debito');

INSERT INTO Cliente (nombre_cliente, apellido_cliente, direccion, celular_cliente, mail_cliente, metodo_pago) VALUES
('Jorge', 'Gonzalez', 'direccion1', 1144454647,'test@test.com', 1);

INSERT INTO Sucursal (direccion_sucursal) VALUES
('direccion1');

INSERT INTO Tipo_transporte (descripcion) VALUES
('moto');

INSERT INTO Repartidor (Tipo_transporte, ID_sucursal, nombre, apellido) VALUES
(1, 1, 'juan', 'perez');

INSERT INTO Pedido (ID_repartidor, ID_cliente, ID_sucursal, total_pedido, fecha_pedido) VALUES
(1, 1, 1, 3200.00, '2023-11-22 15:30:45'),
(1, 1, 1, 3000.00, '2024-11-22 15:30:45'),
(1, 1, 1, 2450.00, '2024-11-19 15:30:45'),
(1, 1, 1, 3400.00, '2024-11-19 15:30:45'),
(1, 1, 1, 4400.00, '2024-11-19 15:30:45'),
(1, 1, 1, 8000.00, '2024-11-19 15:30:45');

INSERT INTO Productos_x_pedido (ID_pedido, ID_producto, cantidad, precio_compra) VALUES
(1, 1, 3, 3000.00),   -- Pedido 1: 3 Pizzas Napolitanas
(1, 2, 2, 2400.00),   -- Pedido 1: 2 Pizzas Muzarella
(2, 3, 1, 1800.00),   -- Pedido 2: 1 Pizza Especial
(2, 4, 4, 1000.00),   -- Pedido 2: 4 Empanadas de Carne
(3, 5, 6, 1500.00),   -- Pedido 3: 6 Empanadas de Jamón y Queso
(3, 6, 3, 750.00),   -- Pedido 3: 3 Empanadas de Pollo
(4, 7, 2, 400.00),   -- Pedido 4: 2 Fainás
(4, 8, 1, 2800.00),   -- Pedido 4: 1 Combo de Pizza Napolitana y Gaseosas
(5, 9, 5, 1800.00),   -- Pedido 5: 5 Latas de Gaseosa
(5, 10, 1, 2400.00),  -- Pedido 5: 1 Combo Familiar de Empanadas
(6, 2, 4, 4800.00),   -- Pedido 6: 4 Pizzas Muzarella
(6, 1, 2, 3000.00);   -- Pedido 6: 2 Pizzas NapolitanasRepartidorProductos_x_pedido
