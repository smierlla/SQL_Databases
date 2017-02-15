Create Database Digits
Go

/* this will create the table for the database */ 

Create Table Contacts (

ID					int ,
FirstName		varchar(25),
LastName		varchar(25),
PhoNum			varchar(25),
StreetAddr		varchar(25),
City			varchar(25),
ST				varchar(25),
Zip				int

)

/* this will insert information to the table */ 

Insert Into Contacts(ID,FirstName,LastName,PhoNum,StreetAddr,City,ST,Zip)
Values(1,'Fred','Jones','555-1212','123 Main St.','Charlotte','NC',28269)	

Insert Into Contacts(ID,FirstName,LastName,PhoNum,StreetAddr,City,ST,Zip)
Values(2,'Lisa','Smith','555-2376','3321 Cherry Ln','Cornelious','NC',28031)	

Insert Into Contacts(ID,FirstName,LastName,PhoNum,StreetAddr,City,ST,Zip)
Values(3,'Bob','Thomas','555-8765','320 sycamore Dr','Davidson','NC',28036)	

Insert Into Contacts(ID,FirstName,LastName,PhoNum,StreetAddr,City,ST,Zip)
Values(4,'George','Crawford','NULL','21 B Baker St','Huntersville','NC',28078)	

Insert Into Contacts(ID,FirstName,LastName,PhoNum,StreetAddr,City,ST,Zip)
Values(5,'Melanie','Grimes','NULL','100 Madison Ave','Mooresville','NC',28117)



/* the code below will be a query selecting all of the table's data */

Select * From Contacts;	


/* the code below is a query that will select only the firstname, lastname, and phone number colums. */ 

Select FirstName,LastName,PhoNum From Contacts;


/* the code below will rewrite the colum names from firsname = First Name , lastname = Last Name and phonum = Phone Number*/

Select FirstName AS ' First Name',LastName AS 'Last Name',PhoNum AS ' Phone Number' From Contacts;

/*
	