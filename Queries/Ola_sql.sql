create database ola;
use ola;

#1.Retrieave all Successful bookings:
Create View Successful_Bookings As
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

#2. Find the Average ride distance for each vehicle type:

Create View Average_Ride_Distance_For_Vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type; 

SELECT * FROM Average_Ride_Distance_For_Vehicle;

#3. Get the Total Number of Cancelled Rides by Customers:

Create View Booking_Cancelled_by_Customer AS
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Canceled by Customer';

SELECT * FROM Booking_Cancelled_by_Customer;

#4. List the Top 5 Customer's who book the highest number of rides:

Create View Top_5_booking_customer As
SELECT Customer_ID, COUNT(Booking_ID) as Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 5;

SELECT * FROM Top_5_booking_customer;

#5. Get the number of rides cancelled by drivers due to personal & car related issue:

Create View Canceled_Rides_by_Driver AS
SELECT COUNT(*) FROM bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM Canceled_Rides_by_Driver;

#6. Find the maximum & minimum driver rating for prime sedan bookings:

Create View Min_Max_Driver_rating As
SELECT MAX(Driver_Ratings) as Max_Rating,
MIN(Driver_Ratings) as Min_Rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM Min_Max_Driver_rating;

#7. Retrive all Rides Where Payment was made using UPI:

Create View UPI_Payments As
SELECT * FROM bookings 
WHERE Payment_Method = 'UPI';

SELECT * FROM UPI_Payments;

#8. Find the average Customer Rating Per Vehicle Type:

Create View Vehicle_Type_Avg_rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as Average_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM Vehicle_Type_Avg_rating;

#9. Calculate the total booking value of rides completed succesfully:

Create View booking_value_of_Completed_rides As
SELECT SUM(Booking_Value) as Total_successfull_value
FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM booking_value_of_Completed_rides;

#10. List all incompleted Rides along with the Reasons:

Create View Incompleted_Rides As
SELECT  Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

SELECT * FROM Incompleted_Rides;