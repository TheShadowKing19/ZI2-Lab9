CREATE OR REPLACE VIEW clientView as
    SELECT c.customerNumber,
           o.orderNumber,
           o.orderDate,
           c.customerName,
           o.status,
           SUM(d.quantityOrdered) as "Liczba zamówień",
           SUM(d.quantityOrdered * d.priceEach) as "Suma zamówień"
from customers c
JOIN orders o on c.customerNumber = o.customerNumber
join orderdetails d on o.orderNumber = d.orderNumber
GROUP BY 1, 2, 3, 4, 5;

SELECT * FROM clientView;