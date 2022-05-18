
with orders as ( select * from {{ ref('stg_tpch_orders') }} 
where order_date > current_date()
limit 1000
)

select *
from   orders 
where  total_price < 0