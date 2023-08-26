#Total cost of goods sold for 2017 and 2018
with first_ as (
Select sum(price+freight_value) as Total_Cost_2017
from olist_order_items_dataset
where shipping_limit_date like '%2017%'
),
second_ as (
Select sum(price+freight_value) as Total_Cost_2018
from olist_order_items_dataset
where shipping_limit_date like '%2018%'
)
Select * 
From first_
join Second_;

#How many types of payment methods have been used for shopping and who got the highest percentage
Select distinct payment_type as payment_methods, count(payment_type) as number_of_count
from olist_order_payments_dataset
group by payment_type;

#Show the number of categories present in the OLIST and how many items are present in that category
select distinct product_category_name , product_category_name_english, 
count(product_id) over(partition by product_category_name) as num_of_items
from product_category_name_translation as pcnt
left join olist_products_dataset as opd
using (product_category_name)
group by product_category_name, product_id;

#Find a coorelation between payment method and order status
Select payment_type ,order_status, count(order_status) 
from olist_order_payments_dataset
join olist_orders_dataset
using (order_id)
group by payment_type, order_status;

select ooid.order_id, price, payment_value
from olist_order_items_dataset as ooid
join olist_order_payments_dataset as oopd
using (order_id)
where ooid.order_id like '%00010242%';

#RFM Analysis
with first_ as(
select distinct customer_unique_id, ocd.customer_id,count(order_id) over(partition by customer_unique_id) as num_of_orders
from olist_customers_dataset as ocd
join olist_orders_dataset as ood
using(customer_id)
)
select * 
from first_
where num_of_orders ='17';

#
select distinct customer_unique_id, ocd.customer_id, count(order_id) over(partition by customer_unique_id) as num_of_orders
from olist_customers_dataset as ocd
join olist_orders_dataset as ood
using(customer_id);

#
with first_ as(
select distinct ooid.order_id, shipping_limit_date, price as p ,freight_value as fv, payment_value as pv, price+freight_value as sale_price
from olist_order_items_dataset as ooid
join olist_order_payments_dataset as oopd
using (order_id))
select sum(p+fv), sum(pv)
from first_;

#
select  count(order_id) over(partition by product_id) as num_of_orders
from olist_order_items_dataset 
join olist_products_dataset
using (product_id);

#Total cost of goods sold for 2017 and 2018 compersion with Total sales:
with first_ as (
select DATE_FORMAT(order_purchase_timestamp, '%Y-%m') as Year_and_Month,
sum(price) as Total_Cost,
sum(price+freight_value) as Total_Sales
from olist_orders_dataset as ood
join olist_order_items_dataset as ooid
on ood.order_id = ooid.order_id
group by year_and_month 
order by year_and_month
)
select * , ((Total_Sales-Total_Cost)/Total_Cost)*100 as Precentage
from first_
where Year_and_Month != 2016;

#Show the number of categories present in the OLIST and how many items are present in that category
with first_ as (
select distinct product_category_name as pcn, count(opd.product_id) over(partition by product_category_name) as best_sellings
from olist_order_items_dataset as ooid
join olist_products_dataset as opd
using (product_id)
),
second_ as(
select distinct product_category_name as pcn , product_category_name_english as product_name, 
count(product_id) over(partition by product_category_name) as num_of_items
from product_category_name_translation as pcnt
left join olist_products_dataset as opd
using (product_category_name)
group by product_category_name, product_id
)
select product_name, num_of_items, best_sellings
from first_
join second_
using (pcn);

#
SELECT
      order_id,
      product_id,
      price,
      (SELECT
      AVG(price)
      FROM olist_order_items_dataset) AS avg_price
FROM olist_order_items_dataset;



