
/* 1. */
/* this query will count the number of appointments each mechachanic has */ 

Select FirstName, LastName,AppointmentDate,Count(MechanicID) as '# of Appointments'
From ServiceAppointments
Join Mechanics on Mechanics.ID = ServiceAppointments.MechanicID
Group By FirstName, LastName,AppointmentDate,MechanicID








/* 2 */

/* this query will list, in chronological order, the customers’ appointment dates
 and times, as well as the year, manufacturer, and model of their cars */

 Select FirstName,LastName,Year,Manufacturer,Model,AppointmentDate,AppointmentTime
From Customers
Join ServiceAppointments on Customers.ID = ServiceAppointments.CustomerID
Join Cars on ServiceAppointments.VehicleID = Cars.VehicleID
Order By AppointmentTime ASC

 
 
 
 
 
 /* 3 */ 

/* this query will list all of the services ever performed on a car, including the numbers of times they have been done  and 
the total cost of the services. */ 

Select ServiceName,Count(Services.ServiceID) AS '# Times Performed', SUM(Cost) As 'Total Cost'
From Services
Join AppointmentServices ON Services.ServiceID = AppointmentServices.ServiceID
Join ServiceAppointments ON AppointmentServices.AppointmentID = ServiceAppointments.AppointmentID
Group By ServiceName, Services.ServiceID,Cost
ORDER BY 'Total Cost' DESC









/* 4 */

/* this Query will show the number of services performed for each customer and the total cost of those services */

Select FirstName, LastName, Count( AppointmentServices.AppointmentID) as '# Services Performed', Sum(Cost) as 'Total Cost'
From Customers
Join ServiceAppointments ON Customers.ID = ServiceAppointments.CustomerID
Join AppointmentServices ON ServiceAppointments.AppointmentID = AppointmentServices.AppointmentID
Join Services ON AppointmentServices.ServiceID = Services.ServiceID
GROUP BY FirstName,LastName,AppointmentServices.AppointmentID
Order BY LastName ASC



