select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select quantity
from `my-first-dbt-project-441102`.`MyProject`.`fact_orderline`
where quantity is null



      
    ) dbt_internal_test