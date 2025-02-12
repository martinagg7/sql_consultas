--CLASE 1--


SELECT COLUMN_NAME ,DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='001_sales';
----Agrupar por producto y contar el numero medio de productos y el precio medio
SELECT [Id_Producto],COUNT([Id_Producto]) AS Numero_Productos,ROUND(AVG([PVP]),2) AS Precio_Medio
FROM [DATAEX].[001_sales]
GROUP BY [Id_Producto];
---Agrupar por prodcto contar los distintos y contrar distintivos y quiar los nulos
SELECT [Id_Producto],COUNT([Id_Producto]) AS Numero_Productos,
                    COUNT(DISTINCT[Id_Producto]) AS Productos_Unicos,
                    ROUND(AVG(CAST([PVP] AS float)),2) AS Precio_Medio

FROM[DATAEX].[001_sales]
WHERE [Id_Producto] IS NOT NULL
GROUP BY [Id_Producto]
;

--Ccovertir la fecha a formato texto
 