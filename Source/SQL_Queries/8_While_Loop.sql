

DECLARE  

i INTEGER := 1; 
 
BEGIN  

    WHILE (i <= 10) 
	
	LOOP  
       DBMS_OUTPUT.PUT_LINE(i);  
       i := i+1;  
    END LOOP;  

END; 


----------------------------------------------------------

DECLARE   

VAR1 NUMBER;  
VAR2 NUMBER; 
 
BEGIN 
  
   VAR1:=200;  
   VAR2:=1;  
        WHILE (VAR2<=10)  
            LOOP  
            DBMS_OUTPUT.PUT_LINE (VAR1*VAR2);  
            VAR2:=VAR2+1;  
        END LOOP;
  
END; 