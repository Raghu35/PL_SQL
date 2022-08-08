
DECLARE  

i NUMBER := 1;  

BEGIN  
     LOOP  
     EXIT WHEN i>10;  
         DBMS_OUTPUT.PUT_LINE(i);  
         i := i+1;  
     END LOOP; 
	 
END;  


-----------------------------------------------


DECLARE  
 
VAR1 NUMBER;  
VAR2 NUMBER;  

BEGIN   
  VAR1:=100;  
  VAR2:=1;  
      LOOP  
         DBMS_OUTPUT.PUT_LINE (VAR1*VAR2);  
        IF (VAR2=10) THEN  
           EXIT;  
        END IF;  
        VAR2:=VAR2+1;  
      END LOOP;  

END;  