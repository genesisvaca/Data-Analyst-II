select * 
from "Employee";

-- ID igual que 3
select "EmployeeId", "FirstName" , "LastName" 
from "Employee"
where "EmployeeId" = 3;

-- ID mayor que 5
select "EmployeeId", "FirstName" , "LastName" 
from "Employee"
where "EmployeeId" > 5;

-- ID mayor o igual que 5
select "EmployeeId", "FirstName" , "LastName" 
from "Employee"
where "EmployeeId" >= 5;

-- ID Distinto que 5
select "EmployeeId", "FirstName" , "LastName" 
from "Employee"
where "EmployeeId" <> 5;

-- Select con fecha de nacimiento menor que '1970-05-29'
select "EmployeeId", "FirstName", "LastName", "BirthDate" 
from "Employee"
where "BirthDate" < '1970-05-29';

-- Todos los empleados de Calgary
select * 
from "Employee"
where "City" = 'Calgary';

-- Todos los empleados que no sean de Calgary
select * 
from "Employee"
where "City" <> 'Calgary';

-- AND
select "EmployeeId", "LastName", "FirstName", "City"
from "Employee"
where "City" = 'Calgary' and "City" = 'Edmonton';

-- OR
select "EmployeeId", "LastName", "FirstName", "City"
from "Employee"
where "City" = 'Calgary' or  "City" = 'Edmonton';

select * 
from "Employee"
where "City" = 'Calgary' and "ReportsTo" = 6;

select * 
from "Employee"
where "City" = 'Calgary' and "ReportsTo" = 2;

select * from "Employee";

-- No del todo eficiente
select "EmployeeId", "FirstName", "LastName"
from "Employee"
where "FirstName" = 'Andrew' or "FirstName" = 'Steve';

-- IN Mas correcto de filtrar por nombres 
select "EmployeeId", "FirstName", "LastName"
from "Employee"
where "FristName" in ('Andrew', 'Steve', 'Nancy');

-- NOT IN 
select "EmployeeId", "FirstName", "LastName"
from "Employee"
where "FristName" not in ('Andrew', 'Steve', 'Nancy');

-- BETWEEN empleados que tiene un ID entre el 3 y el 7
select * 
from "Employee" 
where "EmployeeId" between 3 and 7;

-- BETWEEN ENTRE LETRAS 
select  * 
from "Employee" 
where "FirstName" between 'A' and 'P';
