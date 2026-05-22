/* 
=============================================================
EJERCICIOS DE PRÁCTICA SQL - NIVEL 1: CALENTAMIENTO
=============================================================
*/

-- Seleccionar la base de datos de trabajo
USE MiProyectoEstudio;
GO

-- 1. Listar todos los nombres de los productos.
SELECT nombre FROM Product;

-- 2. Listar todas las categorías con sus descripciones.
SELECT nombre, description FROM Category;

-- 3. Mostrar nombres y precios de productos con precio mayor a $50.000.
-- Nota: Usamos comparadores estándar (>, <, >=, <=, !=).
SELECT nombre, price 
FROM Product 
WHERE price > 50000;

-- 4. Mostrar productos cuyo nombre contenga la palabra "Samsung".
-- El '%' funciona como comodín (wildcard) para cualquier cadena de caracteres.
SELECT * 
FROM Product 
WHERE nombre LIKE '%Samsung%';

-- 5. Listar las tiendas ubicadas en la zona "Centro".
SELECT * 
FROM Store 
WHERE nombre LIKE '%Centro%';

-- 6. Mostrar los 5 productos más caros de la tabla Product.
-- TOP limita la cantidad de filas; ORDER BY DESC ordena de mayor a menor.
SELECT TOP 5 * 
FROM Product 
ORDER BY price DESC;

-- 7. Listar todos los productos ordenados alfabéticamente por nombre.
-- ASC es el orden por defecto (A-Z).
SELECT * 
FROM Product 
ORDER BY nombre ASC;

-- 8. Mostrar los productos con precio entre $10.000 y $40.000.
-- BETWEEN es inclusivo (equivale a >= y <=).
SELECT * 
FROM Product 
WHERE price BETWEEN 10000 AND 40000;

-- 9. Contar cuántas tiendas hay en total.
-- AS permite renombrar la columna del resultado (Alias).
SELECT COUNT(*) AS total_tiendas 
FROM Store;

-- 10. Mostrar el nombre y precio del producto más barato.
-- Ordenamos por precio ascendente y tomamos solo el primero.
SELECT TOP 1 nombre, price 
FROM Product 
ORDER BY price ASC;
