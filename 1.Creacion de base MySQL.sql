CREATE DATABASE bdd_tp1;

USE bdd_tp1;

-- Tabla Sucursal
CREATE TABLE Sucursal (
    ID_sucursal INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Direccion_sucursal VARCHAR(255) NOT NULL
);

-- Tabla Zona
CREATE TABLE Zona (
    ID_zona INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_sucursal INT NOT NULL,
    Descripcion VARCHAR(255) NOT NULL,
    FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);

-- Tabla Producto
CREATE TABLE Producto (
    ID_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Tabla Etiquetas
CREATE TABLE Etiquetas (
    ID_etiqueta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

-- Tabla Etiquetas_por_producto
CREATE TABLE Etiquetas_por_producto (
    ID_etiquetas_x_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_etiqueta INT NOT NULL,
    ID_producto INT NOT NULL,
    FOREIGN KEY (ID_etiqueta) REFERENCES Etiquetas(ID_etiqueta),
    FOREIGN KEY (ID_producto) REFERENCES Producto(ID_producto)
);

-- Tabla Cliente
CREATE TABLE Cliente (
    ID_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    apellido_cliente VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    celular_cliente BIGINT NOT NULL,
    mail_cliente VARCHAR(255) NOT NULL,
    metodo_pago INT NOT NULL
);

-- Tabla Metodo_de_pago
CREATE TABLE Metodo_de_pago (
    ID_metodo_de_pago INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

-- Tabla Metodo_de_pago_x_cliente
CREATE TABLE Metodo_de_pago_x_cliente (
    ID_metodo_de_pago_x_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_metodo_de_pago INT NOT NULL,
    ID_cliente INT NOT NULL,
    datos_metodo_de_pago VARCHAR(255) NOT NULL,
    FOREIGN KEY (ID_metodo_de_pago) REFERENCES Metodo_de_pago(ID_metodo_de_pago),
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);

-- Tabla Pedido
CREATE TABLE Pedido (
    ID_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_Repartidor INT, -- Puede ser NULL si no está asignado el repartidor
    ID_cliente INT NOT NULL,
    ID_sucursal INT NOT NULL,
    total_pedido DECIMAL(10, 2) NOT NULL,
    fecha_pedido DATETIME NOT NULL,
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
    FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);

-- Tabla Estado
CREATE TABLE Estado (
    ID_estado_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(255) NOT NULL
);

-- Tabla Estado_x_pedido
CREATE TABLE Estado_x_pedido (
    ID_estado_por_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_pedido INT NOT NULL,
    ID_estado_pedido INT NOT NULL,
    Fecha DATETIME NOT NULL,
    FOREIGN KEY (ID_pedido) REFERENCES Pedido(ID_pedido),
    FOREIGN KEY (ID_estado_pedido) REFERENCES Estado(ID_estado_pedido)
);

-- Tabla Productos_x_pedido
CREATE TABLE Productos_x_pedido (
    ID_productos_x_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_producto INT NOT NULL,
    ID_pedido INT NOT NULL,
    cantidad INT NOT NULL,
    precio_compra DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_producto) REFERENCES Producto(ID_producto),
    FOREIGN KEY (ID_pedido) REFERENCES Pedido(ID_pedido)
);

-- Tabla Repartidor
CREATE TABLE Repartidor (
    ID_repartidor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Tipo_transporte INT NOT NULL,
    ID_sucursal INT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);

-- Tabla Tipo_transporte
CREATE TABLE Tipo_transporte (
    ID_transporte INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Descripcion VARCHAR(255) NOT NULL
);

-- Tabla Empleados
CREATE TABLE Empleados (
    ID_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_sucursal INT NOT NULL,
    Puesto VARCHAR(255) NOT NULL,
    FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);

-- Tabla Deposito
CREATE TABLE Deposito (
    ID_deposito INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Direccion VARCHAR(255) NOT NULL
);
-- Tabla Stock
CREATE TABLE Stock (
    ID_stock INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_deposito INT NOT NULL,
    ID_producto INT NOT NULL,
    Cantidad_productos INT NOT NULL,
    Minimo_productos INT NOT NULL,
    FOREIGN KEY (ID_deposito) REFERENCES Deposito(ID_deposito),
    FOREIGN KEY (ID_producto) REFERENCES Producto(ID_producto)
);
