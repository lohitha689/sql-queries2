CREATE TABLE superstore_data (
    category VARCHAR,
    city VARCHAR,
    country VARCHAR,
    customer_id VARCHAR,
    customer_name VARCHAR,
    discount NUMERIC,
    market VARCHAR,
    record_count INT,
    order_date DATE,
    order_id VARCHAR,
    order_priority VARCHAR,
    product_id VARCHAR,
    product_name TEXT,
    profit NUMERIC,
    quantity INT,
    region VARCHAR,
    row_id INT,
    sales NUMERIC,
    segment VARCHAR,
    ship_date DATE,
    ship_mode VARCHAR,
    shipping_cost NUMERIC,
    state VARCHAR,
    sub_category VARCHAR,
    year INT,
    market2 VARCHAR,
    weeknum INT
);
COPY superstore_data (
    category ,
    city ,
    country ,
    customer_id ,
    customer_name ,
    discount ,
    market ,
    record_count ,
    order_date ,
    order_id ,
    order_priority ,
    product_id ,
    product_name ,
    profit ,
    quantity ,
    region ,
    row_id ,
    sales ,
    segment ,
    ship_date ,
    ship_mode ,
    shipping_cost ,
    state ,
    sub_category ,
    year ,
    market2 ,
    weeknum )
FROM 'C:\Program Files\PostgreSQL\17\data\Untitled spreadsheet - superstore_cleaned.csv'
DELIMITER ','
CSV HEADER;

select count(*) from superstore_data;