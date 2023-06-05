USE tienda;

/*¿Cuántos registros hay por cada uno de los puestos?*/
SELECT nombre, count(*) as cantidad
FROM puesto
GROUP BY nombre 
ORDER by cantidad desc;

/*¿Cuánto dinero se paga en total por puesto?*/
SELECT nombre, sum(salario) as Salario_Total
FROM puesto
GROUP BY nombre;