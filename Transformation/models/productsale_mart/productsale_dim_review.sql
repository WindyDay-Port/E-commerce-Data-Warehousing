{{
    config(
        materialized='table'
    )
}}

with productsale_dim_review as (
    select reviewID as review_id,
           comment as review_comment,
           timestamp_review as review_timestamp
    
    from {{ ref('source_table') }}
)

select * from dim_review
