-- Example queries

-- 1. All bookings with customer, trip and hotel details
SELECT b.Booking_id, c.First_name, c.Last_name, t.Destination, h.Name AS Hotel, b.Status
FROM Booking b
JOIN Customer c ON c.Customer_id = b.Customer_id
JOIN Trip     t ON t.Trip_id     = b.Trip_id
JOIN Hotel    h ON h.Hotel_id    = b.Hotel_id;

-- 2. Total revenue per destination
SELECT t.Destination, SUM(p.Amount) AS Total_Revenue
FROM Payment p
JOIN Booking b ON b.Booking_id = p.Booking_id
JOIN Trip    t ON t.Trip_id    = b.Trip_id
GROUP BY t.Destination;

-- 3. Number of bookings handled by each employee
SELECT e.Employee_id, e.First_name, e.Last_name, COUNT(b.Booking_id) AS Bookings_Handled
FROM Employee e
LEFT JOIN Booking b ON b.Employee_id = e.Employee_id
GROUP BY e.Employee_id, e.First_name, e.Last_name;

-- 4. Pending bookings
SELECT * FROM Booking WHERE Status = 'Pending';
