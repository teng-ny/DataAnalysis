-- 배송 예정일보다 빠르게 배송되었으면 success로 count
-- 배송 예정일보다 배송이 느렸으면 fail로 count한 피벗테이블
SELECT DATE(order_purchase_timestamp) AS purchase_date
      ,COUNT(CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN order_id END) AS success 
      ,COUNT(CASE WHEN order_delivered_customer_date > order_estimated_delivery_date THEN order_id END) AS fail
FROM olist_orders_dataset
WHERE order_purchase_timestamp BETWEEN '2017-01-01 00:00:00' AND '2017-01-31 23:59:59'
AND order_delivered_customer_date IS NOT NULL
AND order_estimated_delivery_date IS NOT NULL
GROUP BY purchase_date
ORDER BY purchase_date