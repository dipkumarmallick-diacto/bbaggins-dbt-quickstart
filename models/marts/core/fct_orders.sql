with
    payments as (select * from {{ ref("stg_payments.sql") }}),

    orders as (select * from {{ ref("stg_orders.sql") }}),

select 
    orders.order_id,
    orders.customer_id,
    payments.amount
from orders
inner join on orders.order_id = payments.order_id
