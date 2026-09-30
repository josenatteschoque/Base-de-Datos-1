SET search_path to northwind

--Eje 1
--SELECT o.order_id, od. *, (od.unit_price * od.quantity ) AS subtotal

SELECT od.order_id, SUM((od.unit_price * od.quantity )) AS subtotal
FROM orders o 
JOIN order_details od
	ON (o.order_id = od.order_id)
--WHERE o.order_id = 10248
GROUP BY od.order_id

--Obtengo el numero de pedidos de esta tabla
SELECT COUNT(*)
FROM order_details



--Eje 2 
SELECT EXTRACT(YEAR FROM o.order_date) AS año, SUM((od.unit_price * od.quantity )) AS total_anual
FROM orders o 
JOIN order_details od
	ON (o.order_id = od.order_id)
--WHERE o.order_id = 10248
GROUP BY año



--Eje 3
--SELECT od.* , (od.unit_price * od.quantity) AS subtotal, p.product_name, p.category_id, c.category_name
SELECT c.category_id, c.category_name, SUM((od.unit_price * od.quantity)) AS subtotal
FROM order_details od
JOIN products p 
	ON (od.product_id = p.product_id)
	JOIN categories c
		ON (c.category_id = p.category_id)
		GROUP BY c.category_id, c.category_name



