

-- 1. Ver todos los registros
SELECT * FROM users;

-- 2. Ver el registro cuyo id sea igual a 10
SELECT * FROM users WHERE id = '10';

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
SELECT * FROM users WHERE name LIKE 'Jim %';

-- 4. Todos los registros cuyo segundo nombre es Alexander
SELECT * FROM users WHERE name LIKE '% Alexander';

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
UPDATE users SET name = 'Fucheng Zhou' WHERE id = '1';
SELECT * FROM users WHERE id = '1';

-- 6. Borrar el último registro de la tabla
DELETE * FROM users WHERE id = '3980';

-- ALTERNATIVA
DELETE FROM users WHERE id = (SELECT MAX(id) FROM users);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 


-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX
SELECT first_name, last_name, last_connection FROM users WHERE last_connection LIKE '221%';

-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas
SELECT first_name, last_name, followers FROM users WHERE followers > 4600;


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- 1. Crear una llave primaria en city (id)
ALTER TABLE city ADD PRIMARY KEY (id);

-- 2. Crear un check en population, para que no soporte negativos
ALTER TABLE city ADD CHECK (population >= 0)
SELECT * FROM city;

-- 3. Crear una llave primaria compuesta en "countrylanguage"
-- los campos a usar como llave compuesta son countrycode y language
ALTER TABLE countrylanguage ADD PRIMARY KEY (countrycode, language);

-- 4. Crear check en percentage, 
-- Para que no permita negativos ni números superiores a 100
ALTER TABLE countrylanguage ADD CHECK (porcentage >= 0) AND (porcentage <= 100)
SELECT * FROM city;
