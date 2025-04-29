

with productsale_dim_review as (
    select reviewID as review_id,
           comment as review_comment,
           timestamp_review as review_timestamp
    
    from `my-first-dbt-project-441102`.`MyProject`.`source_table`
)

select * from productsale_dim_review