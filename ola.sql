Create Database Ola;
Use Ola;

# 1) Retrive All Successful Bookings:
Create View Successful_Bookings As
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

# Retrive All Successful Bookings:
SELECT * FROM Successful_Bookings;

# 2) Find the average ride distance for each vechile type:

Create View ride_distance_for_each_vechile As
SELECT Vehicle_Type, AVG(Ride_Distance)
as average_distance FROM bookings
GROUP BY Vehicle_Type;

# 2) Find the average ride distance for each vechile type:
SELECT * FROM ride_distance_for_each_vechile;

# 3) Get the total number of rides canceled by customers:

Create View canceled_rides_by_customers As
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Canceled By Customer';


Select * From canceled_rides_by_customers;

# 4) List the top 5 customers who booked the highest number of rides:

Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

# List the top 5 customers who booked the highest number of rides:
Select * From Top_5_Customers;

# 5) GET the number of rides canceled by drivers due to personal and car-related issues:

Create View Rides_Canceled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

Select * From Rides_Canceled_by_Drivers_P_C_Issues;

# 6) Find the max and min Driver Ratings for Prime Sedan Bookings:

Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

Select * From Max_Min_Driver_Rating;

  # 7) Retrive all rides where payment is done through upi;
  
  Create View Payment_Done_By_UPI As
  SELECT * FROM bookings
  WHERE Payment_Method = 'UPI';
  
  Select * From Payment_Done_By_UPI ;
  
  # 8) Find the average customer rating per vehicle type:
  Create View Avg_Customer_Rating As
  SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
  FROM bookings
  GROUP BY Vehicle_Type;
  
  Select * From Avg_Customer_Rating;
  
  # 9) calculate the total booking values of rides completed successfully:
  Create View Total_Successful_Ride_values As
  SElECT SUM(Booking_Value) as total_successful_value
  FROM bookings
  WHERE Booking_Status = 'Success';
  
  Select * From Total_Successful_Ride_values;
  
  # 10)List All incomplete rides along with the reason:
  Create View Incomplete_Rides_With_Reason As
  SELECT Booking_ID, Incomplete_Rides_Reason
  From bookings 
  WHERE Incomplete_Rides = 'Yes';
  
# 1)Retrive All Successful Bookings:
SELECT * FROM Successful_Bookings;

# 2) Find the average ride distance for each vechile type:
SELECT * FROM ride_distance_for_each_vechile;

# 3) Get the total number of rides canceled by customers:
Select * From canceled_rides_by_customers;

# 4) List the top 5 customers who booked the highest number of rides:
  Select * From Top_5_Customers;
  
# 5) GET the number of rides canceled by drivers due to personal and car-related issues:
  Select * From Rides_Canceled_by_Drivers_P_C_Issues;
  
# 6) Find the max and min Driver Ratings for Prime Sedan Bookings:
  Select * From Max_Min_Driver_Rating;
  
# 7) Retrive all rides where payment is done through upi;
  Select * From Payment_Done_By_UPI ;
  
# 8) Find the average customer rating per vehicle type:
    Select * From Avg_Customer_Rating;
  
# 9) calculate the total booking values of rides completed successfully:
    Select * From Total_Successful_Ride_values;
  
# 10)List All incomplete rides along with the reason:
    Select * From  Incomplete_Rides_With_Reason;