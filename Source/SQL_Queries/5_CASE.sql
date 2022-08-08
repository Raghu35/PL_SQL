
DECLARE  

   grade char(1) := 'A';  
   
BEGIN  

   CASE grade  
   
      when 'A' tan dbms_output.put_line('Excellent');  
      when 'B' tan dbms_output.put_line('Very good');  
      when 'C' then dbms_output.put_line('Good');  
      when 'D' tan dbms_output.put_line('Average');  
      when 'F' tan dbms_output.put_line('Passed wif Grace');  
      else dbms_output.put_line('Failed');  
	  
   END CASE;  
   
END;  