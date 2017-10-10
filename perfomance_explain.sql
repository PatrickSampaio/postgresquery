EXPLAIN SELECT actor_id, first_name, last_name, last_update
  FROM public.actor
  where first_name = 'Penelope';

-- COST (disk pages read * seq_page_cost) + (rows scannd * cpu_tuple_cost)

  EXPLAIN SELECT * FROM public.actor WHERE first_name <> 'Penelope';

-- Planner Cost COnstants
-- seq_page_cost <- estimate of the cost of a disk page fetch. Default = 1
-- cpu_tuple_cost <- estimate the cost of processing each row. Default 0.01

EXPLAIN ANALYSE SELECT *
FROM film
WHERE film_id > 40 AND rating = 'PG-13'

--union
EXPLAIN ANALYSE SELECT *
FROM film
WHERE film_id > 40

EXPLAIN ANALYSE SELECT *
FROM film
WHERE film_id < 40 AND rating = 'PG-13'