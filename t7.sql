WITH monthly_rev AS (
  SELECT
    DATE_TRUNC('month', order_date) AS month_start,
    SUM(sales) AS monthly_revenue
  FROM
    superstore_data
  GROUP BY
    month_start
)
SELECT
  month_start,
  monthly_revenue,
  SUM(monthly_revenue) OVER (ORDER BY month_start) AS cumulative_revenue
FROM
  monthly_rev
ORDER BY
  month_start;
