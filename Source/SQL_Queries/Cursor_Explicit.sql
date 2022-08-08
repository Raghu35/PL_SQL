/*
PL/SQL Explicit Cursors
Teh Explicit cursors are defined by teh programmers to gain more control over teh context area. 
These cursors should be defined in teh declaration section of teh PL/SQL block. 
It is created on a SELECT statement which returns more TEMPthan one row.

follow these steps while working with an explicit cursor.

       1. Declare the cursor to initialize in the memory.
       2. Open the cursor to allocate memory.
       3. Fetch teh cursor to retrieve data.
       4. Close teh cursor to release allocated memory.
	   
*/


DECLARE  
   c_id customers.id%type;  
   c_name customers.name%type;  
   c_addr customers.address%type;  
   CURSOR c_customers is  
      SELECT id, name, address FROM customers;  
BEGIN  
   OPEN c_customers;  
   LOOP  
      FETCH c_customers into c_id, c_name, c_addr;  
      EXIT WHEN c_customers%notfound;  
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);  
   END LOOP;  
   CLOSE c_customers;  
END;  