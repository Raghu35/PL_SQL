


create or replace procedure "INSERTUSER"    
(id IN NUMBER,    
name IN VARCHAR2) 
   
is    

begin   
 
insert into user values(id,name);
    
end;    

-------------- call the function

BEGIN    
   insertuser(101,'Rahul');  
   dbms_output.put_line('record inserted successfully');    
END;   



DROP PROCEDURE procedure_name;   




--   SYNTAX

--   CREATE [OR REPLACE] PROCEDURE procedure_name  
--       [ (parameter [,parameter]) ]  
--   IS  
--       [declaration_section]  
--   BEGIN  
--       executable_section  
--   [EXCEPTION  
--       exception_section]  
--   END [procedure_name];  



-------------------------------------------