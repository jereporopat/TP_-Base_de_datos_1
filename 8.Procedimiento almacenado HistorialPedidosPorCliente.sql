DELIMITER $$

CREATE PROCEDURE HistorialPedidosPorCliente (
    IN ID_cliente INT
)
BEGIN
    SELECT 
        p.ID_pedido,                -- ID del pedido
        p.fecha_pedido,            -- Fecha en la que se realizó el pedido
        pxp.ID_producto,           -- ID del producto comprado
        prod.nombre_producto,      -- Nombre del producto
        pxp.cantidad,              -- Cantidad comprada del producto
        pxp.cantidad * prod.precio AS total_producto, -- Total por producto
        mp.descripcion      -- Método de pago utilizado
    FROM 
        Pedido p
    INNER JOIN 
        Productos_x_pedido pxp ON p.ID_pedido = pxp.ID_pedido
    INNER JOIN 
        Producto prod ON pxp.ID_producto = prod.ID_producto
    INNER JOIN 
        Metodo_de_pago_x_cliente mpxc ON mpxc.ID_cliente = p.ID_cliente
    INNER JOIN 
        Metodo_de_pago mp ON mp.ID_metodo_de_pago = mpxc.ID_metodo_de_pago
    WHERE 
        p.ID_cliente = ID_cliente -- Filtro por cliente
    ORDER BY 
        p.fecha_pedido DESC; -- Ordenar por fecha de pedido (más recientes primero)
END$$

DELIMITER ;

-- Filtramos el historial del cliente '1'
CALL HistorialPedidosPorCliente(1);
