Retail Project - Base de Datos SQL
Descripción del proyecto
Este proyecto consiste en la creación de una base de datos para un sistema de ventas retail, utilizando PostgreSQL.

El objetivo es organizar y almacenar información de clientes, productos y ventas, aplicando restricciones de integridad y realizando una carga inicial de datos.

Tablas creadas
Clientes: almacena los datos personales de los clientes, incluyendo nombre, apellido, email y edad.
Productos: almacena los productos disponibles, su categoría, precio y stock.
Ventas: registra las ventas realizadas, relacionando clientes y productos mediante claves foráneas.
Restricciones de integridad
Se implementaron las siguientes restricciones:

PRIMARY KEY para identificar cada registro.
FOREIGN KEY para relacionar las tablas.
UNIQUE para evitar emails duplicados.
NOT NULL para los campos obligatorios.
CHECK para validar edad, precio, stock, cantidad y precio unitario.
Datos y operaciones
El script incluye:

Inserción de al menos 5 registros en cada tabla.
Transacción explícita mediante BEGIN y COMMIT.
Actualización de precios de productos de una categoría mediante UPDATE.
Eliminación de una venta específica mediante DELETE.
Consultas SELECT para verificar los datos.
Cómo ejecutar el proyecto
Abrir PostgreSQL utilizando pgAdmin 4 o DBeaver.
Crear una base de datos llamada retail_project.
Conectarse a la base de datos creada.
Abrir y ejecutar el archivo script.sql.
Verificar la información mediante las consultas SELECT.
Tecnologías utilizadas
PostgreSQL
SQL (DDL y DML)
Entrega
pre-entrega de Carolina Ruiz Diaz.
