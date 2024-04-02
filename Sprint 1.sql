# ejercicio 2
SELECT company_name, email, country 
FROM company
ORDER BY company_name;

# ejercicio 3
SELECT DISTINCT country 
FROM company
LEFT JOIN
transaction
ON company.id= transaction.company_id
WHERE amount >0
;

# ejercicio 4
SELECT COUNT(DISTINCT country)
FROM company
LEFT JOIN
transaction
ON company.id= transaction.company_id
WHERE amount >0;

# ejercicio 5
SELECT country, company_name
FROM company
WHERE id = 'b-2354';

#ejercicio 6
SELECT company_name, AVG(amount)
from company
LEFT JOIN
transaction
ON company.id=transaction.company_id
GROUP BY company_name
ORDER BY AVG(amount) DESC
LIMIT 1;

# Nivel 2
# ejercicio 1
SELECT id, COUNT(id)
FROM company
GROUP BY id
HAVING count(id)>1;

# ejercicio 2
SELECT DATE(timestamp), SUM(amount)
FROM transaction
GROUP BY date(timestamp)
ORDER BY SUM(amount) DESC
LIMIT 5;

# ejercicio 3
SELECT date(timestamp), SUM(amount)
FROM transaction
GROUP BY date(timestamp)
ORDER BY SUM(amount) ASC
LIMIT 5;

#ejercicio 4
SELECT country, AVG(amount)
FROM company
JOIN 
transaction
ON company.id=transaction.company_id
GROUP BY country
ORDER BY AVG(amount) DESC;

#Nivel 3
# Ejercicio 1
SELECT company_name, phone, country, amount
FROM company
JOIN 
transaction
ON company.id=transaction.company_id
WHERE amount BETWEEN 100 AND 200
ORDER BY amount DESC;

#ejercicio 2
SELECT company_name
FROM company
JOIN 
transaction
ON company.id=transaction.company_id
WHERE date(timestamp) IN ("2022-03-16","2022-02-28","2022-02-13")
GROUP BY company_name;



