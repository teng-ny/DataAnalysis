-- order_id가 중복될 수 있어서 distinct 해줘야함
SELECT seller_id
     , COUNT(DISTINCT order_id) AS orders
FROM olist_order_items_dataset
GROUP BY seller_id
HAVING orders >= 100