select a.id as customer_id,
    a.name,
    a.email,
    min(b.created_at) as first_order_at,
    count(distinct b.id) as number_of_orders 
from `analytics-engineers-club.coffee_shop.customers` a 
join `analytics-engineers-club.coffee_shop.orders` b 
on a.id = b.customer_id
group by 1, 2, 3
order by 4 desc
limit 5;