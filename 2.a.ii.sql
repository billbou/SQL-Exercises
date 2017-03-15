
SELECT Products.PROD_ID AS ID,(SUM(QUANTITY)) AS total
FROM Products , Orderlines
WHERE Products.prod_id=Orderlines.prod_id
GROUP BY (Products.prod_id)
order by total asc limit 42;

