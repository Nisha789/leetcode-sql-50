select 
round(avg(if(min_order_date = min_pref_del_date,1,0))*100,2) as immediate_percentage 
from 
(
select min(order_date) as min_order_date, min(customer_pref_delivery_date) as min_pref_del_date 
from delivery
group by customer_id 
) min_delivery_table;
