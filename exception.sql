CREATE TABLE employee (
 emp_id NUMBER PRIMARY KEY,
 emp_name VARCHAR2(50),
 salary NUMBER
);
-------
DECLARE
 emp_id NUMBER := 1;
 emp_name VARCHAR2(50) := 'John Doe';
 salary NUMBER := -6000;
BEGIN
 IF salary < 0 THEN
 DBMS_OUTPUT.PUT_LINE('Error: Salary cannot be negative.');
 ELSE
 INSERT INTO employee (emp_id, emp_name, salary)
 VALUES (emp_id, emp_name, salary);
 DBMS_OUTPUT.PUT_LINE('Data Inserted Successfully.');
 END IF;
EXCEPTION
 WHEN DUP_VAL_ON_INDEX THEN
 DBMS_OUTPUT.PUT_LINE('Error: Duplicate employee ID. Entry already exists.');
 WHEN VALUE_ERROR THEN
 DBMS_OUTPUT.PUT_LINE('Error: Invalid data type or value (e.g., negative salary?).');
 WHEN OTHERS THEN
 DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || ' - ' || SQLERRM);
END;
/
------
select * from employee;
