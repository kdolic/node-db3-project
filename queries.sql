-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT P.ProductName, C.CategoryName
FROM Product as P
JOIN Category as C
ON P.CategoryId = C.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT O.Id, S.CompanyName
FROM 'Order' as O
JOIN Shipper as S
ON O.ShipVia = S.Id
WHERE O.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT P.ProductName, OD.Quantity
FROM Product as P
JOIN OrderDetail as OD
ON OD.ProductId = P.Id
WHERE OD.OrderId = 10251
ORDER BY P.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT O.Id as OrderId, C.CompanyName as CompanyName, E.LastName as EmployeeLastName
FROM Order as O
JOIN Customer as C
ON C.Id = O.CustomerId
JOIN Employee as E
ON E.Id = O.EmployeeId