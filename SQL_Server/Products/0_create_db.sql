-- =====================================================
-- 1. CREAR LA BASE DE DATOS
-- =====================================================
CREATE DATABASE MiProyectoEstudio;

-- =====================================================
-- 2. SELECCIONAR LA BASE DE DATOS A USAR
-- =====================================================
USE MiProyectoEstudio;

-- =====================================================
-- 3. TABLA: Category (Categorías de productos)
-- =====================================================
CREATE TABLE Category(
    id INT PRIMARY KEY IDENTITY(1,1),          -- Clave primaria, autoincremental
    nombre VARCHAR(32) NOT NULL,               -- Nombre de la categoría
    description VARCHAR(200) NULL              -- Descripción opcional
);

-- =====================================================
-- 4. TABLA: Product (Productos)
-- =====================================================
CREATE TABLE Product(
    id INT PRIMARY KEY IDENTITY(1,1),          -- PK, autoincremental
    nombre VARCHAR(40) NOT NULL,               -- Nombre del producto
    category_id INT NOT NULL,                  -- FK hacia Category (antes se agregaba con ALTER)
    price DECIMAL(10,2) NOT NULL DEFAULT 0,    -- Precio con 2 decimales, valor por defecto 0
    CONSTRAINT FK_Product_Category 
        FOREIGN KEY (category_id) REFERENCES Category(id)  -- Relación con Category
);

-- =====================================================
-- 5. TABLA: Store (Tiendas)
-- =====================================================
CREATE TABLE Store(
    id INT PRIMARY KEY IDENTITY(1,1),          -- PK, autoincremental
    nombre VARCHAR(40) NOT NULL,               -- Nombre de la tienda
    direccion VARCHAR(60) NULL                 -- Dirección (opcional)
);

-- =====================================================
-- 6. TABLA: Product_x_Store (Relación muchos a muchos)
--    Un producto puede estar en varias tiendas.
--    Una tienda puede tener varios productos.
-- =====================================================
CREATE TABLE Product_x_Store(
    id INT PRIMARY KEY IDENTITY(1,1),          -- PK, autoincremental (no estrictamente necesaria)
    product_id INT NOT NULL,                   -- FK hacia Product
    store_id INT NOT NULL,                     -- FK hacia Store
    stock INT NOT NULL DEFAULT 0,              -- Stock del producto en esa tienda
    CONSTRAINT fk_product 
        FOREIGN KEY (product_id) REFERENCES Product(id),
    CONSTRAINT fk_store 
        FOREIGN KEY (store_id) REFERENCES Store(id),
    CONSTRAINT UQ_Product_Store 
        UNIQUE (product_id, store_id)          -- Evita duplicar la misma combinación producto-tienda
);