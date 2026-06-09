
SELECT
    country,
    sum(amount) as total_revenue,
    sum(boxes_shipped) as boxes_shipped
FROM chocolate_sales
GROUP BY country
ORDER BY total_revenue desc