USE tienda;
SELECT ventas.*, CONCAT_WS(" ", empleado.nombre, empleado.apellido_paterno) AS nombre_completo FROM empleado
INNER JOIN (SELECT * FROM venta) AS ventas ON empleado.id_empleado = ventas.id_empleado;

SELECT DISTINCT(articulo.nombre) AS nombre_articulo FROM articulo INNER JOIN (SELECT * FROM venta) ventas 
ON ventas.id_articulo = articulo.id_articulo GROUP BY (articulo.nombre);

SELECT venta.clave, ROUND(SUM(articulo.precio + articulo.iva), 2) AS total_venta FROM venta INNER JOIN articulo
ON venta.id_articulo = articulo.id_articulo GROUP BY venta.clave;