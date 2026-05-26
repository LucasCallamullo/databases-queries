-- ¿Cuántos productos hay por categoría?
SELECT 
    c.nombre AS categoria,
    COUNT(p.id) AS cantidad_productos
FROM Category c
LEFT JOIN Product p ON c.id = p.category_id
GROUP BY c.id, c.nombre;


-- Precio total de productos por categoría
SELECT 
    c.nombre AS categoria,
    SUM(p.price) AS precio_total
FROM Category c
LEFT JOIN Product p ON c.id = p.category_id
GROUP BY c.id, c.nombre
ORDER BY precio_total DESC;


-- Precio promedio de productos por categoría
SELECT 
    c.nombre AS categoria,
    AVG(p.price) AS precio_promedio
FROM Category c
LEFT JOIN Product p ON c.id = p.category_id
GROUP BY c.id, c.nombre;


-- Estadísticas completas por categoría
SELECT 
    c.nombre AS categoria,
    COUNT(p.id) AS cantidad,
    SUM(p.price) AS suma_total,
    AVG(p.price) AS promedio,
    MIN(p.price) AS mas_barato,
    MAX(p.price) AS mas_caro
FROM Category c
LEFT JOIN Product p ON c.id = p.category_id
GROUP BY c.id, c.nombre;


-- Mostrar solo categorías cuyo precio total supere los $500,000
SELECT 
    c.nombre AS categoria,
    SUM(p.price) AS precio_total
FROM Category c
INNER JOIN Product p ON c.id = p.category_id
GROUP BY c.id, c.nombre
HAVING SUM(p.price) > 500000
ORDER BY precio_total DESC;


-- Productos con precio > 50,000, agrupados por categoría
SELECT 
    c.nombre AS categoria,
    COUNT(p.id) AS productos_caros,
    AVG(p.price) AS promedio_caros
FROM Category c
INNER JOIN Product p ON c.id = p.category_id
WHERE p.price > 50000
GROUP BY c.id, c.nombre;



-- Stock total por tienda
SELECT 
    s.nombre AS tienda,
    SUM(ps.stock) AS stock_total
FROM Store s
INNER JOIN Product_x_Store ps ON s.id = ps.store_id
GROUP BY s.id, s.nombre
ORDER BY stock_total DESC;



-- Tiendas con stock total > 100 y con al menos 5 productos diferentes
SELECT 
    s.nombre AS tienda,
    SUM(ps.stock) AS stock_total,
    COUNT(ps.product_id) AS productos_distintos
FROM Store s
INNER JOIN Product_x_Store ps ON s.id = ps.store_id
GROUP BY s.id, s.nombre
HAVING SUM(ps.stock) > 100 AND COUNT(ps.product_id) >= 5
ORDER BY stock_total DESC;