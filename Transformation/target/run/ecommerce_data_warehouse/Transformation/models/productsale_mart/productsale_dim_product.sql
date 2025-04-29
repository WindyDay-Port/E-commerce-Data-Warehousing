
  
    

    create or replace table `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_product`
      
    
    

    OPTIONS()
    as (
      

with productsale_dim_product as (
    select SKU as product_id,
           product_name,
           description
    
    from `my-first-dbt-project-441102`.`MyProject`.`source_table`

)

select * from productsale_dim_product
    );
  