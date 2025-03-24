CREATE TABLE number_status (
 num NUMBER,
 status VARCHAR2(20)
);
-------------
DECLARE
 num_list SYS.ODCINUMBERLIST := SYS.ODCINUMBERLIST(-10, 0, 6, 15);
 status VARCHAR2(20);
BEGIN
 FOR i IN 1 .. num_list.COUNT LOOP
 IF num_list(i) > 0 THEN
 status := 'positive';
 ELSIF num_list(i) < 0 THEN
 status := 'negative';
 ELSE
 status := 'zero';
 END IF;
 INSERT INTO number_status (num, status)
 VALUES (num_list(i), status);
 END LOOP;
 FOR rec IN (SELECT * FROM number_status ORDER BY num) LOOP
 DBMS_OUTPUT.PUT_LINE('Number: ' || rec.num || ' Status: ' || rec.status);
 END LOOP;
END;
/
