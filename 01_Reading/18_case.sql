SELECT *,
CASE
	WHEN age>= 17 THEN 'ES MAYOR DE EDAD'
	ELSE 'ES MENOR DE EDAD'
END AS ageText
FROM users;

SELECT *,
CASE
	WHEN age>= 17 THEN true
	ELSE false
END AS 'Es mayor de edad?'
FROM users;

SELECT *,
CASE
	WHEN age<= 17 THEN 'ES MAYOR DE EDAD'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
	ELSE 'Es menor de edad'
END AS 'Es mayor de edad?'
FROM users;
