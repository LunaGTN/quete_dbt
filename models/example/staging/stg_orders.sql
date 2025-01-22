with source as (
    select * from {{ source('jaffle_shop', 'raw_orders') }}
),
renamed as (
    select
        id as orders_id,
        customer as customer_name
    from source
)
select * from renamed