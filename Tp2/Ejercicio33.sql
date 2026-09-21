--De la fecha actual (now()) obtener, el año, mes, dia, hora, minutos, siglo, dia de
--la semana, d'ia del año, semana dentro del año y trimestre.
SET search_path to bd2026p

SELECT 
--Con extract() extraigo los datos que necesito
	EXTRACT(YEAR FROM NOW()) AS anio,
	EXTRACT(MONTH FROM NOW()) AS mes,
	EXTRACT(DAY FROM NOW()) AS dia,
	EXTRACT(HOUR FROM NOW()) AS hora,
	EXTRACT(MINUTE FROM NOW()) AS minuto,
	EXTRACT(CENTURY FROM NOW()) AS siglo,
	EXTRACT(DOW FROM NOW()) AS dia_semana,
	EXTRACT(DOY FROM NOW()) AS dia_anio,
	EXTRACT(WEEK FROM NOW()) AS semana,
	EXTRACT(QUARTER FROM NOW()) AS trimestre
	
