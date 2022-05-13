select *
from {{ref('stg_orders')}}
where total_price < 0