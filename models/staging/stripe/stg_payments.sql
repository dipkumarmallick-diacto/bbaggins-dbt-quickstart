with
    payments as (
        select
            id as order_id,
            user_id as customer_id,
            paymentmethod as payment_method,
            status,
            amount / 100 as amount,
            created as created_as
        from {{ source("stripe", "payment") }}
    )

select *
from payments
