# **APUNTES SQL**
## **DUDAS**
## **NOTAS RAPIDAS**
> SQL -> Lenguaje de consulta estructurado (Structured Query Language). Es un lenguaje de programacion. Sirven para interacturas con bases de datos relacionales. 

> Tecnologias que utilizan SQL -> DBMS, APlicacion Empresariales, Sitios Web, Aplicaicones Moviles. 

> DBMS -> DataBase Management System (Sistema de gestion d ebase de datos). Algunos son: PostgreSQL, MySQL. Oracle y Microsoft SQL Server. Cuya función es servir de interfaz entre la base de datos, el usuario y las distintas aplicaciones utilizadas.

> DBMS & SQL -> SQL (Structured Query Language) es tan solo el lenguaje.
RDBMS (Relational Database Management System) es el sistema (o programa) que administra todos nuestros datos. 

> PGAdmin -> Es una app (aplicación) que se conecta con nuestro RDBMS (PostgreSQL) para escribir SQL fácilmente. Sirve para manipular datos en postgres o otro tipo d ebase de datos. 

> https://insights.stackoverflow.com/survey/2021#most-loved-dreaded-and-wanted-database-want Muestra estaditicas muy importantes. 

> SQL es un lenguaje declarativo y no imperativo. 

> ORM -> Object Directional  Mapping (Asignacion o mapeo de objeto realacional )

> | -> Este es un signo pype 

> En database vamos a alojar diferentes bases de datos 

> Fila se dice record, osea un dato. Tambien asi, una columna es un file o campo. 

> SQL trata a las comillas simples como si fueran texto de datos. Cuando no son texto de datos se colocan sin comillas dobles o con comillas dobles. 

> Es una buen apractica escribir todas las palabras reservadas por sql en mayusculas. 

> Cuando se inserta un nuevo dato es importarte establecer el id

> LA forma de hacer las comparaciones ees utilizando la palabra UPPER o incluso LOWER

> Cuando trabjemos con tiempos tenemos qu eller ISO 8601 o informacion

> Where trabaja con los datos que vienen de la tabla y having viene de los datos agregados. 


![ORM](./srcSQL/ORM.png)
## **NOTAS**
### **Iniciar un proyecto en PostgreSQL**
1. Abrir PGAdmin
2. Nos posiiconamos en Servers/PostgreSQL/Databass/postgres y damos click en tools/querytools.
3. Damos click en el logo de un archivo para abrir un archivo .sql 
4. Ejecutamos el codigo. 

Verificamos que el query ha sido exitoso y a insertado los records o datos. 

1. Nos posicionamos en Servers/PostgreSQL/Databass/postgres/scehamas/public/tablas/paises damos click derecho en paises y damos click en view/Edit data/all arrows


## **APUNTES**
### **Partes de SQL**
##### **Operaciones CRUD**

```sql
-- Operaciones CRUD
SELECT * FROM paises WHERE nombre = 'Algeria';

INSERT INTO "paises" ("id", "iso", "nombre") VALUES (1, 'AF', 'AFGHANISTAN');

UPDATE "paises" SET nombre = 'ALGE', iso = 'AA' WHERE nombre = 'Algeria'

DELETE FROM paises WHERE nombre = 'Algeria'

-- Se puede o no utilizar las comillas en el nombre del archivo. 
```

### **Organizacion**
##### **Como podemos saber si postgreSQL esta corriendo?**
1. La primera manera: 
Ejecutamos: ps auxwww | grep postgres

ps auxwww -> Este comando nos brinda una lista de todos los programas y procesos que se estan ejecutando detras de ecena. Y con el pype podemos filtrar la respuesta. 

2. Segunda manera: Meterse a pgADMIN dar click derecho en postgreSQL 

##### **Relacion de datos**

La forma de organizar las tablas puede ser de forma relacional, donde cada dato este realacionado con algun otro dato de otra tabla. 

### **Consultas**
Sirven para saber cuantos datos vamos a obtener y no necesariamente obtener los datos (solo la cantidad). Esto se hace con la palabra reservada `COUNT()`

#### **¿Como obtenemos grupos de datos desde nuestras tablas limitando el numero de resultados y hacer qu elos resultados se comporten como paginas de resultados ?**
Se hace utilizando un LIMIT 3 OFFSET 6;

## **Aplicacion de los tipos de datos**
Texto -> Nombres o descripciones 
Numero -> Costo de un producto o edad de una persona.
Fecha -> cuando se compro un producto
Saber bien el tipo de datos nos permetira optimizar bien nuestra memoria. 

Hay diferentes tipos de datos por lo tanto es comveniente acceder a la pagina de sql para ver todos los tipos de datos. 

Los mas comunes son int y tambien varchar () dentro del parentesis va la cantida de caracteres que pueden acceder o almacenar esa variable.

Puedes ver todos los tipos de datos para PostgreSQL aquí:
https://www.postgresql.org/docs/14/datatype.html

  
## Textos
En la documentación oficial de PostgreSQL puedes ver todos los operadores que existen para texto con ejemplos:
https://www.postgresql.org/docs/9.3/functions-string.html

## Numeros 
En la documentación oficial puedes ver todos los datos con los que puedes trabajar que son de tipo numérico y el tamaño que ocupan en bytes:
https://www.postgresql.org/docs/9.3/datatype-numeric.html

## **ROUND**
SQL ofrece muchísimas más funciones y la documentación oficial muestra una tabla de todas las funciones disponibles:
https://www.postgresql.org/docs/9.3/functions-math.html

## **TIEMPO**
La documentación oficial incluye más información sobre datos para tiempo y fecha:
https://www.postgresql.org/docs/9.3/datatype-datetime.html
También puedes leer más sobre el formato estandarizado de fechas y tiempos ISO 8601:
https://es.wikipedia.org/wiki/ISO_8601

## **Funcion PG_TYPEOF**
Al igual que PG_TYPEOF, hay muchas funciones del sistema que no son muy utilizadas pero pueden ser útiles en situaciones únicas:
https://www.postgresql.org/docs/9.3/functions-info.html

## **Agrupar**
Más detalles sobre GROUP BY y HAVING aquí:
https://www.postgresql.org/docs/current/queries-table-expressions.html#QUERIES-GROUP






## **Preguntas**
1.	¿Qué es SQL?
2.	¿Para qué se utiliza SQL?
3.	¿Cuáles son las principales sentencias de SQL?
4.	¿Cómo se crea una tabla en SQL?
5.	¿Cómo se inserta, actualiza y elimina información de una tabla en SQL?
6.	¿Cómo se hace una consulta en SQL?
7.	¿Cómo se unen dos o más tablas en SQL?
8.	¿Cómo se utilizan los índices en SQL?
9.	¿Cómo se protege la seguridad de una base de datos en SQL?
10.	¿Cuáles son las diferencias entre las distintas versiones de SQL?

## **VOCABULARIO**
Query - Consulta
