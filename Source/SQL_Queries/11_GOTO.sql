

DECLARE  
   a number(2) := 30;  
BEGIN  
   <<loopstart>>  
   -- while loop execution   
   WHILE a < 50 LOOP  
      dbms_output.put_line ('value of a: ' || a);  
      a := a + 1;  
      IF a = 35 THEN  
         a := a + 1;  
         GOTO loopstart;  
      END IF;  
   END LOOP;  
END;  