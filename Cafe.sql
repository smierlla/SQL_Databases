Create Database Restaurant
go

/* this next code will create a table */ 


create table Employee (

EmployeeID			int,

FirstName			varchar(50),

LastName			varchar(50),

Position			varchar(50),

Constraint Pk_employee Primary key (EmployeeID)

)


/* this will inser records onto the table named employee */

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 2525352, ' George', 'Hanson','Chef')

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 2863982, ' Lisa', 'Browers','Manager')

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 7643382, ' Suzette', 'Crenshaw','Hostess')

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 4322121, ' David', 'Summers','Waiter')

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 6555322, ' Craig', 'Franks','Dishwasher')

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 2322391, ' Billy', 'Thompson','Busboy')

Insert into Employee(EmployeeID,FirstName,LastName,Position)
Values ( 35662328, ' Frank', 'Lemon','Chef')


/* this will change the name of the Databse to another */

USE master 
ALter Database Restaurant Modify NAME = Cafe


/* this will change the name of the colum "FirstName" to "FullName" */

Exec SP_Rename 'Employee.FirstName','FullName'


/* this will update all records so that full name colum holds a combination of first and last names with a space in between.*/


Update Employee
Set FullName = FullName + '' + LastName	


/* this will delete a coloum on the table in this case wil delete  the "LastName" Colum. */


Alter Table Employee
Drop Column LastName


/* here will add a column with the name "Hire Date ". */

Alter Table Employee
ADD HireDate		date 




	
