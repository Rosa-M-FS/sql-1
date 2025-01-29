-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes 
1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
13	Paula	Torres	paula.torres@example.com	24	CSS
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					

-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes 
20
-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad >30

22	Maria	Lopez	maria.lopez@example.com	32	JavaScript
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
12	Daniel	Romero	daniel.romero@example.com	33	HTML
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
					
					
-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'JavaScript'
1

-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad =28
1	Juan	Gomez	juan.gomez@example.com	28	Java
7	Miguel	Perez	miguel.perez@example.com	28	PHP
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					
					
-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE email ='juan.gomez@example.com'
SELECT * FROM usuarios_lenguajes WHERE email LIKE 'juan.gomez@example.com'
1	Juan	Gomez	juan.gomez@example.com	28	Java
					

-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'Java' AND edad <25



-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
SELECT COUNT(DISTINCT edad) FROM usuarios_lenguajes WHERE lenguaje LIKE 'Java' 

1
-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NULL OR lenguaje = ''
-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí
SELECT nombre, edad FROM usuarios_lenguajes WHERE edad =(SELECT MIN(edad) FROM usuarios_lenguajes)
Pedro	22

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí
SELECT nombre,apellido, edad FROM usuarios_lenguajes ORDER BY edad DESC
Ana	Hernandez	35
Adrian	Molina	34
Daniel	Romero	33
Maria	Lopez	32
Raquel	Serrano	32
Javier	Diaz	31
Laura	Fernandez	30
Hector	Ortega	30
Elena	Moreno	29
Carmen	Vega	29
Juan	Gomez	28
Miguel	Perez	28
Alejandro	Ruiz	28
Alberto	Reyes	28
Luis	Sanchez	27
Sofia	Garcia	26
Isabel	Gutierrez	26
Carlos	Rodriguez	25
Paula	Torres	24
Pedro	Martinez	22
-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad >28
10
-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%'
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
					
-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes WHERE edad <30 ORDER BY lenguaje DESC LIMIT 1
VB.NET
-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad >25 AND lenguaje = 'TypeScript'
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
					
-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE  lenguaje = 'Python'
1

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes ORDER BY lenguaje
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
12	Daniel	Romero	daniel.romero@example.com	33	HTML
11	Elena	Moreno	elena.moreno@example.com	29	C#
18	Hector	Ortega	hector.ortega@example.com	30	Perl
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
1	Juan	Gomez	juan.gomez@example.com	28	Java
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
7	Miguel	Perez	miguel.perez@example.com	28	PHP
13	Paula	Torres	paula.torres@example.com	24	CSS
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
					
-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%'
1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
13	Paula	Torres	paula.torres@example.com	24	CSS
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					
-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad >25 AND edad<35
1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					
-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'CSS' AND edad <30
1
-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
SELECT id_usuario,nombre,apellido, COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY id_usuario,nombre, apellido
1	Juan	Gomez	1
2	Maria	Lopez	1
3	Carlos	Rodriguez	1
4	Laura	Fernandez	1
5	Pedro	Martinez	1
6	Ana	Hernandez	1
7	Miguel	Perez	1
8	Sofia	Garcia	1
9	Javier	Diaz	1
10	Luis	Sanchez	1
11	Elena	Moreno	1
12	Daniel	Romero	1
13	Paula	Torres	1
14	Alejandro	Ruiz	1
15	Carmen	Vega	1
16	Adrian	Molina	1
17	Isabel	Gutierrez	1
18	Hector	Ortega	1
19	Raquel	Serrano	1
20	Alberto	Reyes	1
-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
SELECT  lenguaje FROM usuarios_lenguajes WHERE LENGTH(lenguaje) = (SELECT MAX(LENGTH(lenguaje)) FROM usuarios_lenguajes)
Objective-C
-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí
--tods los usuarios y una columna con nombre y apellido concatenado
SELECT *, CONCAT (nombre,' ',apellido) FROM usuarios_lenguajes 
1	Juan	Gomez	juan.gomez@example.com	28	Java	Juan Gomez
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript	Maria Lopez
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python	Carlos Rodriguez
4	Laura	Fernandez	laura.fernandez@example.com	30	C++	Laura Fernandez
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby	Pedro Martinez
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL	Ana Hernandez
7	Miguel	Perez	miguel.perez@example.com	28	PHP	Miguel Perez
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift	Sofia Garcia
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript	Javier Diaz
10	Luis	Sanchez	luis.sanchez@example.com	27	Go	Luis Sanchez
11	Elena	Moreno	elena.moreno@example.com	29	C#	Elena Moreno
12	Daniel	Romero	daniel.romero@example.com	33	HTML	Daniel Romero
13	Paula	Torres	paula.torres@example.com	24	CSS	Paula Torres
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R	Alejandro Ruiz
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin	Carmen Vega
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C	Adrian Molina
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala	Isabel Gutierrez
18	Hector	Ortega	hector.ortega@example.com	30	Perl	Hector Ortega
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell	Raquel Serrano
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET	Alberto Reyes
--solo columna con concatenado
SELECT  CONCAT (nombre,' ',apellido) FROM usuarios_lenguajes 
Juan Gomez
Maria Lopez
Carlos Rodriguez
Laura Fernandez
Pedro Martinez
Ana Hernandez
Miguel Perez
Sofia Garcia
Javier Diaz
Luis Sanchez
Elena Moreno
Daniel Romero
Paula Torres
Alejandro Ruiz
Carmen Vega
Adrian Molina
Isabel Gutierrez
Hector Ortega
Raquel Serrano
Alberto Reyes


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí
SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad >25 
17
-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad IN (SELECT edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(edad)>1)ORDER BY edad ASC
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
1	Juan	Gomez	juan.gomez@example.com	28	Java
7	Miguel	Perez	miguel.perez@example.com	28	PHP
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
11	Elena	Moreno	elena.moreno@example.com	29	C#
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
18	Hector	Ortega	hector.ortega@example.com	30	Perl
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
					
-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad<30 AND
LENGTH(lenguaje) = (SELECT MAX(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE edad<30)
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					

-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
SELECT DISTINCT email, nombre, apellido FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL
juan.gomez@example.com	Juan	Gomez
maria.lopez@example.com	Maria	Lopez
carlos.rodriguez@example.com	Carlos	Rodriguez
laura.fernandez@example.com	Laura	Fernandez
pedro.martinez@example.com	Pedro	Martinez
ana.hernandez@example.com	Ana	Hernandez
miguel.perez@example.com	Miguel	Perez
sofia.garcia@example.com	Sofia	Garcia
javier.diaz@example.com	Javier	Diaz
luis.sanchez@example.com	Luis	Sanchez
elena.moreno@example.com	Elena	Moreno
daniel.romero@example.com	Daniel	Romero
paula.torres@example.com	Paula	Torres
alejandro.ruiz@example.com	Alejandro	Ruiz
carmen.vega@example.com	Carmen	Vega
adrian.molina@example.com	Adrian	Molina
isabel.gutierrez@example.com	Isabel	Gutierrez
hector.ortega@example.com	Hector	Ortega
raquel.serrano@example.com	Raquel	Serrano
alberto.reyes@example.com	Alberto	Reyes
-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE apellido LIKE 'G%'
3

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
SELECT  lenguaje FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' AND LENGTH(lenguaje) = (SELECT MIN(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%')
Java
-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí
SELECT  lenguaje FROM usuarios_lenguajes WHERE edad >30 AND LENGTH(lenguaje) = (SELECT MIN(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE edad >30 )
SQL

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje ASC
11	Elena	Moreno	elena.moreno@example.com	29	C#
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
13	Paula	Torres	paula.torres@example.com	24	CSS
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
12	Daniel	Romero	daniel.romero@example.com	33	HTML
1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
18	Hector	Ortega	hector.ortega@example.com	30	Perl
7	Miguel	Perez	miguel.perez@example.com	28	PHP
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad >20 AND edad<25 AND lenguaje IS NOT NULL;

5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
13	Paula	Torres	paula.torres@example.com	24	CSS
					
-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje NOT IN (SELECT id_usuario FROM usuarios_lenguajes WHERE lenguaje LIKE 'SQL')
1	Juan	Gomez	juan.gomez@example.com	28	Java
2	Maria	Lopez	maria.lopez@example.com	32	JavaScript
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	Python
4	Laura	Fernandez	laura.fernandez@example.com	30	C++
5	Pedro	Martinez	pedro.martinez@example.com	22	Ruby
6	Ana	Hernandez	ana.hernandez@example.com	35	SQL
7	Miguel	Perez	miguel.perez@example.com	28	PHP
8	Sofia	Garcia	sofia.garcia@example.com	26	Swift
9	Javier	Diaz	javier.diaz@example.com	31	TypeScript
10	Luis	Sanchez	luis.sanchez@example.com	27	Go
11	Elena	Moreno	elena.moreno@example.com	29	C#
12	Daniel	Romero	daniel.romero@example.com	33	HTML
13	Paula	Torres	paula.torres@example.com	24	CSS
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	R
15	Carmen	Vega	carmen.vega@example.com	29	Kotlin
16	Adrian	Molina	adrian.molina@example.com	34	Objective-C
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	Scala
18	Hector	Ortega	hector.ortega@example.com	30	Perl
19	Raquel	Serrano	raquel.serrano@example.com	32	Shell
20	Alberto	Reyes	alberto.reyes@example.com	28	VB.NET
					
-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
SELECT  lenguaje FROM usuarios_lenguajes WHERE edad >=30 AND LENGTH(lenguaje) = (SELECT MAX(LENGTH(lenguaje)) FROM usuarios_lenguajes WHERE edad >=30 );
Objective-C
-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, email,edad,edad -(SELECT AVG(edad) FROM usuarios_lenguajes) FROM usuarios_lenguajes;

1	Juan	Gomez	juan.gomez@example.com	28	-0.8500
2	Maria	Lopez	maria.lopez@example.com	32	3.1500
3	Carlos	Rodriguez	carlos.rodriguez@example.com	25	-3.8500
4	Laura	Fernandez	laura.fernandez@example.com	30	1.1500
5	Pedro	Martinez	pedro.martinez@example.com	22	-6.8500
6	Ana	Hernandez	ana.hernandez@example.com	35	6.1500
7	Miguel	Perez	miguel.perez@example.com	28	-0.8500
8	Sofia	Garcia	sofia.garcia@example.com	26	-2.8500
9	Javier	Diaz	javier.diaz@example.com	31	2.1500
10	Luis	Sanchez	luis.sanchez@example.com	27	-1.8500
11	Elena	Moreno	elena.moreno@example.com	29	0.1500
12	Daniel	Romero	daniel.romero@example.com	33	4.1500
13	Paula	Torres	paula.torres@example.com	24	-4.8500
14	Alejandro	Ruiz	alejandro.ruiz@example.com	28	-0.8500
15	Carmen	Vega	carmen.vega@example.com	29	0.1500
16	Adrian	Molina	adrian.molina@example.com	34	5.1500
17	Isabel	Gutierrez	isabel.gutierrez@example.com	26	-2.8500
18	Hector	Ortega	hector.ortega@example.com	30	1.1500
19	Raquel	Serrano	raquel.serrano@example.com	32	3.1500
20	Alberto	Reyes	alberto.reyes@example.com	28	-0.8500f
-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';
2
-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, edad, lenguaje, LENGTH(nombre) FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL
1	Juan	Gomez	28	Java	4
2	Maria	Lopez	32	JavaScript	5
3	Carlos	Rodriguez	25	Python	6
4	Laura	Fernandez	30	C++	5
5	Pedro	Martinez	22	Ruby	5
6	Ana	Hernandez	35	SQL	3
7	Miguel	Perez	28	PHP	6
8	Sofia	Garcia	26	Swift	5
9	Javier	Diaz	31	TypeScript	6
10	Luis	Sanchez	27	Go	4
11	Elena	Moreno	29	C#	5
12	Daniel	Romero	33	HTML	6
13	Paula	Torres	24	CSS	5
14	Alejandro	Ruiz	28	R	9
15	Carmen	Vega	29	Kotlin	6
16	Adrian	Molina	34	Objective-C	6
17	Isabel	Gutierrez	26	Scala	6
18	Hector	Ortega	30	Perl	6
19	Raquel	Serrano	32	Shell	6
20	Alberto	Reyes	28	VB.NET	7
-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí
SELECT lenguaje  FROM usuarios_lenguajes WHERE id_usuario = (SELECT MAX(id_usuario)FROM usuarios_lenguajes);
VB.NET
-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, edad, ( SELECT sum(edad) FROM usuarios_lenguajes),lenguaje FROM usuarios_lenguajes

1	Juan	Gomez	28	577	Java
2	Maria	Lopez	32	577	JavaScript
3	Carlos	Rodriguez	25	577	Python
4	Laura	Fernandez	30	577	C++
5	Pedro	Martinez	22	577	Ruby
6	Ana	Hernandez	35	577	SQL
7	Miguel	Perez	28	577	PHP
8	Sofia	Garcia	26	577	Swift
9	Javier	Diaz	31	577	TypeScript
10	Luis	Sanchez	27	577	Go
11	Elena	Moreno	29	577	C#
12	Daniel	Romero	33	577	HTML
13	Paula	Torres	24	577	CSS
14	Alejandro	Ruiz	28	577	R
15	Carmen	Vega	29	577	Kotlin
16	Adrian	Molina	34	577	Objective-C
17	Isabel	Gutierrez	26	577	Scala
18	Hector	Ortega	30	577	Perl
19	Raquel	Serrano	32	577	Shell
20	Alberto	Reyes	28	577	VB.NET
-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%'AND edad <28;
1