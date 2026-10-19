-- Travel Agency Database - schema
-- Uses standard SQL types (works on SQL Server / MySQL / PostgreSQL)

CREATE TABLE Customer (
    Customer_id   INT          PRIMARY KEY,
    First_name    VARCHAR(50)  NOT NULL,
    Last_name     VARCHAR(50)  NOT NULL,
    Phone_number  VARCHAR(20),
    Email_address VARCHAR(100)
);

CREATE TABLE Employee (
    Employee_id   VARCHAR(10)   PRIMARY KEY,
    First_name    VARCHAR(50)   NOT NULL,
    Last_name     VARCHAR(50)   NOT NULL,
    Email         VARCHAR(100),
    Phone_number  VARCHAR(20),
    Salary        DECIMAL(10,2)
);

CREATE TABLE Trip (
    Trip_id       VARCHAR(10)  PRIMARY KEY,
    Trip_Name     VARCHAR(100) NOT NULL,
    Destination   VARCHAR(100) NOT NULL,
    Start_Date    DATE,
    End_Date      DATE,
    CHECK (End_Date >= Start_Date)
);

CREATE TABLE Hotel (
    Hotel_id      VARCHAR(10)  PRIMARY KEY,
    Name          VARCHAR(100) NOT NULL,
    City          VARCHAR(100),
    Rating        DECIMAL(2,1) CHECK (Rating BETWEEN 0 AND 5)
);

CREATE TABLE Booking (
    Booking_id    VARCHAR(10)  PRIMARY KEY,
    Booking_date  DATE         NOT NULL,
    Status        VARCHAR(10)  NOT NULL
                  CHECK (Status IN ('Confirmed', 'Pending', 'Cancelled')),
    Customer_id   INT          NOT NULL REFERENCES Customer(Customer_id),
    Employee_id   VARCHAR(10)  NOT NULL REFERENCES Employee(Employee_id),
    Trip_id       VARCHAR(10)  NOT NULL REFERENCES Trip(Trip_id),
    Hotel_id      VARCHAR(10)  NOT NULL REFERENCES Hotel(Hotel_id)
);

CREATE TABLE Payment (
    Payment_id    VARCHAR(10)   PRIMARY KEY,
    Method        VARCHAR(30)   NOT NULL,
    Amount        DECIMAL(10,2) NOT NULL CHECK (Amount >= 0),
    Payment_date  DATE          NOT NULL,
    Booking_id    VARCHAR(10)   NOT NULL REFERENCES Booking(Booking_id)
);

CREATE TABLE Review (
    Review_id     VARCHAR(10)  PRIMARY KEY,
    Review_date   DATE         NOT NULL,
    Rating        DECIMAL(2,1) CHECK (Rating BETWEEN 0 AND 5),
    Comment       VARCHAR(255),
    Booking_id    VARCHAR(10)  NOT NULL REFERENCES Booking(Booking_id)
);
