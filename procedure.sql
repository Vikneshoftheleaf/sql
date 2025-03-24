CREATE TABLE STUD (
 CID INT PRIMARY KEY,
 NAME CHAR(5)
);
-----------------------
CREATE OR REPLACE PROCEDURE LIBRARY (
 ID IN INT,
 NAME IN CHAR
)
IS
BEGIN
 INSERT INTO STUD VALUES (ID, NAME);
END;
/
--------------------------
BEGIN
 INSERT INTO STUD VALUES (001, 'John');
 DBMS_OUTPUT.PUT_LINE('Record inserted successfully');
END;
/
-------------------------
SELECT * FROM STUD;
