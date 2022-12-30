-- find all products
select * from products;

-- find all products that cost $1400
select * from product
where price = 1400;

-- find all products that cost $11.99 or $13.99
select * from product
where price = 11.99 or price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
select * from products
where NOT price = 11.99;
-- find all products and sort them by price from greatest to least
select * from products
order by Price desc;
-- find all employees who don't have a middle initial
select * from employees
-- find distinct product prices
where middleinitial is null;
-- find all employees whose first name starts with the letter ‘j’
select * from employees
where FirstName LIKE 'j%';
-- find all Macbooks
select * from products
where name like '%macbook%';
-- find all products that are on sale
select * from products
where OnSale = 1; 
-- find the average price of all products
select avg(price) from products;
-- find all Geek Squad employees who don't have a middle initial
select * from employees
where title like '%Geek Squad%' and MiddleInitial is null;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products
where StockLevel between 500 and 1200
order by price asc;