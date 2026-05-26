-- Productos con precio MAYOR a 100,000
SELECT nombre, price
FROM Product
WHERE price > 100000;

-- Productos con precio EXACTAMENTE 89,999.99
SELECT nombre, price
FROM Product
WHERE price = 89999.99;

-- Productos con precio DIFERENTE de 0
SELECT nombre, price
FROM Product
WHERE price <> 0;

-- Productos con precio entre 50,000 y 200,000 (alternativa a BETWEEN)
SELECT nombre, price
FROM Product
WHERE price >= 50000 AND price <= 200000;



-- Productos con precio entre 50,000 y 150,000
SELECT nombre, price FROM Product WHERE price BETWEEN 50000 AND 150000;

-- Fechas (ejemplo conceptual con otra tabla)
-- Pedidos realizados en un mes específico
SELECT * FROM Pedidos WHERE fecha_pedido BETWEEN '2025-01-01' AND '2025-01-31';

-- Alternativa sin BETWEEN (mismo resultado)
SELECT nombre, price FROM Product WHERE price >= 50000 AND price <= 150000;



-- Productos de categorías específicas (IDs 1, 3, 5)
SELECT nombre, category_id, price FROM Product 
    WHERE category_id IN (1, 3, 5);

-- Alternativa con OR (más verbosa)
SELECT nombre, category_id, price FROM Product 
    WHERE category_id = 1 OR category_id = 3 OR category_id = 5;

-- NOT IN: excluir categorías
SELECT nombre, category_id, price FROM Product 
    WHERE category_id NOT IN (2, 4, 6);

-- Tiendas con stock disponible (usando subconsulta, más avanzado)
-- Esto lo veremos después con subconsultas



-- Productos que empiezan con 'Smart'
SELECT nombre, price FROM Product
    WHERE nombre LIKE 'Smart%';
-- Resultado: 'Smartphone XYZ', 'Smart watch' (si existiera)

-- Productos que contienen 'Book' o 'Libro'
SELECT nombre, price FROM Product
    WHERE nombre LIKE '%Book%' OR nombre LIKE '%Libro%';

-- Productos con nombre de exactamente 5 letras que empiezan con 'S'
-- (5 guiones bajos = 5 caracteres)
SELECT nombre, price FROM Product
    WHERE nombre LIKE 'S____';  
    -- Ej: 'Smart' no (tiene 5?), 'Silla'? Depende

-- Caso especial: buscar un nombre que contiene '%'
-- Se usa ESCAPE para tratar el '%' como carácter literal
SELECT * FROM Product
    WHERE nombre LIKE '100\%' ESCAPE '\';



-- Productos sin descripción (si tuvieran columna description)
-- (en nuestra tabla Product no hay descripción, pero conceptualmente)
SELECT nombre, price FROM Product
    WHERE description IS NULL;

-- Tiendas sin dirección cargada
SELECT nombre, direccion FROM Store
    WHERE direccion IS NULL;

-- Productos que SÍ tienen precio definido (no nulo)
SELECT nombre, price FROM Product
    WHERE price IS NOT NULL;

-- Combinado con otras condiciones
SELECT nombre, category_id, price FROM Product
    WHERE price IS NOT NULL AND category_id = 1;


SELECT E.ApelEmp AS Empleado, E.NomEmp, 
    JEFE.ApelEmp AS ApellidoJefe, JEFE.NomEmp AS NombreJefe
        FROM Empleados E
        LEFT JOIN Empleados JEFE ON E.NroJefe = JEFE.NroEmp;
