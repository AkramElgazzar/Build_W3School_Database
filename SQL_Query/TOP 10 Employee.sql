-- Find the names of the 10 employees who sold the highest quantity of sales, in "Beverages" Category,
-- and order them in descending order showing the highest first.

SELECT TOP 10 E.EmployeeID,
  E.FirstName + ' ' + E.LastName AS EmployeeName,  
  SUM(OD.Quantity) AS TotalQuantitySold
FROM
  Orders O
JOIN
  Employees E ON O.EmployeeID = E.EmployeeID
JOIN
  OrderDetails OD ON O.OrderID = OD.OrderID
JOIN
  Products P ON OD.ProductID = P.ProductID
JOIN
  Categories C ON P.CategoryID = C.CategoryID
WHERE C.CategoryName = 'Beverages'
GROUP BY E.EmployeeID, E.FirstName, E.LastName
ORDER BY TotalQuantitySold DESC;

-----------------------------------------Another Solution-----------------------------------

SELECT TOP 10 WITH TIES
  EmployeeID,
  FirstName + ' ' + LastName AS EmployeeName,
  TotalQuantitySold
FROM (
  SELECT
    E.EmployeeID,
    E.FirstName,
    E.LastName,
    SUM(OD.Quantity) AS TotalQuantitySold,
    DENSE_RANK() OVER (ORDER BY SUM(OD.Quantity) DESC) AS DenseRank
  FROM
    Orders O
  JOIN
    Employees E ON O.EmployeeID = E.EmployeeID
  JOIN
    OrderDetails OD ON O.OrderID = OD.OrderID
  JOIN
    Products P ON OD.ProductID = P.ProductID
  JOIN
    Categories C ON P.CategoryID = C.CategoryID
  WHERE
    C.CategoryName = 'Beverages'
  GROUP BY
    E.EmployeeID, E.FirstName, E.LastName
) AS RankedEmployees
ORDER BY DenseRank;
select * from Employees;