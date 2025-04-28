{{
    config(
        materialized='table'
    )
}}

with orderline_dim_payment as (
    select paymentID as payment_id,
           method,
           status

    from {{ ref('source_table') }}
)

select * from dim_payment
