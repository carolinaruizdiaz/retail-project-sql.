-- 2. DDL - CREACION DE TABLAS

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    edad INTEGER NOT NULL,
    fecha_registro DATE NOT NULL,
    CONSTRAINT chk_edad CHECK (edad >= 18)
);
CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INTEGER NOT NULL,
    CONSTRAINT chk_precio CHECK (precio > 0),
    CONSTRAINT chk_stock CHECK (stock >= 0)
);
CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    fecha_venta DATE NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_venta_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    CONSTRAINT fk_venta_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    CONSTRAINT chk_cantidad CHECK (cantidad > 0),
    CONSTRAINT chk_precio_unitario CHECK (precio_unitario > 0)
);

-- 3. DML - CARGA INICIAL DE DATOS
BEGIN;

INSERT INTO clientes
(nombre, apellido, email, edad, fecha_registro)
VALUES
('Juan', 'Perez', 'juan.perez@email.com', 28, '2026-01-10'),
('Maria', 'Gomez', 'maria.gomez@email.com', 35, '2026-01-12'),
('Carlos', 'Rodriguez', 'carlos.rodriguez@email.com', 42, '2026-01-15'),
('Ana', 'Martinez', 'ana.martinez@email.com', 25, '2026-01-18'),
('Lucia', 'Fernandez', 'lucia.fernandez@email.com', 31, '2026-01-20');

INSERT INTO productos
(nombre, categoria, precio, stock)
VALUES
('Laptop Lenovo', 'Electronica', 850.00, 10),
('Mouse Logitech', 'Electronica', 25.50, 50),
('Teclado Redragon', 'Electronica', 45.00, 30),
('Silla ergonomica', 'Muebles', 220.00, 15),
('Escritorio de oficina', 'Muebles', 310.00, 8);

INSERT INTO ventas
(id_cliente, id_producto, cantidad, fecha_venta, precio_unitario)
VALUES
(1, 1, 1, '2026-02-01', 850.00),
(2, 2, 2, '2026-02-02', 25.50),
(3, 3, 1, '2026-02-03', 45.00),
(4, 4, 1, '2026-02-04', 220.00),
(5, 5, 2, '2026-02-05', 310.00);

COMMIT;

-- 4. UPDATE - ACTUALIZACION MASIVA DE PRECIOS

SELECT *
FROM productos
WHERE categoria = 'Electronica';
UPDATE productos
SET precio = precio * 1.10
WHERE categoria = 'Electronica';

-- 5. DELETE - ELIMINACION DE VENTA DE PRUEBA

SELECT *
FROM ventas
WHERE id_venta = 5;

DELETE FROM ventas
WHERE id_venta = 5;

-- 6. CONSULTAS FINALES DE VERIFICACION

SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;




