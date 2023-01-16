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
    primary key ( (employeeNumber), orderNumber )
) with clustering order by (orderNumber DESC );