-- Travel Agency Database - sample data (run schema.sql first)

INSERT INTO Customer VALUES (1, 'Mohamed', 'Aly',    '01123456789', 'mohamed@gmail.com');
INSERT INTO Customer VALUES (2, 'Ahmed',   'Ashraf', '01234565434', 'ahmed@gmail.com');
INSERT INTO Customer VALUES (3, 'Mona',    'Zeyad',  '01087654674', 'mona@gmail.com');

INSERT INTO Employee VALUES ('A1', 'Sara',    'Aly',    'Sara@gmail.com',    '01123456789', 9000);
INSERT INTO Employee VALUES ('A2', 'Youssef', 'Ashraf', 'youssef@gmail.com', '01234565434', 8000);
INSERT INTO Employee VALUES ('A3', 'Lena',    'Saied',  'lena@gmail.com',    '01087654674', 7000);

INSERT INTO Trip VALUES ('T1', 'Trip 663', 'Tokyo', '2025-07-15', '2025-07-25');
INSERT INTO Trip VALUES ('T2', 'Trip 504', 'Paris', '2025-06-01', '2025-06-10');
INSERT INTO Trip VALUES ('T3', 'Trip 729', 'Roma',  '2025-08-20', '2025-08-28');

INSERT INTO Hotel VALUES ('H1', 'Sakura Hotel', 'Tokyo', 4.5);
INSERT INTO Hotel VALUES ('H2', 'Eiffel Stay',  'Paris', 4.8);
INSERT INTO Hotel VALUES ('H3', 'Roma Palace',  'Roma',  4.2);

INSERT INTO Booking VALUES ('B1', '2025-05-10', 'Confirmed', 1, 'A1', 'T2', 'H2');
INSERT INTO Booking VALUES ('B2', '2025-07-02', 'Pending',   2, 'A2', 'T1', 'H1');
INSERT INTO Booking VALUES ('B3', '2025-08-12', 'Confirmed', 3, 'A3', 'T3', 'H3');

INSERT INTO Payment VALUES ('P1', 'Credit Card',   9000, '2025-05-10', 'B1');
INSERT INTO Payment VALUES ('P2', 'Cash',          7500, '2025-07-14', 'B2');
INSERT INTO Payment VALUES ('P3', 'Bank Transfer', 8200, '2025-08-12', 'B3');

INSERT INTO Review VALUES ('R1', '2025-06-11', 4.5, 'Nice',                  'B1');
INSERT INTO Review VALUES ('R2', '2025-07-27', 4.8, 'A good place',          'B2');
INSERT INTO Review VALUES ('R3', '2025-08-29', 4.2, 'Hotel need some fixes', 'B3');
