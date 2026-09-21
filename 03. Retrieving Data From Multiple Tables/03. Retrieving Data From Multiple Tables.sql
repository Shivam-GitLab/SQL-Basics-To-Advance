select * from orders;

select * from customers;

select * from orders inner join customers on customers.customer_id = orders.customer_id;

select order_id , o.product_id AS Order_P_Id , p.product_id AS Product_id , p.name , o.quantity, p.unit_price from order_items o JOIN products p on p.product_id = o.product_id;

select * from order_items o JOIN products p on p.product_id = o.product_id;

select * from order_items oi INNER JOIN products p on oi.product_id = p.product_id;

select order_id, oi.product_id , oi.quantity , oi.unit_price  from order_items oi JOIN products p on oi.product_id = p.product_id;

select unit_price from order_items;
select unit_price from products;