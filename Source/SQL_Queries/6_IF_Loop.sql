
DECLARE
   a INTEGER := 20;
   b INTEGER := 30;
BEGIN
   if (a>b)
    THEN
	    dbms_output.put_line ('a is greater with value' || a);
	
	ELSIF (b>a)
	 THEN
	  dbms_output.put_line ('b is greater with value' || b);
	  
	ELSE
	   dbms_output.put_line ('a is equal to b with value' || b);
	   
   END IF
	   
END

	  