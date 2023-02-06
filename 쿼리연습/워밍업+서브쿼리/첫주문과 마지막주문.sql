-- 첫주문일자, 마지막주문일자 구하기(%Y-%m-%d %H:%i:%s)
SELECT DATE_FORMAT(MIN(order_purchase_timestamp), '%Y-%m-%d')  AS first_order_date,
DATE_FORMAT(MAX(order_purchase_timestamp), '%Y-%m-%d')  AS last_order_date
FROM olist_orders_dataset