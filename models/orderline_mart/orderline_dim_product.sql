{{
    config(
        materialized='table'
    )
}}

with orderline_dim_product as (
    select SKU as product_id,
           product_name,
           description
    
    from {{ ref('source_table') }}

)

select * from dim_product
