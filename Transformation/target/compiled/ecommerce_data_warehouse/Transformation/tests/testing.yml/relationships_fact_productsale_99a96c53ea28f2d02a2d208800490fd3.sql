
    
    

with child as (
    select supplier_id as from_field
    from `my-first-dbt-project-441102`.`MyProject`.`fact_productsale`
    where supplier_id is not null
),

parent as (
    select supplier_id as to_field
    from `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_supplier`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


