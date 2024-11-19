DELIMITER $$

CREATE TRIGGER ControlStock
AFTER INSERT ON Productos_x_pedido
FOR EACH ROW
BEGIN
    -- Verificar si hay suficiente stock disponible
    DECLARE cantidad_actual INT;

    SELECT Cantidad_productos 
    INTO cantidad_actual
    FROM Stock
    WHERE ID_producto = NEW.ID_producto;

    IF cantidad_actual < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock insuficiente para el producto';
    ELSE
        -- Reducir el stock
        UPDATE Stock
        SET cantidad_disponible = cantidad_disponible - NEW.cantidad
        WHERE ID_producto = NEW.ID_producto;
    END IF;
END$$

DELIMITER ;

-- Ejemplo si quiero pedir 100 pizzas napolitanas y no tengo stock suficiente
INSERT INTO Productos_x_pedido (ID_pedido, ID_producto, cantidad, precio_compra) VALUES
(6, 1, 100, 1500.00); -- Error: Stock insuficiente


