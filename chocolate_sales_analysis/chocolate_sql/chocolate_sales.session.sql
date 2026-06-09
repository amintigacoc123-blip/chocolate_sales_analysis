CREATE TABLE chocolate_sales (
    sales_name VARCHAR(255),
    country VARCHAR(255),
    product VARCHAR(255),
    sales_date DATE,
    amount NUMERIC(12,2),
    boxes_shipped INT
)

CREATE TABLE chocolate_sales_raw (
    sales_name text,
    country text,
    product text,
    sales_date text,
    amount text,
    boxes_shipped INT
);

INSERT INTO chocolate_sales
select
    sales_name,
    country,
    product,
    to_date(sales_date, 'DD/MM/YYYY'),
    replace(replace(amount,'$',''),',','')::NUMERIC,
    boxes_shipped
from chocolate_sales_raw


select *
from chocolate_sales


