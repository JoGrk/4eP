-- 1. Wyświetl nazwy firm klientów  i daty zamówień
SELECT CustomerName, OrderDate, Orders.CustomerID as ordersID, Customers.CustomerID as CustomerID
FROM Customers INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID

-- 2, Wyświetl dane spedytora z datą zamówienia
SELECT ShipperName, OrderDate
FROM Shippers INNER JOIN Orders ON Shippers.ShipperID = Orders.ShipperID

-- 3. Wyświetl nazwiska pracowników i daty zamówień
SELECT LastName, OrderDate
FROM Employees JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
-- 4. Wyświetl nazwy towarów, nazwy kategorii
SELECT ProductName,CategoryName
FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
SELECT ProductName,CategoryName,OrderID
FROM Products 
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID

-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
SELECT ProductName, CategoryName, OrderDate,
CustomerID
FROM Products INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID

-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
SELECT ProductName, CategoryName, OrderDate, CustomerName
FROM Customers
INNER JOIN orders ON Customers.customerID = orders.CustomerID
INNER JOIN orderdetails ON orders.orderID = orderdetails.orderID
INNER JOIN products ON orderdetails.productID = products.productID
INNER JOIN categories ON products.categoryID = categories.categoryID
-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)
SELECT ProductName, COUNT(*)
FROM Products
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductID
-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów

SELECT CustomerName, OrderDate, ProductName
FROM Customers