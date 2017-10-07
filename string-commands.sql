--LEFT FUNCTION
SELECT  first_name,
        last_name,
	CONCAT(LEFT(first_name, 1), LEFT(last_name, 1)) AS "Initials"
  FROM public.actor;

--LENGTH FUNCTION
SELECT first_name
FROM
	public.actor
WHERE
	LENGTH(first_name) > 4

--CAPITALIZE
SELECT first_name,
	UPPER(last_name)
FROM
	public.actor

--REPLACE
SELECT 
	REPLACE(first_name, 'a', '@')
FROM
	public.actor