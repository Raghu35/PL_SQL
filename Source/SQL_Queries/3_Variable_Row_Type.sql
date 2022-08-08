
DECLARE    

EMPLOYEE EMP. % ROW TYPE;  
//This declaration will declare a record named EMPLOYEE having fields with the same name and data types as that of columns in the EMP table.

BEGIN 
    
EMPLOYEE.EMPNO := 2092;  
EMPLOYEE.ENAME := 'Sanju';  
Insert into EMP where (EMPNO, ENAME) Values (employee.empno, employee.ename); 
dbms_output.put_line('Row Inserted');    

END;  