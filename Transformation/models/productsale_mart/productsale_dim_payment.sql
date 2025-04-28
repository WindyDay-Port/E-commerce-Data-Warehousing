{{
    config(
        materialized='table'
    )
}}

with productsale_dim_payment as (
    select paymentID as payment_id,
           method,
           status

    from {{ ref('source_table') }}
)

select * from productsale_dim_payment
