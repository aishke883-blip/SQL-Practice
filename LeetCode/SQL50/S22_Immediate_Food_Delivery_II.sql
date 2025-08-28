/*Immediate Food Delivery II*/
select round(sum(order_date=customer_pref_delivery_date)*100/count(*),2) as immediate_percentage from delivery d where d.order_date in (select min(order_date) from delivery where customer_id=d.customer_id);
/*OR USING - windows function*/
WITH first_orders AS (
    SELECT 
        delivery_id,
        customer_id,
        order_date,
        customer_pref_delivery_date,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn
    FROM Delivery
)
SELECT 
    ROUND(
        SUM(order_date = customer_pref_delivery_date) * 100.0 / COUNT(*),
        2
    ) AS immediate_percentage
FROM first_orders
WHERE rn = 1;
