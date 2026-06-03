# Análisis de Nóminas Públicas — República Dominicana 🇩🇴

Análisis exploratorio de datos abiertos de nóminas del sector público dominicano, 
utilizando **SQL (MySQL Workbench)** para la preparación, limpieza y consulta 
de datos, y **Power BI** para la visualización de hallazgos en dashboards interactivos.

---

## 🎯 Objetivo

Identificar patrones de gasto, distribución salarial y concentración de recursos 
en las distintas instituciones del Estado dominicano, transformando datos abiertos 
en información útil para la toma de decisiones.

---

## ❓ Preguntas de Negocio

1. ¿Cuáles son las instituciones del Estado con mayor gasto en nómina?
2. ¿Cómo se distribuyen los salarios entre los empleados del sector público?
3. ¿Existen diferencias salariales por género?
4. ¿Cómo evoluciona el gasto mensual del Estado en nómina?
5. ¿Se identifican salarios atípicos (outliers) respecto al promedio nacional?

---



## 🗂️ Estructura de la Base de Datos

La base `nomina_dominicana` está normalizada y compuesta por las siguientes 8 tablas:

| Tabla | Descripción |
|-------|-------------|
| `nomina` | Tabla principal con registros mensuales por empleado (sueldo, género, mes, año) |
| `instituciones` | Catálogo de instituciones del Estado dominicano |
| `cargos` | Catálogo de cargos y puestos del sector público |
| `sector_gobierno` | Sectores a los que pertenecen las instituciones |
| `estatus_empleado` | Estatus laboral del empleado (activo, inactivo, etc.) |
| `escala_salarial` | Escalas salariales asignadas por cargo |
| `presupuesto_institucional` | Presupuesto anual asignado a cada institución |
| `meses` | Catálogo de meses para análisis temporal |

La estructura normalizada permite realizar análisis cruzados mediante **JOINs** 
entre las tablas, comparando por ejemplo el gasto en nómina vs. el presupuesto 
asignado por institución, o analizando la distribución salarial por sector.
