select name
from customer
where referee_id IS NULL OR referee_id != 2;
