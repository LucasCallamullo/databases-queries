-- =====================================================
-- POPULAR TABLAS CON DATOS DE EJEMPLO
-- =====================================================

-- =====================================================
-- 1. CATEGORY (Categorías de productos)
-- =====================================================
INSERT INTO Category (nombre, description) VALUES
('Electrónica', 'Productos electrónicos, gadgets y accesorios'),
('Hogar', 'Artículos para el hogar y decoración'),
('Deportes', 'Equipamiento y ropa deportiva'),
('Jardinería', 'Herramientas y plantas para jardín'),
('Juguetes', 'Juguetes para niños y niñas'),
('Libros', 'Libros y material de lectura'),
('Música', 'Instrumentos musicales y accesorios'),
('Oficina', 'Artículos de oficina y papelería');

-- =====================================================
-- 2. STORE (Tiendas)
-- =====================================================
INSERT INTO Store (nombre, direccion) VALUES
('ElectroCenter Córdoba', 'Av. Colón 1234, Córdoba'),
('ElectroCenter Rosario', 'San Martín 567, Rosario'),
('Hogar & Casa', 'Luis de Tejeda 234, Córdoba'),
('Deportes Martínez', 'Av. Vélez Sarsfield 890, Córdoba'),
('MegaTienda', 'Av. Sabattini 456, Córdoba'),
('Tienda Norte', 'Av. Recta Martinolli 789, Córdoba');

-- =====================================================
-- 3. PRODUCT (Productos)
-- =====================================================
INSERT INTO Product (nombre, category_id, price) VALUES
-- Electrónica (id 1)
('Smartphone XYZ', 1, 299999.99),
('Notebook Ultra', 1, 899999.99),
('Auriculares Bluetooth', 1, 24999.99),
('Tablet 10"', 1, 159999.99),
('Parlante Portátil', 1, 39999.99),

-- Hogar (id 2)
('Juego de Sábanas', 2, 18999.99),
('Lampara LED', 2, 12500.00),
('Mesa de Luz', 2, 45999.99),
('Sillón 2 Cuerpos', 2, 189999.99),
('Cortinas Blackout', 2, 29999.99),

-- Deportes (id 3)
('Pelota de Fútbol', 3, 15999.99),
('Raqueta de Tenis', 3, 45999.99),
('Bicicleta Mountain Bike', 3, 429999.99),
('Mancuernas 5kg', 3, 8999.99),
('Cinta de Correr', 3, 899999.99),

-- Jardinería (id 4)
('Manguera 20m', 4, 8999.99),
('Tijera de Podar', 4, 3499.99),
('Maceta Grande', 4, 5999.99),
('Sustrato 10L', 4, 2499.99),
('Rastrillo', 4, 4299.99),

-- Juguetes (id 5)
('Muñeca Soñadora', 5, 28999.99),
('Auto a Control Remoto', 5, 19999.99),
('Juego de Bloques', 5, 14999.99),
('Rompecabezas 1000pz', 5, 8999.99),
('Pelota Saltarina', 5, 7999.99),

-- Libros (id 6)
('El Principito', 6, 8999.99),
('Cien Años de Soledad', 6, 14999.99),
('Python para Todos', 6, 25999.99),
('Historia Argentina', 6, 18999.99),
('El Libro de la Selva', 6, 7999.99),

-- Música (id 7)
('Guitarra Acústica', 7, 89999.99),
('Batería Electrónica', 7, 459999.99),
('Teclado 61 teclas', 7, 129999.99),
('Micrófono Profesional', 7, 39999.99),
('Funda para Guitarra', 7, 12999.99),

-- Oficina (id 8)
('Silla Ergonómica', 8, 159999.99),
('Escritorio', 8, 89999.99),
('Resma de Hojas A4', 8, 4999.99),
('Marcadores Permanentes', 8, 2499.99),
('Perforadora', 8, 5999.99);

-- =====================================================
-- 4. PRODUCT_X_STORE (Stock por tienda)
-- =====================================================

-- ElectroCenter Córdoba (store_id = 1)
INSERT INTO Product_x_Store (product_id, store_id, stock) VALUES
-- Smartphone XYZ
(1, 1, 15),
-- Notebook Ultra
(2, 1, 8),
-- Auriculares Bluetooth
(3, 1, 30),
-- Tablet 10"
(4, 1, 12),
-- Parlante Portátil
(5, 1, 20),
-- Juego de Sábanas
(6, 1, 10),
-- Lampara LED
(7, 1, 25),
-- Pelota de Fútbol
(11, 1, 40),
-- Raqueta de Tenis
(12, 1, 8),
-- Silla Ergonómica
(41, 1, 5);

-- ElectroCenter Rosario (store_id = 2)
INSERT INTO Product_x_Store (product_id, store_id, stock) VALUES
(1, 2, 10),
(2, 2, 5),
(3, 2, 25),
(4, 2, 8),
(5, 2, 15),
(14, 2, 20), -- Mancuernas 5kg
(21, 2, 12); -- Muñeca Soñadora

-- Hogar & Casa (store_id = 3)
INSERT INTO Product_x_Store (product_id, store_id, stock) VALUES
(6, 3, 20),
(7, 3, 30),
(8, 3, 6),
(9, 3, 4),
(10, 3, 15),
(16, 3, 12), -- Manguera 20m
(17, 3, 25); -- Tijera de Podar

-- Deportes Martínez (store_id = 4)
INSERT INTO Product_x_Store (product_id, store_id, stock) VALUES
(11, 4, 50),
(12, 4, 10),
(13, 4, 3),
(14, 4, 30),
(15, 4, 2),
(31, 4, 5), -- Guitarra Acústica
(32, 4, 1); -- Batería Electrónica

-- MegaTienda (store_id = 5) - Productos variados
INSERT INTO Product_x_Store (product_id, store_id, stock) VALUES
(1, 5, 25),
(2, 5, 12),
(3, 5, 40),
(6, 5, 30),
(11, 5, 35),
(16, 5, 20),
(21, 5, 15),
(26, 5, 25), -- El Principito
(27, 5, 18), -- Cien Años de Soledad
(28, 5, 10), -- Python para Todos
(31, 5, 8),
(36, 5, 12), -- Silla Ergonómica
(41, 5, 20); -- Resma de Hojas A4

-- Tienda Norte (store_id = 6)
INSERT INTO Product_x_Store (product_id, store_id, stock) VALUES
(4, 6, 5),
(5, 6, 10),
(8, 6, 3),
(13, 6, 2),
(19, 6, 15), -- Maceta Grande
(22, 6, 20), -- Auto a Control Remoto
(29, 6, 12), -- El Libro de la Selva
(33, 6, 6), -- Teclado 61 teclas
(42, 6, 30); -- Marcadores Permanentes

-- =====================================================
-- 5. VERIFICAR DATOS CARGADOS (Consultas de chequeo)
-- =====================================================

-- Ver cantidad de categorías
SELECT 'Categorías cargadas: ' + CAST(COUNT(*) AS VARCHAR) FROM Category;

-- Ver cantidad de productos
SELECT 'Productos cargados: ' + CAST(COUNT(*) AS VARCHAR) FROM Product;

-- Ver cantidad de tiendas
SELECT 'Tiendas cargadas: ' + CAST(COUNT(*) AS VARCHAR) FROM Store;

-- Ver cantidad de relaciones producto-tienda
SELECT 'Registros en Product_x_Store: ' + CAST(COUNT(*) AS VARCHAR) FROM Product_x_Store;