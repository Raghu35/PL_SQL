

DECLARE  
   exception_name EXCEPTION;  
BEGIN  
   IF condition THEN  
      RAISE exception_name;  
   END IF;  
EXCEPTION  
   WHEN exception_name THEN  
   statement;  
END;  