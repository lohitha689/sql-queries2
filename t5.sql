SELECT
  order_date,
  SUM(sales) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  superstore_data
GROUP BY
  order_date
ORDER BY
  total_revenue DESC
LIMIT 1;
