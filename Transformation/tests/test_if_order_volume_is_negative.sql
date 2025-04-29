-- Order volume don't have negative
-- Returning value should always be >=0 
select
    orderline_id,
    sum(order_volume) as volume_per_order
from {{ ref("fact_orderline") }}
group by orderline_id
having volume_per_order < 0
