-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT Product.ProductName,
       Category.CategoryName
  FROM Product,
       Category
 WHERE Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [order].id,
       Shipper.CompanyName
  FROM [order],
       Shipper
 WHERE [order].OrderDate < '2012-08-09' AND 
       [order].ShipVia = Shipper.Id;

-- (Less code version):

SELECT Id,
       CompanyName
  FROM [order],
       Shipper
 WHERE OrderDate < '2012-08-09' AND 
       ShipVia = Shipper.Id;

-- ***Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName,
       Quantity
  FROM Product
       INNER JOIN
       OrderDetail ON Product.Id = OrderDetail.ProductId AND 
                      OrderId = 10251;


-- ***Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT OrderId,
       CompanyName,
       ContactName
  FROM OrderDetail,
       Customer;