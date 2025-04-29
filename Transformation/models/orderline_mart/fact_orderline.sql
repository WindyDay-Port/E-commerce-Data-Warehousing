{{
    config(
        materialized='table'
    )
}}

with required_field as (
    select orderID as order_id,
           paymentID as payment_id,
           customerID as customer_id,
           SKU as product_id,
           orderID as time_id,
           shipmentID as delivery_id,
           total_amount,
           quantity,
           timestamp
    
    from {{ ref('source_table')}}
),

volume as (
    select order_id,
           count(distinct product_id) as product_count
    
    from required_field
    
    group by order_id

),

fact_orderline as (
    select GENERATE_UUID() as orderline_id,
           required_field.customer_id,
           required_field.payment_id,
           required_field.product_id,
           required_field.time_id,
           required_field.total_amount,
           required_field.quantity,
           volume.product_count,
           count(required_field.order_id) over( partition by cast(required_field.timestamp as date)) as order_volume
    
    from required_field 
    
    left join volume using (order_id)
)

select * from fact_orderline
