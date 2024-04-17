-- Find infrequent customers
SELECT 
Customer.CustomerID,
FirstName,
LastName,
Count(DISTINCT OrderID) as TotalOrders
FROM Orders
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
HAVING COUNT(DISTINCT OrderID) = 1