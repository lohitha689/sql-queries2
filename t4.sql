SELECT
  customer_id,
  SUM(sales) AS total_spent,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  superstore_data
GROUP BY
  customer_id
ORDER BY
  total_spent DESC
LIMIT 5;
