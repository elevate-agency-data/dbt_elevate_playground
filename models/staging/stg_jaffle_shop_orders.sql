select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

-- from dbt_raw_data.jaffle_shop_orders

from {{ source('test', 'orders') }}