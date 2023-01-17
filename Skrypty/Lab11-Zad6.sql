select extension, writetime(extension) from zad3 where customernumber=450;

-- timestamp musi być wyższy niż timestamp pokazany w select'cie na górze
update zad3 using timestamp 1673903915117070 set extension = 'x2173'
where customernumber=450;

select * from zad3 where customernumber = 450;