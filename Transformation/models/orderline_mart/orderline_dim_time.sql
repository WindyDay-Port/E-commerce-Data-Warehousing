{{
    config(
        materialized='table'
    )
}}

with orderline_dim_time as (
    select orderID as time_id,
           timestamp as full_date,
           extract(dayofweek from timestamp) as day_of_week,
           extract(day from timestamp) as day_of_month,
           format_timestamp('%A', timestamp) as day_name,
           extract(month from timestamp) as month,
           format_timestamp('%B', timestamp) as month_name,
           extract(year from timestamp) as year,
           extract(quarter from timestamp) as quarter
    
    from {{ ref('source_table') }}

)

select * from orderline_dim_time
