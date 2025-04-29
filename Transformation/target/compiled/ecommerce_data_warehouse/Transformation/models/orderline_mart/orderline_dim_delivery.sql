

with orderline_dim_delivery as (
    select shipmentID as delivery_id,
           delivery_method,
           delivery_status

    from `my-first-dbt-project-441102`.`MyProject`.`source_table`    

)

select * from orderline_dim_delivery