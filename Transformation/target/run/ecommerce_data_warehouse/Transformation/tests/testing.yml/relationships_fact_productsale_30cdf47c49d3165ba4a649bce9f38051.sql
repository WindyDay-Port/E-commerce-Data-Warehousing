select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select payment_id as from_field
    from `my-first-dbt-project-441102`.`MyProject`.`fact_productsale`
    where payment_id is not null
),

parent as (
    select payment_id as to_field
    from `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_payment`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test