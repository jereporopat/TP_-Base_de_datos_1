DELIMITER //

CREATE PROCEDURE PedidosMasFrecuentes()
BEGIN
    SELECT 
        dp.ID_pedido,
        COUNT(dp.ID_producto) AS cantidad_productos
    FROM 
        Productos_x_pedido dp
    GROUP BY 
        dp.ID_pedido
    ORDER BY 
        cantidad_productos DESC
    LIMIT 10;
END //

DELIMITER ;

CALL PedidosMasFrecuentes()