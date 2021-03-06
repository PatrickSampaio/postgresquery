﻿WITH ACTOR_ROLLUP AS (
	SELECT  ACTOR_ID
	       ,FIRST_NAME
	       ,LAST_NAME
	       ,COUNT(1) OVER (PARTITION BY FIRST_NAME) AS FIRST_NAME_OCCURRENCE
	       ,COUNT(1) OVER (PARTITION BY LAST_NAME) AS LAST_NAME_OCCURRENCE
	       FROM ACTOR
)

SELECT FIRST_NAME,
       LAST_NAME,
       FIRST_NAME_OCCURRENCE,
       LAST_NAME_OCCURRENCE
       FROM ACTOR_ROLLUP
       ORDER BY ACTOR_ID