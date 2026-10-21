SET search_path to bd2026p

--Funcion que clasifica los numeros si son positivos o negativos
CREATE FUNCTION fn_clasifica_numero_jm(num DECIMAL)
	RETURNS TEXT
	LANGUAGE plpgsql
	AS $$
DECLARE 
	mensaje TEXT;
BEGIN
	CASE
		WHEN num > 0 THEN
			mensaje := 'POSITIVO';
		
		WHEN num < 0 THEN
			mensaje := 'NEGATIVO';
			
		ELSE
			return null;
	END CASE;
	RETURN mensaje;
END;
$$

--Testeo la funcion
SELECT fn_clasifica_numero_jm(2)
SELECT fn_clasifica_numero_jm(-67)

