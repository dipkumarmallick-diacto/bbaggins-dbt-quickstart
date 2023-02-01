with payments as (
    select
        id as order_id,
        user_id as customer_id,
        paymentmethod as payment_method,
        status,
        amount
    from raw.stripe.payment
)

select * from payments