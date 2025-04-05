select * from Teachers
select * from Learners
select * from Timeslots
select * from Bookings

--Check if a Learner Matches a Teacher's Gender Preference--
SELECT *
FROM Learners L
JOIN Bookings B ON L.LearnerID = B.LearnerID
JOIN TimeSlots TS ON B.SlotID = TS.SlotID
JOIN Teachers T ON TS.TeacherID = T.TeacherID
WHERE L.Gender = T.GenderPreference;

--Teachers with Female Preference--
SELECT T.Name AS TeacherName
FROM Teachers T
WHERE T.GenderPreference = 'Female';

--Teachers with Male Preference
SELECT T.Name AS TeacherName
FROM Teachers T
WHERE T.GenderPreference = 'Male';

--Email Notifications for a Specific Booking--
SELECT EN.NotificationID, EN.Recipient, EN.NotificationType
FROM EmailNotifications EN
WHERE EN.BookingID = 1;

--All Email Notifications for Bookings--
SELECT EN.NotificationID, EN.Recipient, EN.NotificationType
FROM EmailNotifications EN
JOIN Bookings B ON EN.BookingID = B.BookingID;

--Blocked Slots for a Teacher1
SELECT TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM TimeSlots TS
WHERE TS.TeacherID = 1 AND TS.Status = 'Blocked';

--All Available Slots for a Saturday
SELECT TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM TimeSlots TS
WHERE TS.Day = 'Saturday' AND TS.Status = 'Available';

--All Available Slots for a Sunday
SELECT TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM TimeSlots TS
WHERE TS.Day = 'Sunday' AND TS.Status = 'Available';

--All Blocked Slots--
SELECT TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM TimeSlots TS
WHERE TS.Status = 'Blocked';

--All Booked Slots for a Teacher2--
SELECT TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM TimeSlots TS
WHERE TS.TeacherID = 2 AND TS.Status = 'Booked';

--All Booked Slots for a Teacher1-
SELECT TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM TimeSlots TS
WHERE TS.TeacherID = 1 AND TS.Status = 'Booked';

--All Bookings for a Specific Date
SELECT B.BookingID, L.Name AS LearnerName, T.Name AS TeacherName, TS.Day, TS.StartTime, TS.EndTime
FROM Bookings B
JOIN Learners L ON B.LearnerID = L.LearnerID
JOIN TimeSlots TS ON B.SlotID = TS.SlotID
JOIN Teachers T ON TS.TeacherID = T.TeacherID
WHERE B.EventDate = '2023-04-08';

--All Teachers and Their Booked Slots
SELECT T.Name AS TeacherName, TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM Teachers T
JOIN TimeSlots TS ON T.TeacherID = TS.TeacherID
WHERE TS.Status = 'Booked';

--All Teachers and Their Available Slots
SELECT T.Name AS TeacherName, TS.SlotID, TS.Day, TS.StartTime, TS.EndTime
FROM Teachers T
JOIN TimeSlots TS ON T.TeacherID = TS.TeacherID
WHERE TS.Status = 'Available';



















































































































































