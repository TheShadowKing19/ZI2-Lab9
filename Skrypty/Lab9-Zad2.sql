CREATE OR REPLACE VIEW tradeView AS
    SELECT e.employeeNumber,
           o.orderNumber,
           o.customerNumber,
           c.contactFirstName,
           c.contactLastName,
           c.addressLine1,
           c.addressLine2,
           o.orderDate,
           o.status,
           SUM(o2.quantityOrdered * o2.priceEach) as "Wartość zamówienia"
FROM employees e
JOIN customers c on e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders o on c.customerNumber = o.customerNumber
JOIN orderdetails o2 on o.orderNumber = o2.orderNumber
GROUP BY e.employeeNumber, o.orderNumber, o.customerNumber, c.contactFirstName, c.contactLastName, c.addressLine1, c.addressLine2, o.orderDate, o.status
ORDER BY o.orderDate DESC;





SELECT * FROM tradeView