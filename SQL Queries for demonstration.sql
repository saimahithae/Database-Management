-- Retrieve All Students in a Given Program
SELECT * FROM Student WHERE Program = 'Computer Science';

-- Find Rooms with Availability
SELECT Room_Number, Type, Rental_Cost FROM Room WHERE Availability = TRUE;

-- List Accommodations with Their Total Number of Rooms
SELECT a.Accommodation_ID, a.Type, COUNT(r.Room_Number) AS Total_Rooms
FROM Accommodation a
JOIN Room r ON a.Accommodation_ID = r.Accommodation_ID
GROUP BY a.Accommodation_ID, a.Type;

-- Update Contact Information for a Specific Student
UPDATE Student SET Contact = '555-7777' WHERE Student_ID = 'S001';

-- Calculate the Total Rent Paid by Each Student
SELECT s.Student_ID, s.Name, SUM(p.Amount) AS Total_Paid
FROM Student s
JOIN Payment p ON s.Student_ID = p.Student_ID
GROUP BY s.Student_ID, s.Name;

-- Delete Bookings That Have Checked Out
DELETE FROM Booking WHERE Check_out_Date < CURRENT_DATE;

-- Retrieve the Details of All Bookings for a Specific Room
SELECT b.Booking_ID, s.Name, b.Check_in_Date, b.Check_out_Date
FROM Booking b
JOIN Student s ON b.Student_ID = s.Student_ID
WHERE b.Room_Number = 'R101';

-- List Students Who Have Not Made Any Payments
SELECT s.Student_ID, s.Name
FROM Student s
LEFT JOIN Payment p ON s.Student_ID = p.Student_ID
WHERE p.Payment_ID IS NULL;

-- Find Accommodations Cheaper Than a Specific Rental Cost
SELECT Accommodation_ID, Type, Rental_Cost
FROM Accommodation
WHERE Rental_Cost < 500.00;

--  Increment Rental Cost for All Rooms by 10%
UPDATE Room SET Rental_Cost = Rental_Cost * 1.10;
