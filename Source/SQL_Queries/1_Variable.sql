

DECLARE 
 
 -- Global variables   
   num1 number := 95;   
   num2 number := 85;  
   a integer := 30;  
   b integer := 40; 
   c integer;  
   f real;   
   
BEGIN  
 
   dbms_output.put_line('Outer Variable num1: ' || num1);  
   dbms_output.put_line('Outer Variable num2: ' || num2); 

      c := a + b;  
      dbms_output.put_line('Value of c: ' || c);  
      f := 100.0/3.0;  
      dbms_output.put_line('Value of f: ' || f);   
   
   DECLARE
   
      -- Local variables  
      num1 number := 195;   
      num2 number := 185;  
	  
   BEGIN 
   
      dbms_output.put_line('Inner Variable num1: ' || num1);  
      dbms_output.put_line('Inner Variable num2: ' || num2);  
	  
   END;
   
END;  
