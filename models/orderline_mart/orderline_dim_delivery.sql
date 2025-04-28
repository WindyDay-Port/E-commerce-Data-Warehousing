{{
    config(
        materialized='table'
    )
}}

with orderline_dim_delivery as (
    select shipmentID as delivery_id,
           delivery_method,
           delivery_status

    from {{ ref('source_table') }}    

)

select * from dim_delivery