with payments as (
    select
        id as order_id
    from raw.stripe.payment
)

select * from payments