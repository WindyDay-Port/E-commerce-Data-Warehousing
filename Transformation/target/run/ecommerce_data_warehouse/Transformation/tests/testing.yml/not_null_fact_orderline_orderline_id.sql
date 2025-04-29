select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select orderline_id
from `my-first-dbt-project-441102`.`MyProject`.`fact_orderline`
where orderline_id is null



      
    ) dbt_internal_test