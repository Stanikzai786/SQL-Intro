/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select p.name as productName, c.Name as Categoryname
from products as p 
inner join categories as c 
on c.CategoryID = p.CategoryID
where c.Name = "Conmputer";

select products.name, categories.name
from product 
inner join categories on categories.CategoryID = product.categoryID
where categories.name = "computers"; 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select products.name as "product Name", products.Price as "products Price", reviews.Rating
 from products
 inner join reviews on reviews.ProductID = products.ProductID
 where reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, Sum(s.Quantity) As total
from sale as s
inner join employees as e On e.EmployeeID = s.EmployeeID
group by total desc
limit 2;

select * from sales 
where EmployeeID = 33809;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as 'Department Name', c.Name as 'Category Name' from departments as d
inner join categories as c on c.DepartmentID = d.DepartmentID
where c.name = 'Applinces' or c.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.Name, sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnite) as 'Total price'
From products as p 
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97; 

select 8 from sales where productID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.Name, r.Reviewer, r.Rating, r.comment
from products as p 
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */