-- For an order transaction happens
-- Quantity of ordered roduct must > 0
select 
    orderline_id,
    sum(quantity) as quantity_of_each_transaction
from {{ ref("fact_orderline") }}
group by orderline_id
having quantity_of_each_transaction <= 0
