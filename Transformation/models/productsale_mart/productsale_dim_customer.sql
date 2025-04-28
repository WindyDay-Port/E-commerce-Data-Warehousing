{{
    config(
        materialized='table'
    )
}}

with productsale_dim_customer as (
    select customerID as customer_id,
           first AS first_name,
           middle AS middle_name,
           last AS last_name,
           email,
           phone,
           street,
           province,
           city,
           country,
           postal_code

    from {{ ref('source_table') }}

)

select * from productsale_dim_customer
