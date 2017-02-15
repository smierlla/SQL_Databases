

/* this will create a database that will hold all the tables for the assingment */

Create Database UniversityMIT

GO


/* 1. */ /* this creates the table with the requiered constraint */ 

Create Table ParkingPass (

CarModel		varchar(25)		not null,
CarColor		varchar(25),		
CarMake			varchar(25)		not null
)

/* this constraint will pass the required constraint */

insert into ParkingPass(CarModel,CarColor,CarMake)	
Values('toyota','red','avalon')

/* this constraint will fail the requiered constraint*/

insert into ParkingPass(CarModel,CarColor,CarMake)	
Values('toyota','red','')



/* 2.*/ /* the table below will have a field constraint and a table constraint */


Create Table EventPass (

ContactName		varchar(25)		not null,
ContactNumber	varchar(12)		not null,
Age				int				not null,
Height			int				not null,

Constraint CK_MinAge Check ( Age > 10),	
Constraint CK_AgeHeightRec Check ((Age >13) OR (Height > 48))
)


/* the insert statement below wil check the field constraints */ 

/* fail */

Insert Into EventPass(ContactName,ContactNumber,Age,Height)
Values('Michel Rojas','980-244-5245',9,50)


/* pass */

Insert Into EventPass(ContactName,ContactNumber,Age,Height)
Values('Miguel Marino','910-247-5245',11,50)


/* the insert statements below will check the table Constraints */

/* Fail */

Insert Into EventPass(ContactName,ContactNumber,Age,Height)
Values('Lili Diaz','940-544-5145',12,39)

/* Pass */

Insert Into EventPass(ContactName,ContactNumber,Age,Height)
Values('Mark Rock','984-344-5545',18,70)




/* 3. */  /* the table below will define a primary key constraint */

Create table EventSport (

EventID		int				not null,
EventName	varchar(25)		not null,
StudentName	varchar(25)		not null

CONSTRAINT pk_EventID PRIMARY KEY Clustered (EventID ASC)

)


/* this Insert statements will check the Primary key Constraint */

/* Pass Different ID's */

Insert Into EventSport(EventID,EventName,StudentName)
Values(1,'High Jump','Danny Rojas')

Insert Into EventSport(EventID,EventName,StudentName)
Values(2,'Long Jump','David Presy')


/* Fail  Same ID's */ 

Insert Into EventSport(EventID,EventName,StudentName)
Values(3,'Mile Run','Lexy Smith')

Insert Into EventSport(EventID,EventName,StudentName)
Values(3,'Long Throw','Marc Moorre')



/* 4. */  /* this table below will define a unique Constraint */

Create Table  CyberTeam (


MemberID		int				not null,
MemberName		varchar(25)		not null,
NickName		varchar(25)		not null,

Constraint UK_NickName Unique ( NickName )

)

/* this will insert  data on this table */

/* this will pass the unique constraint*/

Insert Into CyberTeam (MemberID,MemberName,NickName)
Values (1, ' jhon Mayer', 'Red')

Insert Into CyberTeam (MemberID,MemberName,NickName)
Values (2, ' Michael Lor', 'Mantis')


/* this inserts will fail with Unique constraint */

Insert Into CyberTeam (MemberID,MemberName,NickName)
Values (3, ' Larry Hoover', 'Joker')

Insert Into CyberTeam (MemberID,MemberName,NickName)
Values (4, ' Matt Deamon', 'Joker')





/* 5. */ /*  below there will be 3 tables created ,Students, Classes, and ClassRegistration */

Create Table Students (

StudentID		int				not null,
StudentName		varchar(25)		not null,

CONSTRAINT pk_StudentID PRIMARY KEY Clustered (StudentID ASC)

)



Create Table Classes (

CourseID			int				not null,
CourseName			Varchar(25)		not null,


CONSTRAINT pk_CourseID PRIMARY KEY Clustered (CourseID ASC)

)



Create Table ClassRegistration (

StudentID		int			not null,
CourseID		int			not null,


/* this constraint will  delete students records from both student table and class registration table */

Constraint FK_ClassRegistration_Students Foreign Key (StudentID) References Students (StudentID) on Delete Cascade,


/* this constraint  will keep records from being deleted if they are on the classRegistration table. */

Constraint FK_ClassRegistration_Course Foreign Key (CourseID) References Classes (CourseID) on Delete no Action

)



/* this will insert records to the table Students */

Insert into Students(StudentID,StudentName)
Values (1,'Michael Smith')

Insert into Students(StudentID,StudentName)
Values (2,'Sean Jackson')

Insert into Students(StudentID,StudentName)
Values (3,'Maggie Perl')

Insert into Students(StudentID,StudentName)
Values (4,'Robert Moore')


/* this will insert records to the Classes table */

Insert Into Classes(CourseID,CourseName)
Values(1,'Intro to Programming')

Insert Into Classes(CourseID,CourseName)
Values(2,'Penetration Testing')

Insert Into Classes(CourseID,CourseName)
Values(3,'Computer Forensics')


/* this will insert records to the Class registration table */ 

Insert into ClassRegistration (StudentID,CourseID)
Values (1,1)

Insert into ClassRegistration (StudentID,CourseID)
Values (2,2)

Insert into ClassRegistration (StudentID,CourseID)
Values (3,3)

Insert into ClassRegistration (StudentID,CourseID)
Values (4,3)

