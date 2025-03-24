CREATE TABLE software (
 name VARCHAR2(15)
);
-------------------------
CREATE OR REPLACE TRIGGER t_software
BEFORE INSERT OR DELETE OR UPDATE
ON software
FOR EACH ROW
DECLARE
 v_user VARCHAR2(15);
BEGIN
 SELECT user INTO v_user FROM dual;
 IF INSERTING THEN
 DBMS_OUTPUT.PUT_LINE('One line inserted by ' || v_user);
 ELSIF UPDATING THEN
 DBMS_OUTPUT.PUT_LINE('One line updated by ' || v_user);
 ELSIF DELETING THEN
 DBMS_OUTPUT.PUT_LINE('One line deleted by ' || v_user);
 END IF;
END;
/
----------------------------
INSERT INTO software VALUES ('PL/SQL');
SELECT * FROM software;
-- Updating data
UPDATE software SET name = 'SQL' WHERE name = 'PL/SQL';
-- Selecting data after update
SELECT * FROM software;
-- Deleting data
DELETE FROM software WHERE name = 'SQL';
