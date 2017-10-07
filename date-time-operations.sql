SELECT 
	return_date - rental_date as "Tempo de alocação"
FROM
	rental;
--DAYS
SELECT
	return_date - rental_date as "Tempo de alocação"
FROM
	rental
WHERE
	EXTRACT(days FROM return_date - rental_date) > 3;

--HOURS
SELECT
	return_date - rental_date as "Tempo de alocação"
FROM
	rental
WHERE
	EXTRACT(epoch FROM return_date - rental_date)/3600 > 100;
