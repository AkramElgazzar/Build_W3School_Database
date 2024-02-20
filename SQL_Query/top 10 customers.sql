--Find the names of the top 10 customers who spent the most money,
--and order them showing the highest first

SELECT TOP 10
 C.CustomerName, ROUND(SUM(OD.Quantity * P.Price), 2) AS TotalSpent
FROM
 Customers C  
JOIN
 Orders O ON C.CustomerID = O.CustomerID
JOIN
 OrderDetails OD ON O.OrderID = OD.OrderID
JOIN
 Products P ON P.ProductID = OD.ProductID 
GROUP BY C.CustomerName
ORDER BY TotalSpent DESC;