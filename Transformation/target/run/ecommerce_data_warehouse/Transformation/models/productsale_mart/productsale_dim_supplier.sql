
  
    

    create or replace table `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_supplier`
      
    
    

    OPTIONS()
    as (
      

with productsale_dim_supplier as (
    select supplierID as supplier_id,
           supplier_name,
           supplier_detail,
           type as email_type,
           business_email,
           type_supplier as phone_type,
           business_phone

    from `my-first-dbt-project-441102`.`MyProject`.`source_table`
)

select * from productsale_dim_supplier
    );
  