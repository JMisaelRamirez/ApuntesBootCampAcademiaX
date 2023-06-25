CREATE TABLE IF NOT EXISTS libros (
    id int NOT NULL,
    autor varchar(255) DEFAULT NULL,
    titulo varchar(50) DEFAULT NULL,
    año int,
    "precio $MXN" int,
    PRIMARY KEY (id) 
);

INSERT INTO libros (id, autor, titulo, año, "precio $MXN") VALUES
(1, 'JMisaelRamirez', '12 Pasos', 2001, 250),
(2, 'JLopezSantiago', 'Libros Azul', 1998, 180),
(3, 'ERamirezCortes', '12 Tradiciones', 2020, 100),
(4, 'SCortesIslas', 'Acrimonio', 1776, 380),
(5, 'JRamirezRamirez', 'Guapangix', 2002, 200);