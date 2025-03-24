CREATE TABLE TRAIN_DETAILS(TRAIN_NAME CHAR(20) PRIMARY KEY, TOTAL_SEATS
NUMBER(3), RESERVED_SEATS NUMBER(3));
INSERT INTO TRAIN_DETAILS VALUES
((‘Chennai Express’, 560 , 500),
(‘Ooty Express’, 660 , 600),
(‘Banglore Express’, 760 , 700),
(‘Cochin Express’, 860 , 800),
(‘Delhi Express’, 960 , 900),
(‘Andhra Express’, 560 , 500),
(‘Madras Express’, 660 , 600),
(‘Agra Express’, 760 , 700));
SELECT * FROM TRAIN_DETAILS;
CREATE TABLE WAITING_LIST(SLNO NUMBER(3),CUSTOMER_NAME CHAR(15)
PRIMARY KEY,TRAIN_NAME CHAR(20) REFERENCES TRAIN_DETAILS
(TRAIN_NAME));
INSERT INTO WAITING_LIST VALUES
( 11 , ‘Surthi’, ‘Chennai Express’),
(12 , ’Kannan’, ‘Ooty Express’),
(13 , ’Karthi’,’Banglore Express’),
( 14 , ’Kannama’, ‘Cochin Express’),
(15 ,’Agalya’, ‘Delhi Express’),
(16 ,’Arthi’, ‘Andhra Express’),
(17, ’Poorni’, ‘Madras Express’),
(18, ’Selvi’, ‘Agra Express’);
SELECT * FROM WAITING_LIST;
CREATE SYNONYM TRAIN FOR TRAIN_DETAILS;
CREATE SYNONYM WAITING FOR WAITING_LIST;
SELECT * FROM TRAIN;
SELECT * FROM WAITING; 
