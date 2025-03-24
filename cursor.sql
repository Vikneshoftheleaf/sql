CREATE TABLE employee_details (
 employee_id NUMBER,
 first_name VARCHAR2(50),
 last_name VARCHAR2(50),
 department_id NUMBER
);
----------------
DECLARE
 CURSOR emp_cursor IS
 SELECT employee_id, first_name, last_name, department_id
 FROM employees
 WHERE department_id = 10;
 emp_record emp_cursor%ROWTYPE;
BEGIN
 OPEN emp_cursor;
 LOOP
 FETCH emp_cursor INTO emp_record;
 EXIT WHEN emp_cursor%NOTFOUND;
 INSERT INTO employee_details (employee_id, first_name, last_name, department_id)
 VALUES (emp_record.employee_id, emp_record.first_name, emp_record.last_name,
emp_record.department_id);
 END LOOP;
 CLOSE emp_cursor;
 COMMIT;
END;
/
