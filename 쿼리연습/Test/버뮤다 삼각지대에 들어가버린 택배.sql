SELECT DATE(order_delivered_carrier_date) AS delivered_carrier_date
      , COUNT(distinct order_id) AS orders
FROM olist_orders_dataset
WHERE order_delivered_carrier_date BETWEEN '2017-01-01 00:00:00' AND '2017-01-31 23:59:59'
AND order_delivered_carrier_date IS NOT null
AND order_delivered_customer_date IS NULL
GROUP BY delivered_carrier_date
ORDER BY delivered_carrier_date