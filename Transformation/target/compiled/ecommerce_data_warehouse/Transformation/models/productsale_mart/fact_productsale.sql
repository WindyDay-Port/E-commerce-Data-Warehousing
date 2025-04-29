

with fact_productsale as (
    select GENERATE_UUID() as productsale_id,
           SKU as product_id,
           paymentID as payment_id,
           customerID as customer_id,
           orderID as time_id,
           supplierID as supplier_id,
           reviewID as review_id,
           price as product_price,
           inventory_count,
           rating,
           quantity as quantity_ordered

    from `my-first-dbt-project-441102`.`MyProject`.`source_table`
)

select * from fact_productsale