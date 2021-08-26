select 
    customers.id as customer_id,
    customers.name as full_name,
    customers.email,
    min(orders.created_at) as first_order_at,
    count(distinct orders.id) as number_of_orders
from `analytics-engineers-club.coffee_shop.customers` customers 
inner join `analytics-engineers-club.coffee_shop.orders` orders 
on customers.id = orders.customer_id
group by 1, 2, 3
order by 4 desc
limit 5;