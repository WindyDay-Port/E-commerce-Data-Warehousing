{{
    config(
        materialized='table'
    )
}}

with productsale_dim_supplier as (
    select supplierID as supplier_id,
           supplier_name,
           supplier_detail,
           type as email_type,
           business_email,
           type_supplier as phone_type,
           business_phone

    from {{ ref('source_table') }}
)

select * from dim_supplier
