SELECT COLUMN_NAME ,DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='001_sales';
----CUIDADO CON EL COUNT
SELECT [Id_Producto],COUNT([Id_Producto]) AS Numero_Productos,ROUND(AVG([PVP]),2) AS Precio_Medio
FROM [DATAEX].[001_sales]
GROUP BY [Id_Producto];
---
SELECT [Id_Producto],COUNT([Id_Producto]) AS Numero_Productos,
                    COUNT(DISTINCT[Id_Producto]) AS Productos_Unicos,
                    ROUND(AVG(CAST([PVP] AS float)),2) AS Precio_Medio

FROM[DATAEX].[001_sales]
WHERE [Id_Producto] IS NOT NULL
GROUP BY [Id_Producto]
;

---covertir la fecha a formato texto
SELECT
    [Sales_Date],
    CAST(CONVERT(DATE,Sales_Date,103)AS DATE) AS Fecha_Convertida
    FROM[DATAEX].[001_sales]

--ir a la ayuda de bigquery de azure
SELECT
    [Id_Producto],
    SUM([IMPUESTOS])
FROM[DATAEX].[001_sales]
GROUP BY [Id_Producto];
---Trabajar