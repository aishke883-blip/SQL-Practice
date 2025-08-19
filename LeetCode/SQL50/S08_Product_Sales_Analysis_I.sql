/*Product Sales Analysis I*/
select product_name, year, price from sales join product on sales.product_id=product.product_id;
/*OR*/
select p.product_name, s.year, s.price from sales s join product p on s.product_id=p.product_id;
