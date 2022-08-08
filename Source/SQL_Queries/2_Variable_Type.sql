
DECLARE    

SALARY EMP.SAL % TYPE;  // This declaration will declare a variable SALARY that has the same data type as column SAL of the EMP table.
ECODE EMP.empno % TYPE; 
  
BEGIN    

dbms_output.put_line('Enter Salary of Ecode '); 
Ecode :=&Ecode;  
Select SAL into SALARY from EMP where EMPNO = ECODE;  
dbms_output.put_line('Salary of ' || ECODE || 'is = || salary');  

END;




