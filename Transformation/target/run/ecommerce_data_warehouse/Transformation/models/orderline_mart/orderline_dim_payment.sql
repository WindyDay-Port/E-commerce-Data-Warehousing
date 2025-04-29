
  
    

    create or replace table `my-first-dbt-project-441102`.`MyProject`.`orderline_dim_payment`
      
    
    

    OPTIONS()
    as (
      

with orderline_dim_payment as (
    select paymentID as payment_id,
           method,
           status

    from `my-first-dbt-project-441102`.`MyProject`.`source_table`
)

select * from orderline_dim_payment
    );
  