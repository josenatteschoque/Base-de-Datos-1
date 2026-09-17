--Probar INTERVAL con:
SET search_path to bd2026p

SELECT now(), now() - INTERVAL '1 year 3
hours 20 minutes' AS "3 hours 20 minutes ago
of last year", now()+INTERVAL '2 weeks'