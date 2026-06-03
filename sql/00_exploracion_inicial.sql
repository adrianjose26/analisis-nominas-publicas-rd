-- ============================================================
-- 00 - EXPLORACIÓN INICIAL DE LA BASE DE DATOS
-- ============================================================
-- Proyecto: Análisis de Nóminas Públicas - República Dominicana
-- Autor: Adrian J. Ventura
-- Descripción: Queries iniciales de exploración para entender 
-- la estructura y el contenido de las tablas principales.
-- ============================================================

USE nomina_dominicana;

-- ------------------------------------------------------------
-- 1. Ver estructura de la tabla principal
-- ------------------------------------------------------------
DESCRIBE nomina;

-- ------------------------------------------------------------
-- 2. Ver primeros registros de la tabla nomina
-- ------------------------------------------------------------
SELECT * 
FROM nomina 
LIMIT 10;

-- ------------------------------------------------------------
-- 3. Contar el total de registros en la nómina
-- ------------------------------------------------------------
SELECT COUNT(*) AS total_registros 
FROM nomina;

-- ------------------------------------------------------------
-- 4. Ver el catálogo de instituciones
-- ------------------------------------------------------------
SELECT * 
FROM instituciones 
LIMIT 10;

-- ------------------------------------------------------------
-- 5. Empleados con sueldo bruto mayor o igual a RD$35,000
--    (consulta con JOIN entre nómina e instituciones)
-- ------------------------------------------------------------
SELECT 
    n.nombre_empleado, 
    n.sueldo_bruto, 
    i.nombre AS institucion
FROM nomina AS n
INNER JOIN instituciones AS i
    USING (id_institucion)
WHERE n.sueldo_bruto >= 35000
ORDER BY n.sueldo_bruto DESC;
