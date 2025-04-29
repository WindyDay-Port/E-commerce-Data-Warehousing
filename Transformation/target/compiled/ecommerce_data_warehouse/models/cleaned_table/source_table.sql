

with source_table as (
    select customerID,
           first,
           middle,
           last,
           email,
           phone,
           street,
           province,
           city,
           country,
           postal_code,
           orderID,
           total_amount,
           quantity,
           timestamp,
           shipmentID,
           delivery_status,
           delivery_method,
           SKU,
           product_name,
           description,
           price,
           inventory_count,
           paymentID,
           method,
           status,
           reviewID,
           comment,
           rating,
           timestamp_review,
           supplierID,
           supplier_name,
           supplier_detail,
           type,
           business_email,
           type_supplier,
           business_phone
    
    from `my-first-dbt-project-441102`.`Data_warehousing`.`staging`

)

select * from source_table