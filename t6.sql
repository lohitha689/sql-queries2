SELECT
  TO_CHAR(order_date, 'Day') AS weekday,
  ROUND(SUM(sales), 2) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  superstore_data
GROUP BY
  TO_CHAR(order_date, 'Day')
ORDER BY
  total_revenue DESC;
