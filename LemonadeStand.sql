
/* this creates the database */

Create Database LemonadeStand

Go

/* this will create the table EmployeeSales with primary keys */


Create Table EmployeeSales (

ID				int				not null,
FirstName		varchar(25)		not null,
LastName		varchar(25)		not null,
Year			int				not null,
Q1Sales			float			not null,
Q2Sales			float			not null,
Q3Sales			float			not null,
Q4Sales			float			not null,

CONSTRAINT pk_ID_Year PRIMARY KEY  (ID, Year)

)

/* this will create inserts for the table EmployeeSales */

Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(1,'Christina','Yonkers',2011,268.39,310.43,410.11,289.92)		


Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(1,'Christina','Yonkers',2012,292.03,305.25,499.84,416.22)

Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(2,'Bill','Chisholm',2012,199.44,215.55,312.50,278.88)


Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(3,'Belinda','Jhonson',2011,215.25,188.14,266.34,244.20)


Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(4,'Greg','Hathaway',2010,188.15,205.11,383.75,301.01)


Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(4,'Greg','Hathaway',2011,245.96,360.33,588.02,489.00)


Insert into EmployeeSales(ID,FirstName,LastName,Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
Values(4,'Greg','Hathaway',2012,307.68,362.66,601.23,501.17)




/* this will use a query to display the full name, year , and each of the quarters in a more organized way and easier to read. */

Select LastName + ',' + FirstName AS 'Full Name',Year,Q1Sales As 'Q1 Sales',Q2Sales As 'Q2 Sales',Q3Sales As 'Q3 Sales',Q4Sales As 'Q4 Sales'

From EmployeeSales

Go


/* this query will modify the table so that there is an additional column created called " Yearly Sales". 
for this part I summed  Q1 , Q2, Q3 and Q4 for each employee sales and created a new colum with each of the 
employees  total sales for the year */

Select LastName + ',' + FirstName AS 'Full Name',Year,Q1Sales As 'Q1 Sales',Q2Sales As 'Q2 Sales',Q3Sales As 'Q3 Sales',Q4Sales As 'Q4 Sales',

(Q1Sales + Q2Sales + Q3Sales + Q4Sales) as Yearly_Sales

From EmployeeSales

Go



 