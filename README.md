Trabajo Práctico Grupo Matecito


Materia: Base de datos 1

Integrantes: Jeremias Poropat

Profesor: Andrés Kouvach

Fecha de entrega: 19/11/24






Requerimientos del sistema
El sistema debe ser capaz de gestionar la relación entre productos, clientes, pedidos, y sucursales, asegurando la correcta organización del flujo de pedidos y el control del stock. A continuación, se detallan los requerimientos asociados a cada tabla y funcionalidad:
Gestión de productos y combos
1.	Registrar los productos con información detallada (nombre, precio, etiquetas).
2.	Asociar productos a combos para ofrecer promociones o paquetes de productos.
3.	Gestionar las etiquetas de cada producto, permitiendo agruparlos o clasificarlos para búsquedas más rápidas.
4.	Permitir consultar el precio de compra y la cantidad asociada a cada producto de un pedido.
Gestión de clientes y métodos de pago
5.	Registrar información de los clientes, incluyendo sus datos de contacto y el método de pago utilizado.
6.	Permitir que un cliente utilice múltiples métodos de pago para distintos pedidos (efectivo, tarjeta, etc.).
7.	Registrar información adicional del método de pago utilizado por cliente, si aplica (por ejemplo, detalles de la tarjeta o el medio).
Gestión de pedidos
8.	Registrar los pedidos realizados por los clientes, incluyendo la fecha del pedido, el monto total, y el cliente asociado.
9.	Asociar cada pedido a una sucursal específica para su preparación o entrega.
10.	Gestionar los productos incluidos en cada pedido, con su cantidad y precio de compra.
11.	Controlar el estado del pedido (en preparación, en camino, entregado, etc.) y su historial, registrando cada cambio de estado con fecha y hora.
12.	Gestionar el reparto del pedido mediante un repartidor, asociando su nombre, apellido y tipo de transporte.
Gestión de sucursales y zonas
13.	Registrar las sucursales disponibles, incluyendo su ubicación.
14.	Asociar cada zona a una única sucursal, definiendo el área de cobertura de cada sucursal.
15.	Permitir que una sucursal abarque varias zonas.
Gestión de empleados
16.	Gestionar la relación de empleados con sus respectivas sucursales.
17.	Registrar el puesto que ocupa cada empleado dentro de la sucursal.
Gestión de stock y depósitos
18.	Registrar y controlar el stock disponible para cada producto en cada sucursal.
19.	Registrar los depósitos utilizados para almacenar productos, indicando la cantidad disponible de cada producto en cada depósito.
20.	Asegurar que cada depósito esté asociado a un stock, permitiendo organizar mejor los inventarios.
Gestión de transporte
21.	Registrar los tipos de transporte utilizados por los repartidores.
22.	Asociar un tipo de transporte específico a cada repartidor (por ejemplo, moto, auto, bicicleta).


Modelo de tablas para base de datos
Modelo de tablas

 

Sentencias SQL para crear las tablas
Crear tablas
Sentencias SQL para cargar datos
Cargar datos
Procedimientos almacenados, funciones y triggers
1)	Reportes de pedidos más frecuentes y productos más vendidos:
Objetivo:
Registrar datos que permitan analizar cuáles son los pedidos más frecuentes y los productos más vendidos.
Productos más vendidos:
Sentencia ProductosMasVendidos
Pedidos más frecuentes por cliente:
Sentencia PedidosMasFrecuentes

2)	Control automático de stock
Objetivo:
Antes de aceptar un pedido, verificar si el stock del producto solicitado es suficiente.
Sentencias SQL para cargar datos
Cargar datos
Trigger para verificar stock
Sentencia y Testing
3)	Historial de pedidos por cliente
Objetivo:
Mantener un registro de todos los pedidos realizados por un cliente.
Sentencias SQL para cargar datos
	Cargar datos
	Procedimiento almacenado HistorialPedidosPorCliente
	Sentencia y Testing
