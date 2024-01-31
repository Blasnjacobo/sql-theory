SELECT name, init_date AS "Fecha de inicio en Programacion" FROM users WHERE age BETWEEN 20 AND 30

SELECT name, init_date AS "Fecha de inicio en Programacion" FROM users WHERE name = 'BLAS'

SELECT CONCAT(name, surname) FROM users

SELECT CONCAT(name, ' ', surname) as 'Full Name' FROM users