USE tienda;

/*SUBCONSULTAS*/
SELECT nombre 
FROM articulo
WHERE precio IN (SELECT max(precio) from articulo);

/*¿Cuál es el promedio de salario de los puestos?*/
SELECT avg(salario)
FROM puesto;

/*¿Cuántos artículos incluyen la palabra Coffee o Tea en su nombre?*/
SELECT count(nombre)
FROM articulo
WHERE nombre LIKE '%Coffee%' OR '%Tea%';

/*¿Cuál es el salario mínimo y máximo?*/
SELECT min(salario), max(salario)
FROM puesto;

/*¿Cuál es la suma del salario de los últimos cinco puestos agregados?*/
SELECT sum(salario) as sum_salario FROM puesto WHERE id_puesto > 995;


/*¿Cual es precio promedio de un producto? Considerando el IVA.*/
SELECT avg(precio + iva) FROM articulo;

