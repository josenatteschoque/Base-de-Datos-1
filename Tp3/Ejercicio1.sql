SET search_path to bd2026p

CREATE FUNCTION fn_sumar_numeros_jm(num1 int , num2 int)
	RETURNS int
	LANGUAGE plpgsql
	AS $$
DECLARE 
	resul int;

BEGIN
	resul = num1 + num2;
	RETURN resul;
END;
$$

--Testeo la funcion
SET search_path to bd2026p

SELECT fn_sumar_numeros_jm(10, 5)

----------------------------------------------------------------------
--Funcion que es una calculadora
CREATE FUNCTION fn_calculadora_jm(num1 DECIMAL , num2 DECIMAL, opcion char)
	RETURNS DECIMAL
	LANGUAGE plpgsql
	AS $$
DECLARE 
	resul DECIMAL	;
BEGIN
	CASE
		WHEN opcion = '+' THEN
			resul := num1 + num2;
		
		WHEN opcion = '-' THEN
			resul := num1 - num2;
			
		WHEN opcion = '*' THEN
			resul := num1 * num2;
			
		WHEN opcion = '/' THEN
			IF num2 > 0 THEN 
				resul = num1 / num2;
			ELSE
				RETURN NULL;
			END IF;
			
		ELSE
			return null;
	END CASE;
	RETURN resul;
END;
$$

--Testeo la funcion
SET search_path to bd2026p

SELECT fn_calculadora_jm(10, 5, '+')
SELECT fn_calculadora_jm(10, 5, '-')
SELECT fn_calculadora_jm(10, 5, '*')
SELECT fn_calculadora_jm(10, 5, '/')
