
/*
Triggers are stored programs, which are automatically executed or fired when some event occurs.

Triggers are written to be executed in response to any of the following events.

A database manipulation (DML) statement (DELETE, INSERT, or UPDATE).
A database definition (DDL) statement (CREATE, ALTER, or DROP).
A database operation (SERVERERROR, LOGON, LOGOFF, STARTUP, or SHUTDOWN).

*/

CREATE OR REPLACE TRIGGER display_salary_changes  
BEFORE DELETE OR INSERT OR UPDATE ON customers  
FOR EACH ROW  
WHEN (NEW.ID > 0)  
DECLARE  
   sal_diff number;  
BEGIN  
   sal_diff := :NEW.salary  - :OLD.salary;  
   dbms_output.put_line('Old salary: ' || :OLD.salary);  
   dbms_output.put_line('New salary: ' || :NEW.salary);  
   dbms_output.put_line('Salary difference: ' || sal_diff);  
END;  


DECLARE   
   total_rows number(2);  
BEGIN  
   UPDATE  customers  
   SET salary = salary + 5000;  
   IF sql%notfound THEN  
      dbms_output.put_line('no customers updated');  
   ELSIF sql%found THEN  
      total_rows := sql%rowcount;  
      dbms_output.put_line( total_rows || ' customers updated ');  
   END IF;   
END; 