CREATE OR REPLACE VIEW clientView2 as
    SELECT c.customerNumber,
           e.employeeNumber,
           lastName,
           firstName,
           extension,
           email,
           reportsTo,
           jobTitle,
           o.officeCode,
           o.city,
           o.phone,
           o.addressLine1,
           o.addressLine2,
           o.state,
           o.country,
           o.postalCode,
           o.territory
FROM customers c
JOIN employees e on e.employeeNumber = c.salesRepEmployeeNumber
JOIN offices o on e.officeCode = o.officeCode;

SELECT * FROM clientView2;


