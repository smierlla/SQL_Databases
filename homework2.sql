/* HOMEWORK #2 TEMPLATE */

/*
  Use this template to format your submission for homework #2.  Be sure
  to put your SQL statements in the areas indicated below.
  See the homework assignment for specific directions on what is needed.
  Please follow the format specified.  This is necessary to make grading
  easier and more efficient.  Failure to follow this template will result
  in a deduction to your grade for this assignment.
*/

/********  SECTION FOR DATABASE # 1  ******************************************/
/* Put the SQL code to create Database #1 just after this comment */

Create Database Pollos 

GO

/* Put the SQL code to create the 1st table for Database #1 just after this comment */

Create Table Food_vendors (

Name_of_vendor		varchar(50)		not null,
Contract_end_date		date			not null,	
Number_Of_Deliveries_Per_Week		int			not null	

)


/* Put the SQL code to insert data into the the 1st table for Database #1 just after this comment */

Insert Into Food_vendors (Name_of_vendor, Contract_end_date, Number_Of_Deliveries_Per_Week)
values ( 'coca cola','20170425',3)


Insert Into Food_vendors (Name_of_vendor, Contract_end_date, Number_Of_Deliveries_Per_Week)
values ( 'vegetablesUSA','20170616',2)

Insert Into Food_vendors (Name_of_vendor, Contract_end_date, Number_Of_Deliveries_Per_Week)
values ( 'ararat','20170817',1)



/* Put the SQL code to create the 2nd table for Database #1 just after this comment */

Create Table Employees (

Name_Of_Employee		varchar(50)		not null,
Employee_ID				int				not null,
Date_Hired				date			not null
)


/* Put the SQL code to insert data into the the 2nd table for Database #1 just after this comment */

Insert Into Employees ( Name_Of_Employee ,Employee_ID ,	Date_Hired)
Values ( 'William Smith', 025,'20160817')

Insert Into Employees ( Name_Of_Employee ,Employee_ID ,	Date_Hired)
Values ( 'Peter Pan', 088,'20100417')

Insert Into Employees ( Name_Of_Employee ,Employee_ID ,	Date_Hired)
Values ( 'Lucy Vasquez', 048,'20140513')



/* Put the SQL code to create the 3rd table for Database #1 just after this comment */
Create Table Menu (

Name_Of_Plate		varchar(50)		not null,
Cost_Of_Plate		float			not null,
Order_Number_ID		int				not null


)



/* Put the SQL code to insert data into the the 3rd table for Database #1 just after this comment */

Insert Into Menu ( Name_Of_Plate,Cost_Of_Plate,Order_Number_ID)
Values ('The Cracker Chicken' , 14.50, 06)

Insert Into Menu ( Name_Of_Plate,Cost_Of_Plate,Order_Number_ID)
Values ('The Big BOY' , 25.50, 11)

Insert Into Menu ( Name_Of_Plate,Cost_Of_Plate,Order_Number_ID)
Values ('the Hot fuzz' , 12.80, 05)

/********  SECTION FOR DATABASE # 2  ******************************************/
/* Put the SQL code to create Database #2 just after this comment */

Create Database Car_Factory
GO

/* Put the SQL code to create the 1st table for Database #2 just after this comment */


Create Table Employees_ (

Employee_Name		varchar(50)		not null,
Employee_ID			int				not null,
Hire_Date			date			not null
)

/* Put the SQL code to insert data into the the 1st table for Database #2 just after this comment */

insert Into Employees_ (Employee_Name,Employee_ID,Hire_Date)		
Values ( ' Victoria Marin' , 5223, '20100411')

insert Into Employees_ (Employee_Name,Employee_ID,Hire_Date)		
Values ( ' Michael Jackson' , 9659, '20150214')

insert Into Employees_ (Employee_Name,Employee_ID,Hire_Date)		
Values ( ' Dwane Wade' , 4528, '20170617')

/* Put the SQL code to create the 2nd table for Database #2 just after this comment */

Create Table Assembly_Line (

Car_ID		int		not null,
Car_Make	varchar(50)		not null,
Production_Date		date	not null

)

/* Put the SQL code to insert data into the the 2nd table for Database #2 just after this comment */

Insert Into Assembly_Line ( Car_ID,	Car_Make,Production_Date)
Values ( 55, 'Mazda' , '20160617')

Insert Into Assembly_Line ( Car_ID,	Car_Make,Production_Date)
Values ( 25, 'Toyota' , '20160618')

Insert Into Assembly_Line ( Car_ID,	Car_Make,Production_Date)
Values ( 65, 'Nissan' , '20160619')

/* Put the SQL code to create the 3rd table for Database #2 just after this comment */

Create Table Assembly_Machinery (

Name_of_machine		varchar(50)		not null,
Machine_ID			int				not null,
Next_Scheduled_Maintanance		date	not null

)

/* Put the SQL code to insert data into the the 3rd table for Database #2 just after this comment */

Insert Into Assembly_Machinery ( Name_of_machine,Machine_ID,Next_Scheduled_Maintanance)
Values ('Body Welder Assembler', 456, '20170618')

Insert Into Assembly_Machinery ( Name_of_machine,Machine_ID,Next_Scheduled_Maintanance)
Values ('Power Painter', 266, '20170418')

Insert Into Assembly_Machinery ( Name_of_machine,Machine_ID,Next_Scheduled_Maintanance)
Values ('Engine Hydroulic Lift', 974, '20170918')


/********  SECTION FOR DATABASE # 3  ******************************************/
/* Put the SQL code to create Database #3 just after this comment */


Create DataBase The_Kings_Hotel

GO


/* Put the SQL code to create the 1st table for Database #3 just after this comment */

Create Table Work_Staff (

Name_Of_Employee		varchar(50)		not null,
Employee_Position		varchar(50)		not null,
Employee_pay_Hourly		float			not null,
Employee_Hire_Date		date			not null
)

/* Put the SQL code to insert data into the the 1st table for Database #3 just after this comment */

Insert Into Work_Staff (Name_Of_Employee,Employee_Position,Employee_pay_Hourly,Employee_Hire_Date)
Values ('Michael Smith','Pool Cleaner', 12.00,'20120918')

Insert Into Work_Staff (Name_Of_Employee,Employee_Position,Employee_pay_Hourly,Employee_Hire_Date)
Values ('Valerie Thompson','Chef Assistant', 15.00,'20150416')

Insert Into Work_Staff (Name_Of_Employee,Employee_Position,Employee_pay_Hourly,Employee_Hire_Date)
Values ('William Jones','Security Officer', 16.00,'20100714')

/* Put the SQL code to create the 2nd table for Database #3 just after this comment */

Create Table Room_Booking (

Room_Number		int			not null,
Room_check_In_Date		date	not null,
Romm_check_Out_Date		date	not null,
Room_Cost_Per_Night		float	not null
)


/* Put the SQL code to insert data into the the 2nd table for Database #3 just after this comment */
Insert Into Room_Booking (Room_Number,Room_check_In_Date,Romm_check_Out_Date,Room_Cost_Per_Night)
values (26,'20170714','20170717',150.00)

Insert Into Room_Booking (Room_Number,Room_check_In_Date,Romm_check_Out_Date,Room_Cost_Per_Night)
values (29,'20170914','20170917',300.00)

Insert Into Room_Booking (Room_Number,Room_check_In_Date,Romm_check_Out_Date,Room_Cost_Per_Night)
values (45,'20170719','20170725',95.00)


/* Put the SQL code to create the 3rd table for Database #3 just after this comment */

Create Table Service_Amenities (

Name_Of_Service		varchar(50)		not null,
Itemized_Service_Cost	float		not null,
Date_Ordered			date		not null,
Customer_Order_ID		int			not null
)

/* Put the SQL code to insert data into the the 3rd table for Database #3 just after this comment */

Insert Into Service_Amenities ( Name_Of_Service	, Itemized_Service_Cost,Date_Ordered,Customer_Order_ID)
Values ('Movie on Demand', 3.00,'20170719',12)

Insert Into Service_Amenities ( Name_Of_Service	, Itemized_Service_Cost,Date_Ordered,Customer_Order_ID)
Values ('Room Service,Beer',5.00 ,'20170719',14)

Insert Into Service_Amenities ( Name_Of_Service	, Itemized_Service_Cost,Date_Ordered,Customer_Order_ID)
Values ('Dry cleaning, Tuxedo', 20.00,'20170719',05)


/********  SECTION FOR DATABASE # 4  ******************************************/
/* Put the SQL code to create Database #4 just after this comment */

Create Database  Public_Library 

Go 

/* Put the SQL code to create the 1st table for Database #4 just after this comment */

Create Table Staff_Info (

Employee_ID			int		not null,
Employee_Name		varchar(50)		not null,
Employee_Position	varchar(50)		not null,
Employee_Hourly_pay		float		not null

)

/* Put the SQL code to insert data into the the 1st table for Database #4 just after this comment */

Insert Into Staff_Info ( Employee_ID,Employee_Name ,Employee_Position  , Employee_Hourly_pay )
Values (0254, ' Oscar Vasquez ', ' Librarian Assistant' , 12.00)

Insert Into Staff_Info ( Employee_ID,Employee_Name ,Employee_Position  , Employee_Hourly_pay )
Values (0257, ' James Adams ', '  Head Librarian' , 25.00)

Insert Into Staff_Info ( Employee_ID,Employee_Name ,Employee_Position  , Employee_Hourly_pay )
Values (0254, ' Hilary Smith ', ' SHelf Stocker' , 8.50)


/* Put the SQL code to create the 2nd table for Database #4 just after this comment */

Create Table Customer_Info (

Customer_Name			varchar(50)		not null,
Number_Of_Rentals		int				not null,
Rental_fee				float			not null,
Rental_Due_date			date			not null

)

/* Put the SQL code to insert data into the the 2nd table for Database #4 just after this comment */

Insert Into Customer_Info (Customer_Name,Number_Of_Rentals,Rental_fee,Rental_Due_date )	
Values ( 'Emily Jackson' , 5, 20.00,'20170719')

Insert Into Customer_Info (Customer_Name,Number_Of_Rentals,Rental_fee,Rental_Due_date )	
Values ( 'Thomas Likan' , 2 , 10.00,'20170425')

Insert Into Customer_Info (Customer_Name,Number_Of_Rentals,Rental_fee,Rental_Due_date )	
Values ( 'Homer Simpsom' , 10,55.25,'20171209')


/* Put the SQL code to create the 3rd table for Database #4 just after this comment */

Create Table Book_Inventory (

Book_name		varchar(50)		not null,
Book_ISBN		int				not null,
Number_of_Copies	int			not null,
Date_realesed		date		not null
)

/* Put the SQL code to insert data into the the 3rd table for Database #4 just after this comment */


Insert Into Book_Inventory (Book_name ,Book_ISBN,Number_of_Copies,Date_realesed)
Values ( 'Where the Wild Things Are', 252624,2,'20161209')

Insert Into Book_Inventory (Book_name ,Book_ISBN,Number_of_Copies,Date_realesed)
Values ( '2000 ways to make money', 222561,1,'20121215')

Insert Into Book_Inventory (Book_name ,Book_ISBN,Number_of_Copies,Date_realesed)
Values ( 'Peter Pan', 292725,6,'20161209')


/********  SECTION FOR DATABASE # 5  ******************************************/
/* Put the SQL code to create Database #5 just after this comment */

Create Database The_Boston_University

Go

/* Put the SQL code to create the 1st table for Database #5 just after this comment */


Create Table Professor_Info (

Professor_Name		varchar(50)		not null,
Professor_ID		int				not null,
Professor_Yearly_Salary	float			not null,
Professor_Hire_Date		date		not null
)


/* Put the SQL code to insert data into the the 1st table for Database #5 just after this comment */

Insert Into Professor_Info ( Professor_Name,Professor_ID,Professor_Yearly_Salary,Professor_Hire_Date)
Values( 'Heather Heart', 5625,60000,'20161209')

Insert Into Professor_Info ( Professor_Name,Professor_ID,Professor_Yearly_Salary,Professor_Hire_Date)
Values( 'Robert Thompson', 5943,75000,'20121210')

Insert Into Professor_Info ( Professor_Name,Professor_ID,Professor_Yearly_Salary,Professor_Hire_Date)
Values( 'Manuel Diaz', 5828,66500,'20161209')


/* Put the SQL code to create the 2nd table for Database #5 just after this comment */

Create Table Student_Info (

Student_Name		varchar(50)		not null,
Student_ID			int				not null,
Student_Major		varchar(50)		not null,
Student_GPA			float			not null
)

/* Put the SQL code to insert data into the the 2nd table for Database #5 just after this comment */

Insert Into Student_Info ( Student_Name ,Student_ID,Student_Major,Student_GPA)
Values (' Ricardo Larios', 85243, 'Chemistry', 3.1)

Insert Into Student_Info ( Student_Name ,Student_ID,Student_Major,Student_GPA)
Values (' Henry Ford', 85463, 'Computer Science', 3.3)

Insert Into Student_Info ( Student_Name ,Student_ID,Student_Major,Student_GPA)
Values (' Maggie Duff', 85413, 'Criminal justice', 2.9)

/* Put the SQL code to create the 3rd table for Database #5 just after this comment */

Create Table Campus_Events (

Event_Name		varchar(50)		not null,
Event_Date		date			not null,
Event_Fee		float			not null

)

/* Put the SQL code to insert data into the the 3rd table for Database #5 just after this comment */

Insert Into Campus_Events ( Event_Name,Event_Date,Event_Fee)
Values ( 'Mock Interview day','20170205',2.00)

Insert Into Campus_Events ( Event_Name,Event_Date,Event_Fee)
Values ( 'Career Day','20170215',6.00)

Insert Into Campus_Events ( Event_Name,Event_Date,Event_Fee)
Values ( 'Resume Builder','20170207',2.50)