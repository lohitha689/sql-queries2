SELECT
  TO_CHAR(order_date, 'YYYY-MM') AS month,
  SUM(sales) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM
  superstore_data
GROUP BY
  TO_CHAR(order_date, 'YYYY-MM')
ORDER BY
  month;
select * from superstore_data;

