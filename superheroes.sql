DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );
INSERT INTO creador (id_creador,nombre) VALUES
(1, 'Marvel'),
(2,'DC Comics');

INSERT INTO personajes (id_personaje,nombre_real,personaje,inteligencia,fuerza,velocidad, poder, aparicion,ocupacion,id_creador ) VALUES
(1, 'Bruce Banner', 'Hulk', 160, '600 mil', 75, 98, 1962,'Físico Nuclear',1),
(2, 'Tony Stark', 'Iron Man', 170, '200 mil', 70, 123, 1963,'Físico Nuclear',1),
(3, 'Thor Odison', 'Thor', 145, 'infinita', 100, 235, 1962,'Rey de Asgard',1),
(4, 'Wanda Maximoff', 'Bruja Escarlata', 170, '100 mill', 90, 345, 1964,'Bruja',1),
(5,'Carol Danvers', 'Capitana Marvel', 157, '250 mil', 85, 128, 1968,'Oficina de Inteligencia',1),
(6, 'Thanos', 'Thanos', 170, 'infinita', 40, 306, 1973,'Adorador de la muerte',1),
(7, 'Peter Parker', 'Spiderman', 165, '25 mil', 80, 74, 1962,'Fotógrafo',1),
(8, 'Steve Rogers', 'Capitan America', 145, '600 mil', 45, 60, 1941,'Oficial Federal',1),
(9, 'Bobby Drake', 'Ice Man', 140, '2 mil', 64, 122, 1963,'Contador',1),
(10,'Barry Allen', 'Flash', 160, '10 mil', 120, 168, 1956,'Científico Forense',2),
(11, 'Bruce Wayne', 'Bataman', 170, '500 mil', 32, 47, 1939,'Hombre de Negocios ',2),
(12, 'Clarck Kent', 'Superman', 165, 'infinita', 120, 182, 1948,'Reportero',2),
(13,'Diana Prince', 'Mujer MAravilla', 160, 'infinita', 95, 127, 1949,'Pricesa guerrera',1);

SELECT * FROM creador;
SELECT * FROm personajes;

# Cambiar en la tabla personajes el año de aparición a 1938 del personaje Superman.
UPDATE personajes
SET aparicion=1938
WHERE personaje LIKE 'Superman';

# Eliminar el registro que contiene al personaje Flash.
DELETE FROM personajes
WHERE personaje = 'Flash';

#Realiza una consulta que devuelva todos los valores de la columna “nombre_real” de la tabla superhéroe.
SELECT nombre_real FROM personajes;

# Realiza una consulta que devuelva todos los nombres reales de los personajes cuyo nombre empieza con “B”
SELECT nombre_real FROM personajes
WHERE nombre_real LIKE 'B%';

# Realiza una consulta que devuelva todos los registros ordenados por “inteligencia
SELECT * FROM personajes
ORDER BY inteligencia;