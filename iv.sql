select customerid, count(orderid) as totalOrders from orders where orderid in (
select orderid from (
select orderid, count(*) from (
select orderid,(categoryinfo).category 
from orderlines inner join products_objr on orderlines.prod_id = products_objr.prod_id
group by orderid,category )as occurances group by orderid ) as ordersWith3Cat where count >= 3
)
group by customerid
