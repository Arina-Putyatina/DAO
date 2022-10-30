select product_name
from ORDERS
left join CUSTOMERS on ORDERS.customer_id = CUSTOMERS.id
where LOWER(CUSTOMERS.name) like LOWER(:name);