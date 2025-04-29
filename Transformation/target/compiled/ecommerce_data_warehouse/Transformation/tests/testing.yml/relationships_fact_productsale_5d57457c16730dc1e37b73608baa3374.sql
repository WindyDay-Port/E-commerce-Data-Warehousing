
    
    

with child as (
    select product_id as from_field
    from `my-first-dbt-project-441102`.`MyProject`.`fact_productsale`
    where product_id is not null
),

parent as (
    select product_id as to_field
    from `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_product`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


