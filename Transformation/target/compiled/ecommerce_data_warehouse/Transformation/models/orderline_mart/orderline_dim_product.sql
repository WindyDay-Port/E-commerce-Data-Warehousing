

with orderline_dim_product as (
    select SKU as product_id,
           product_name,
           description
    
    from `my-first-dbt-project-441102`.`MyProject`.`source_table`

)

select * from orderline_dim_product