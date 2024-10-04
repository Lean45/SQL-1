CREATE TABLE Empleados (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 apellido VARCHAR(50),
 fecha_nacimiento DATE,
 puesto VARCHAR(50),
 salario DECIMAL(10, 2)
);

INSERT INTO Empleados (id, nombre, apellido, fecha_nacimiento, puesto, salario) VALUES
(1, 'Juan', 'Pérez', '1985-05-15', 'Desarrollador', 50000.00),
(2, 'María', 'Gómez', '1990-08-22', 'Analista', 45000.00),
(3, 'Carlos', 'Rodríguez', '1982-03-10', 'Gerente', 70000.00),
(4, 'Laura', 'Martínez', '1995-11-05', 'Diseñador', 40000.00),
(5, 'Pedro', 'López', '1988-07-18', 'Desarrollador', 55000.00);

-- Punto 3
SELECT * FROM Empleados;

-- Punto 4
SELECT * FROM Empleados WHERE puesto = 'Desarrollador';

5
SELECT * FROM Empleados ORDER BY salario DESC;

6
SELECT DISTINCT puesto FROM Empleados;

7
SELECT * FROM Empleados WHERE salario > 50000 AND puesto = 'Desarrollador';

8
SELECT * FROM Empleados WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1990-12-31';

9
SELECT * FROM Empleados WHERE apellido LIKE 'G%';

10
SELECT * FROM Empleados WHERE puesto IN ('Desarrollador', 'Gerente');

11
CREATE TABLE productos(
id INT AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
precio INT NOT NULL,
categoria VARCHAR(50) NOT NULL,
stock INT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO productos (nombre, precio, categoria, stock)
VALUES
('Laptop', 1200.00, 'Electrónica', 6),
('Smartphone', 800.00, 'Electrónica', 7),
('Cafetera', 50.00, 'Hogar', 8),
('Libro', 20.00, 'Libros', 9),
('Tablet', 300.00, 'Electrónica', 10);

-- Punto 13
SELECT * FROM productos;

-- Punto 14
SELECT * FROM productos WHERE categoria = 'Electrónica';

-- Punto 15
SELECT * FROM productos ORDER BY precio ASC;

-- Punto 16
SELECT DISTINCT categoria FROM productos;

-- Punto 17
SELECT * FROM productos WHERE precio > 50 AND categoria = 'Electrónica';

-- Punto 18
SELECT * FROM productos WHERE 10 < precio AND precio < 100;

-- Punto 19
SELECT nombre FROM productos WHERE nombre LIKE '%Camiseta%' 

-- Punto 20
SELECT * FROM productos WHERE categoria = 'Ropa' OR categoria = 'Electrónica';

-- Punto 21
CREATE TABLE clientes(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(59) NOT NULL,
email VARCHAR(60) NOT NULL,
fecha_registro DATE NOT NULL
);

INSERT INTO clientes (nombre, apellido, email, fecha_registro) 
VALUES
('Ana', 'García', 'ana.garcia@example.com', '2022-01-10'),
('Luis', 'Fernández', 'luis.fernandez@example.com', '2022-02-15'),
('Sofía', 'Ramírez', 'sofia.ramirez@example.com', '2022-03-20'),
('Diego', 'Sánchez', 'diego.sanchez@example.com', '2022-04-25'),
('Elena', 'Pérez', 'elena.perez@example.com', '2022-05-30');

-- Ejercicio 23
SELECT * FROM clientes;

-- Punto 24
SELECT * FROM clientes WHERE fecha_registro > '2022-01-01';

-- Punto 25
SELECT * FROM clientes ORDER BY fecha_registro DESC;

-- Punto 26
SELECT DISTINCT email FROM clientes;

-- Punto 27
SELECT * FROM clientes WHERE fecha_registro > '2022-01-01' AND apellido = 'Garcia';

-- Punto 28
SELECT * FROM clientes WHERE fecha_registro BETWEEN '2022-01-01' AND '2022-12-31';

-- Punto 29
SELECT * FROM clientes WHERE nombre LIKE 'A%';

-- Punto 30
SELECT * FROM clientes WHERE apellido IN ('García', 'Fernández');

-- Punto 31
CREATE TABLE ventas(
id INT PRIMARY KEY,
fecha DATE NOT NULL,
cliente_id INT NOT NULL,
producto_id INT NOT NULL,
camtidad INT NOT NULL,
total DECIMAL(10, 2) NOT NULL
);

-- Punto 32
INSERT INTO ventas (id, fecha, cliente_id, producto_id, camtidad, total)
VALUES
(1, '2023-01-10', 1, 1, 2, 2000.00),
(2, '2023-01-15', 2, 2, 1, 500.00),
(3, '2023-01-20', 3, 3, 3, 60.00),
(4, '2023-01-25', 4, 4, 2, 30.00),
(5, '2023-01-30', 5, 5, 5, 25.00);

-- Punto 33
SELECT * FROM ventas;

-- Punto 34
SELECT * FROM ventas WHERE fecha > '2023-01-01';

-- Punto 35
SELECT * FROM ventas ORDER BY fecha ASC;

-- Punto 36
SELECT DISTINCT cliente_id FROM ventas;

-- Punto 37
SELECT * FROM ventas WHERE fecha > '2023-01-01' AND total > 100;

-- Punto 38
SELECT * FROM ventas WHERE fecha BETWEEN '2023-01-01' AND '2022-01-31';

-- Punto 39 
SELECT * FROM ventas WHERE fecha LIKE '%2023-01%'

-- Punto 40
SELECT * FROM ventas WHERE cliente_id IN ('1', '2')







