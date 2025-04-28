{{
    config(
        materialized='table'
    )
}}

with productsale_dim_product as (
    select SKU as product_id,
           product_name,
           description
    
    from {{ ref('source_table') }}

)

select * from productsale_dim_product
