select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- Customer rating should always be >= 0
select
    productsale_id,
    rating
from `my-first-dbt-project-441102`.`MyProject`.`fact_productsale`
where rating < 0
      
    ) dbt_internal_test