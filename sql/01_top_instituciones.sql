-- ============================================================
-- 01 - TOP INSTITUCIONES POR GASTO EN NÓMINA
-- ============================================================
-- Proyecto: Análisis de Nóminas Públicas - República Dominicana
-- Autor: Adrian J. Ventura
-- 
-- Pregunta de negocio:
-- ¿Cuáles son las 10 instituciones del Estado con mayor 
-- gasto mensual en nómina?
--
-- Esta query es la base del primer visual del dashboard
-- en Power BI (gráfico de barras horizontal).
-- ============================================================

USE nomina_dominicana;

-- ------------------------------------------------------------
-- Query principal: Top 10 instituciones por gasto total
-- ------------------------------------------------------------
SELECT 
    i.nombre AS institucion,
    COUNT(n.id_nomina) AS total_empleados,
    SUM(n.sueldo_bruto) AS gasto_total,
    ROUND(AVG(n.sueldo_bruto), 2) AS sueldo_promedio,
    MAX(n.sueldo_bruto) AS sueldo_maximo
FROM nomina AS n
INNER JOIN instituciones AS i
    USING (id_institucion)
GROUP BY i.nombre
ORDER BY gasto_total DESC
LIMIT 10;


-- ------------------------------------------------------------
-- Query alterna: Top 10 instituciones por número de empleados
-- (útil para comparar tamaño vs gasto)
-- ------------------------------------------------------------
SELECT 
    i.nombre AS institucion,
    COUNT(n.id_nomina) AS total_empleados,
    SUM(n.sueldo_bruto) AS gasto_total
FROM nomina AS n
INNER JOIN instituciones AS i
    USING (id_institucion)
GROUP BY i.nombre
ORDER BY total_empleados DESC
LIMIT 10;


-- ------------------------------------------------------------
-- Query con filtro por año (para analizar un periodo específico)
-- ------------------------------------------------------------
SELECT 
    i.nombre AS institucion,
    n.anio,
    SUM(n.sueldo_bruto) AS gasto_anual
FROM nomina AS n
INNER JOIN instituciones AS i
    USING (id_institucion)
WHERE n.anio = 2025
GROUP BY i.nombre, n.anio
ORDER BY gasto_anual DESC
LIMIT 10;
