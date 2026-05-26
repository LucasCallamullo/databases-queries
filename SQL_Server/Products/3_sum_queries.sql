-- Sumar el precio de todos los productos
SELECT SUM(price) AS precio_total_inventario
FROM Product;

-- Sumar el stock total de todos los productos en todas las tiendas
SELECT SUM(stock) AS stock_total
FROM Product_x_Store;

-- Sumar el precio de los productos de una categoría específica (ej: Electrónica, id=1)
SELECT SUM(p.price) AS precio_total_electronica
FROM Product p
WHERE p.category_id = 1;



-- Precio promedio de todos los productos
SELECT AVG(price) AS precio_promedio
FROM Product;

-- Stock promedio por relación producto-tienda
SELECT AVG(stock) AS stock_promedio
FROM Product_x_Store;

-- Precio promedio de productos de la categoría 'Hogar' (id=2)
SELECT AVG(p.price) AS precio_promedio_hogar
FROM Product p
WHERE p.category_id = 2;



-- Cantidad total de productos
SELECT COUNT(*) AS cantidad_productos
FROM Product;

-- Cantidad de productos que tienen precio (cuenta los NOT NULL)
SELECT COUNT(price) AS productos_con_precio
FROM Product;

-- Cantidad de categorías distintas que tienen productos asignados
SELECT COUNT(DISTINCT category_id) AS categorias_con_productos
FROM Product;

-- Cantidad de tiendas que tienen stock (considerando solo las que aparecen en Product_x_Store)
SELECT COUNT(DISTINCT store_id) AS tiendas_con_stock
FROM Product_x_Store;



-- Producto más caro y más barato
SELECT 
    MAX(price) AS precio_maximo,
    MIN(price) AS precio_minimo
FROM Product;

-- Fecha de primera y última venta (si tuvieras tabla de ventas)
SELECT MIN(fecha_venta) AS primera_venta, MAX(fecha_venta) AS ultima_venta
FROM Ventas;

-- Producto con mayor stock en una tienda específica (ej: tienda id=1)
SELECT MAX(stock) AS max_stock_tienda1
FROM Product_x_Store
WHERE store_id = 1;

-- Estadísticas completas de precios de productos
SELECT 
    COUNT(*) AS cantidad_productos,
    SUM(price) AS suma_total_precios,
    AVG(price) AS precio_promedio,
    MAX(price) AS precio_maximo,
    MIN(price) AS precio_minimo
FROM Product;



-- Stock total por categoría (sumando stock de todas las tiendas)
SELECT 
    c.nombre AS categoria,
    SUM(ps.stock) AS stock_total
FROM Category c
INNER JOIN Product p ON c.id = p.category_id
INNER JOIN Product_x_Store ps ON p.id = ps.product_id
GROUP BY c.id, c.nombre
ORDER BY stock_total DESC;



-- Si hubiera una columna opcional, como 'description' en Category
-- COUNT(description) cuenta solo las que NO son NULL
-- COUNT(*) cuenta todas las filas

SELECT 
    COUNT(*) AS total_categorias,
    COUNT(description) AS categorias_con_descripcion
FROM Category;


