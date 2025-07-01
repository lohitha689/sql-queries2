WITH monthly_data AS (
  SELECT
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(sales) AS total_revenue
  FROM
    superstore_data
  GROUP BY
    TO_CHAR(order_date, 'YYYY-MM')
)
SELECT
  month,
  total_revenue,
  ROUND(
    100.0 * (total_revenue - LAG(total_revenue) OVER (ORDER BY month)) 
    / NULLIF(LAG(total_revenue) OVER (ORDER BY month), 0), 2
  ) AS revenue_growth_percentage
FROM
  monthly_data;
