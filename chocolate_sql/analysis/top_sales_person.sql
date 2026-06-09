SELECT
    sales_name,
    sum(amount) as amount,
    sum(boxes_shipped) as boxes_shipped
FROM chocolate_sales
GROUP BY 
    sales_name
ORDER BY amount DESC