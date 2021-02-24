-- write your queries here
-- First Query
SELECT * FROM owners 
LEFT JOIN vehicles 
ON owners.id = vehicles.owner_id;

-- Second Query
SELECT first_name, last_name, COUNT(owner_id) 
FROM vehicles JOIN owners 
ON owners.id = vehicles.owner_id 
GROUP BY (first_name, last_name)
ORDER BY first_name;

-- Third Query

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(owner_id) 
FROM owners JOIN vehicles 
ON owners.id = vehicles.owner_id 
GROUP BY (first_name, last_name) 
HAVING AVG(price) > 10000 
ORDER BY first_name DESC;