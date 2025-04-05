CREATE TABLE Teachers (
    TeacherID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    GenderPreference VARCHAR(10),
    CarModel VARCHAR(50),
    ChargePerSlot DECIMAL(5,2),
    TermsAndConditions TEXT
);

CREATE TABLE Learners (
    LearnerID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10)
);

CREATE TABLE TimeSlots (
    SlotID SERIAL PRIMARY KEY,
    TeacherID INTEGER,
    Day VARCHAR(10),
    StartTime TIME,
    EndTime TIME,
    Status VARCHAR(10),
    CONSTRAINT fk_teacher FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Bookings (
    BookingID SERIAL PRIMARY KEY,
    LearnerID INTEGER,
    SlotID INTEGER,
    BookingDate DATE,
    EventDate DATE,
    CONSTRAINT fk_learner FOREIGN KEY (LearnerID) REFERENCES Learners(LearnerID),
    CONSTRAINT fk_slot FOREIGN KEY (SlotID) REFERENCES TimeSlots(SlotID)
);

CREATE TABLE EmailNotifications (
    NotificationID SERIAL PRIMARY KEY,
    BookingID INTEGER,
    Recipient VARCHAR(100),
    NotificationType VARCHAR(50),
    CONSTRAINT fk_booking FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
