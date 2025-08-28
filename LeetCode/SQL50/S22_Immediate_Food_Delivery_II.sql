/*Immediate Food Delivery II*/
select round(sum(order_date=customer_pref_delivery_date)*100/count(*),2) as immediate_percentage from delivery d where d.order_date in (select min(order_date) from delivery where customer_id=d.customer_id);
