select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- Order volume don't have negative
-- Returning value should always be >=0 
select
    orderline_id,
    sum(order_volume) as volume_per_order
from `my-first-dbt-project-441102`.`MyProject`.`fact_orderline`
group by orderline_id
having volume_per_order < 0
      
    ) dbt_internal_test