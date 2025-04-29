select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select supplier_id
from `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_supplier`
where supplier_id is null



      
    ) dbt_internal_test