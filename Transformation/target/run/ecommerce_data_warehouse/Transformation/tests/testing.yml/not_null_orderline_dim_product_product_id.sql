select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_id
from `my-first-dbt-project-441102`.`MyProject`.`orderline_dim_product`
where product_id is null



      
    ) dbt_internal_test