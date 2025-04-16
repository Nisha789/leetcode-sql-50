select p.product_name,t.unit
from
(select product_id, sum(unit) as unit
from orders
where order_date like '2020-02-%'
group by product_id
having unit>=100) t
left join
products p
on t.product_id = p.product_id

-- select p.product_name, sum(o.unit) as unit
-- from products p
-- left join orders o
-- on p.product_id   = o.product_id   
-- where extract(year_month from o.order_date) = 202002
-- group by o.product_id
-- having sum(o.unit) >=100
