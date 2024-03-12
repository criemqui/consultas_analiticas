SELECT o.cliente_id, c.nombre AS nombre_cliente, SUM(i.monto_venta) AS total_ventas
FROM Ordenes o
JOIN Items i ON o.id = i.ordenes_id
JOIN Clientes c ON o.cliente_id = c.id
GROUP BY o.cliente_id, c.nombre;