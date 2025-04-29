

with productsale_dim_payment as (
    select paymentID as payment_id,
           method,
           status

    from `my-first-dbt-project-441102`.`MyProject`.`source_table`
)

select * from productsale_dim_payment