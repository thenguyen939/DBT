{{ config(materialized='table') }}

SELECT 
    st_sales.sale_order_number,
    st_sales.order_date,
    dim_product.product_key,
    dim_reseller.reseller_key,
    dim_reseller.emp_key,
    dim_region.sale_territory_key,
    st_sales.quantity,
    st_sales.unit_price,
    st_sales.sales,
    st_sales.cost
FROM 
    {{ ref('st_sales') }} 
LEFT JOIN 
    {{ ref('dim_product') }} 
ON 
    st_sales.product_key = dim_product.product_key
LEFT JOIN 
    {{ ref('dim_seller') }} 
ON 
    st_sales.emp_key = dim_reseller.emp_key
LEFT JOIN 
    {{ ref('dim_region') }} 
ON 
    st_sales.sale_territory_key = dim_region.sale_territory_key
LEFT JOIN 
    {{ ref('dim_reseller') }} 
ON 
    st_sales.reseller_key=dim_reseller.reseller_key