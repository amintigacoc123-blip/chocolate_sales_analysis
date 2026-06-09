SELECT
    product,
    sum(amount) as total_revenue,
    sum(boxes_shipped) as boxes_shipped
FROM
    chocolate_sales
WHERE country = 'India'
GROUP BY 
    product
ORDER BY total_revenue DESC