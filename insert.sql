INSERT INTO Teachers (Name, GenderPreference, CarModel, ChargePerSlot, TermsAndConditions)
VALUES 
('AKASH', 'Male', 'Maruti Celerio', 50.00, 'Custom terms'),
('ASHA', 'Female', 'Hyundai i10', 40.00, 'Custom terms');

INSERT INTO Learners (Name, Gender)
VALUES 
('Balu', 'Male'),
('Chandra', 'Male'),
('Dinesh', 'Male'),
('Bharati', 'Female'),
('Chetana', 'Female'),
('Disha', 'Female');

INSERT INTO TimeSlots (TeacherID, Day, StartTime, EndTime, Status)
VALUES 
(1, 'Saturday', '06:00:00', '06:30:00', 'Available'),
(1, 'Saturday', '06:30:00', '07:00:00', 'Available'),
(1, 'Saturday', '07:00:00', '07:30:00', 'Available'),
(2, 'Saturday', '07:00:00', '07:30:00', 'Available'),
(2, 'Saturday', '08:00:00', '08:30:00', 'Available'),
(2, 'Sunday', '07:00:00', '07:30:00', 'Available'),
(2, 'Sunday', '08:00:00', '08:30:00', 'Available');

INSERT INTO Bookings (LearnerID, SlotID, BookingDate, EventDate)
VALUES 
(1, 1, '2023-04-01', '2023-04-08'),  
(2, 2, '2023-04-01', '2023-04-08'),  
(3, 3, '2023-04-01', '2023-04-08'),  
(4, 4, '2023-04-01', '2023-04-08'),  
(5, 5, '2023-04-01', '2023-04-08'),  
(6, 6, '2023-04-01', '2023-04-09');  

INSERT INTO EmailNotifications (BookingID, Recipient, NotificationType)
VALUES 
(1, 'akash@abc.com', 'Booking Confirmation'),
(1, 'balu@abc.com', 'Booking Confirmation'),
(2, 'asha@abc.com', 'Booking Confirmation'),
(2, 'chandra@abc.com', 'Booking Confirmation'),
(3, 'akash@abc.com', 'Booking Confirmation'),
(3, 'dinesh@abc.com', 'Booking Confirmation'),
(4, 'asha@abc.com', 'Booking Confirmation'),
(4, 'bharati@abc.com', 'BookingConfirmation'),
(5, 'asha@abc.com', 'Booking Confirmation'),
(5, 'chetana@eabc.com', 'Booking Confirmation');
