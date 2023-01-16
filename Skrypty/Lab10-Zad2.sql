create table tradeView (
    employeeNumber int,
    orderNumber int,
    customerNumber int,
    contactFirstName varchar,
    contactLastName varchar,
    addressLine1 varchar,
    addressLine varchar,
    orderDate date,
    status varchar,
    wartoscZamowienia float,
    primary key ( (employeeNumber), customerNumber, orderNumber )
) with clustering order by (customerNumber DESC );

-- select
--     employeeNumber,
--     customerNumber,
--     orderNumber,
--     addressLine1,
--     addressLine2,
--     contactFirstName,
--     contactLastName,
--     orderDate,
--     status,
--     `Wartość zamówienia`
-- from tradeView;