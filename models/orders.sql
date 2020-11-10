with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),

final as (

    select
        orders.customer_id,
        payments.order_id,
        payments.amount

    from payments
    left join orders using (order_id)

)

select * from final








