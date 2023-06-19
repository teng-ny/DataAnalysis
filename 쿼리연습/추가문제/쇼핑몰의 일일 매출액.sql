SELECT DATE(o.order_purchase_timestamp) AS dt
     , ROUND(SUM(p.payment_value), 2) AS revenue_daily
FROM olist_orders_dataset o
  LEFT JOIN olist_order_payments_dataset p ON o.order_id=p.order_id
WHERE DATE(o.order_purchase_timestamp) >= "2018-01-01"
GROUP BY 1
ORDER BY 1