DELIMITER //

CREATE PROCEDURE ProductosMasVendidos()
BEGIN
    SELECT 
        p.ID_producto,              
        p.nombre_producto,          
        SUM(pp.cantidad) AS total_vendidos 
    FROM 
        Productos_x_pedido pp            
    INNER JOIN 
        Producto p ON pp.ID_producto = p.ID_producto 
    GROUP BY 
        p.ID_producto, p.nombre_producto 
    ORDER BY 
        total_vendidos DESC         
    LIMIT 10;                       
END //

DELIMITER ;
