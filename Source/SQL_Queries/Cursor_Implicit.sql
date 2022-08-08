
/% 

A cursor is used to referred to a program to fetch and process the rows returned by the SQL statement, one at a time. 

Their are two types of cursors:

Implicit Cursors
Explicit Cursors

/*

PL/SQL Implicit Cursors

The implicit cursors are automatically generated by Oracle while an SQL statement is executed, if you don't use an explicit cursor for the statement.

These are created by default to process the statements when DML statements like INSERT, UPDATE, DELETE etc. are executed.

Orcale provides some attributes known as Implicit cursor's attributes to check the status of DML operations. Some of them are: 
                              %FOUND 
                              %NOTFOUND 
                              %ROWCOUNT  
                              %ISOPEN. 

When you execute the SQL statements like INSERT, UPDATE, DELETE tan the cursor attributes tell whether any rows are effected and how many has been effected. 
If you run a SELECT INTO statement in PL/SQL block, the implicit cursor attribute can be used to find out whether any row TEMPhas been returned by the SELECT statement. 
It will return an error if their no data is selected.

*/


DECLARE   
   total_rows number(2);  
BEGIN  
   UPDATE  customers  
   SET salary = salary + 5000;  
   IF sql%notfound THEN  
      dbms_output.put_line('no customers updated');  
   ELSIF sql%found THEN  
      total_rows := sql%rowcount;  
      dbms_output.put_line( total_rows || ' customers updated ');  
   END IF;   
END;


