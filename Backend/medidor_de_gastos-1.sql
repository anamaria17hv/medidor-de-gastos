-- Active: 1787271961771@@127.0.0.1@3306@medidor_de_gastos
-- Base de datos: medidor_de_gastos
-- Proyecto: Medidor de Gastos

CREATE DATABASE IF NOT EXISTS medidor_de_gastos
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE medidor_de_gastos;

CREATE TABLE IF NOT EXISTS Gastos (
    id_gasto INT NOT NULL AUTO_INCREMENT,
    monto DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    tipo ENUM('Ingreso','Gasto') NOT NULL,
    PRIMARY KEY (id_gasto)
) ENGINE=InnoDB;

-- Datos de ejemplo
INSERT INTO Gastos (monto, categoria, fecha, tipo) VALUES
(25000.00, 'Comida', '2026-08-13', 'Gasto'),
(500000.00, 'Salario', '2026-08-01', 'Ingreso'),
(45000.00, 'Transporte', '2026-08-12', 'Gasto');

-- Consultar los registros
SELECT * FROM Gastos;
