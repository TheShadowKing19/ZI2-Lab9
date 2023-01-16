create table clientView1 (
    customerNumber int,
    orderNumber int,
    orderDate date,
    customerName varchar,
    status varchar,
    LiczbaZamowien int,
    SumaZamowien float,
    PRIMARY KEY ( (customerNumber), orderNumber )
) with clustering order by (orderNumber ASC);

//
select customerNumber,
       orderNumber,
       customerName,
       `Liczba zamówień`,
       orderDate,
       status,
       `Suma zamówień`
from clientView;