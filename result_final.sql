SQL> @tables.sql

Table created.


Table created.


Table created.


Table created.


Table created.


Table created.


Table created.


Sequence created.

SQL> @transaction1.sql

Function created.

No errors.
SQL> @transaction2.sql

Function created.

No errors.
SQL> @transaction3.sql

Function created.

No errors.
SQL> @transaction4.sql

Function created.

No errors.
SQL> @transaction5.sql

Function created.

No errors.
SQL> @transaction6.sql

Procedure created.

No errors.
SQL> @transaction7.sql

Function created.

No errors.
SQL> @transaction8.sql

Function created.

No errors.
SQL> @transaction9.sql

Function created.

No errors.
SQL> @transaction10.sql

Function created.

No errors.
SQL> @constraint1.sql

Trigger created.

No errors.
SQL> @constraint3.sql

Trigger created.

No errors.
SQL> @constraint4.sql

Trigger created.

No errors.
SQL> @constraint8.sql

Trigger created.

No errors.
SQL> @constraint_add_fee.sql

Trigger created.

No errors.
SQL> @insert_data.sql

1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


1 row created.


SQL> Select get_rental_properties('Brunch') From Dual;

GET_RENTAL_PROPERTIES('BRUNCH')                                                                                                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Manager Name: Joey Tribbiani                                                                                                                                                                            
Property Number: 1000 Street: 123 MainStreet                                                                                                                                                            
Property Number: 2000 Street: 123 FirstStreet                                                                                                                                                           
Property Number: 3000 Street: 123 FourthStreet                                                                                                                                                          
                                                                                                                                                                                                        

SQL> Select supervisor_properties From Dual;

SUPERVISOR_PROPERTIES                                                                                                                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Supervisor: Robin Scherbatsky                                                                                                                                                                           
Address: 130 OracleArena Oakland 99999,                                                                                                                                                                 
                                                                                                                                                                                                        
Supervisor: Robin Scherbatsky                                                                                                                                                                           
Address: 130 OracleArena Oakland 99999,                                                                                                                                                                 
                                                                                                                                                                                                        
Supervisor: Ted Mosby                                                                                                                                                                                   
Address: 124 SecondStreet Beijing 11111,                                                                                                                                                                
                                                                                                                                                                                                        
Supervisor: Ted Mosby                                                                                                                                                                                   
Address: 128 ThirdStreet SanFrancisco 11141,                                                                                                                                                            
                                                                                                                                                                                                        
Supervisor: Barney Stinson                                                                                                                                                                              
Address: 123 FirstStreet SanFrancisco 11111,                                                                                                                                                            
                                                                                                                                                                                                        
Supervisor: Barney Stinson                                                                                                                                                                              
Address: 123 FourthStreet SanJose 12345,                                                                                                                                                                
                                                                                                                                                                                                        
Supervisor: Barney Stinson                                                                                                                                                                              
Address: 123 MainStreet Beijing 11111                                                                                                                                                                   
                                                                                                                                                                                                        

SQL> Select rental_property_list('Spongebob', 'Squarepants', 'Brunch') From Dual;

RENTAL_PROPERTY_LIST('SPONGEBOB','SQUAREPANTS','BRUNCH')                                                                                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Rental Properties (Property ID) by Spongebob Squarepants:                                                                                                                                               
1000, 3000                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> 
SQL> Select rental_property_list('Sandy', 'Cheeks', 'Lunch') From Dual;

RENTAL_PROPERTY_LIST('SANDY','CHEEKS','LUNCH')                                                                                                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Rental Properties (Property ID) by Sandy Cheeks:                                                                                                                                                        
6000                                                                                                                                                                                                    
                                                                                                                                                                                                        

SQL> Select prop_names_4('Beijing', NULL, NULL) From Dual;

PROP_NAMES_4('BEIJING',NULL,NULL)                                                                                                                                                                       
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Available Properties (Property ID):                                                                                                                                                                     
1000, 4000                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> Select prop_names_4('Beijing', 5, 10000) From Dual;

PROP_NAMES_4('BEIJING',5,10000)                                                                                                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Available Properties (Property ID):                                                                                                                                                                     
1000                                                                                                                                                                                                    
                                                                                                                                                                                                        

SQL> Select properties_by_branch_5 From Dual;

PROPERTIES_BY_BRANCH_5                                                                                                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Brunch: 3                                                                                                                                                                                               
Treebranch: 2                                                                                                                                                                                           
Lunch: 2                                                                                                                                                                                                
                                                                                                                                                                                                        

SQL> Execute Create_Lease_Agreement(1000, 'Bob', 'Jones', '4081231234', '4081234567', 'John', 'Doe', '4081235678', date '2014-01-01', date '2014-07-01');

PL/SQL procedure successfully completed.

SQL> Execute Create_Lease_Agreement(2000, 'Bob', 'Jones', '4081231234', '4081234567', 'Billy', 'Doe', '4089876543', date '2014-02-01', date '2014-08-01');

PL/SQL procedure successfully completed.

SQL> Select * From Lease_Agreement;

   LEASEID PROPERTY_NUMBER FIRST_NAME                     LAST_NAME                      HOME_PHONE WORK_PHONE FRIEND_F_NAME                  FRIEND_L_NAME                  FRIEND_PHO START_DAT       
---------- --------------- ------------------------------ ------------------------------ ---------- ---------- ------------------------------ ------------------------------ ---------- ---------       
END_DATE  DEPOSIT_AMOUNT RENT_AMOUNT                                                                                                                                                                    
--------- -------------- -----------                                                                                                                                                                    
         1            1000 Bob                            Jones                          4081231234 4081234567 John                           Doe                            4081235678 14-JAN-01       
14-JUL-01          12100       12100                                                                                                                                                                    
                                                                                                                                                                                                        
         2            2000 Bob                            Jones                          4081231234 4081234567 Billy                          Doe                            4089876543 14-FEB-01       
14-AUG-01       24201.08    24201.08                                                                                                                                                                    
                                                                                                                                                                                                        

SQL> Select * From Rental_Property;

PROPERTY_NUMBER SUPERVISORID   OWNER_ID STREET_NUM STREET_NAME                    CITY                           ZIP         NUM_ROOMS MONTHLY_RENT STATUS               START_DAT                      
--------------- ------------ ---------- ---------- ------------------------------ ------------------------------ ---------- ---------- ------------ -------------------- ---------                      
           1000          999        111 123        MainStreet                     Beijing                        11111               5        12100 leased               01-JAN-10                      
           2000          999        222 123        FirstStreet                    SanFrancisco                   11111               5     24201.08 leased               08-AUG-08                      
           3000          999        111 123        FourthStreet                   SanJose                        12345               7     12354.34 available            08-MAY-08                      
           4000          998        111 124        SecondStreet                   Beijing                        11111               6     15034.12 available            02-JAN-10                      
           5000          998        222 128        ThirdStreet                    SanFrancisco                   11141               6     15045.78 available            20-JAN-10                      
           6000          997        333 130        OracleArena                    Oakland                        99999            1000       100000 available            01-JUN-15                      
           7000          997        111 130        OracleArena                    Oakland                        99999            1000       100000 available            01-JUN-15                      

7 rows selected.

SQL> Select get_lease_agreement('Bob', 'Jones') From Dual;

GET_LEASE_AGREEMENT('BOB','JONES')                                                                                                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Lease Agreement(s) for Bob Jones:                                                                                                                                                                       
1, 2                                                                                                                                                                                                    
                                                                                                                                                                                                        

SQL> Select more_than_one_rental From Dual;

MORE_THAN_ONE_RENTAL                                                                                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Renter(s) who rented more than one rental property (the number of times the name appears is the number of properties he/she owns):                                                                      
                                                                                                                                                                                                        
Bob Jones, Bob Jones                                                                                                                                                                                    
                                                                                                                                                                                                        

SQL> Select get_average_rent('Beijing') From Dual;

GET_AVERAGE_RENT('BEIJING')                                                                                                                                                                             
---------------------------                                                                                                                                                                             
                   15034.12                                                                                                                                                                             

SQL> Select get_average_rent('SanFrancisco') from dual;

GET_AVERAGE_RENT('SANFRANCISCO')                                                                                                                                                                        
--------------------------------                                                                                                                                                                        
                        15045.78                                                                                                                                                                        

SQL> select lease_expire_2 from dual;

LEASE_EXPIRE_2                                                                                                                                                                                          
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Properties whose leases expire in next two months:                                                                                                                                                      
                                                                                                                                                                                                        
Property ID: 1000                                                                                                                                                                                       
 Street: 123 MainStreet Beijing 11111                                                                                                                                                                   
Property ID: 2000                                                                                                                                                                                       
 Street: 123 FirstStreet SanFrancisco 11111                                                                                                                                                             
                                                                                                                                                                                                        

INSERT INTO Rental_Property VALUES (900, 999, 111, '123', 'FifthStreet', 'SanJose', 12345, 7, 12354.34, 'available', Date '2010-03-15')
            *
ERROR at line 1:
ORA-20000: The supervisor can only supervise up to 3 properties. 
ORA-06512: at "PWU.SUPERVISOR_3_PROPERTIES", line 20 
ORA-04088: error during execution of trigger 'PWU.SUPERVISOR_3_PROPERTIES' 


SQL> INSERT INTO BRANCH VALUES (124, 1, 'Lunch', '4080000001', '101', 'AmazonStreet', 'Seattle', '66666');
INSERT INTO BRANCH VALUES (124, 1, 'Lunch', '4080000001', '101', 'AmazonStreet', 'Seattle', '66666')
*
ERROR at line 1:
ORA-00001: unique constraint (PWU.SYS_C00284327) violated 


SQL> Execute Create_Lease_Agreement(1000, 'Bob', 'Jones', '4081231234', '4081234567', 'John', 'Doe', '4081235678', date '2014-01-01', date '2014-02-01');
BEGIN Create_Lease_Agreement(1000, 'Bob', 'Jones', '4081231234', '4081234567', 'John', 'Doe', '4081235678', date '2014-01-01', date '2014-02-01'); END;

*
ERROR at line 1:
ORA-02290: check constraint (PWU.SYS_C00284339) violated 
ORA-06512: at "PWU.CREATE_LEASE_AGREEMENT", line 24 
ORA-06512: at line 1 


SQL> Execute Create_Lease_Agreement(1000, 'Bob', 'Jones', '4081231234', '4081234567', 'John', 'Doe', '4081235678', date '2014-01-01', date '2016-01-01');
BEGIN Create_Lease_Agreement(1000, 'Bob', 'Jones', '4081231234', '4081234567', 'John', 'Doe', '4081235678', date '2014-01-01', date '2016-01-01'); END;

*
ERROR at line 1:
ORA-02290: check constraint (PWU.SYS_C00284339) violated 
ORA-06512: at "PWU.CREATE_LEASE_AGREEMENT", line 24 
ORA-06512: at line 1 


SQL> select * from property_owner;

  OWNER_ID FIRST_NAME                     LAST_NAME                      STREET_NUM STREET_NAME                    CITY                           ZIP        PHONE             FEE                      
---------- ------------------------------ ------------------------------ ---------- ------------------------------ ------------------------------ ---------- ---------- ----------                      
       111 Spongebob                      Squarepants                          1001 PineappleStreet                SanJose                        95129      4089999999       1200                      
       222 Patrick                        Star                                 1001 RockStreet                     SanFrancisco                   99999      4088888888       800                      
       333 Sandy                          Cheeks                               1001 TreeStreet                     Dallas                         88888      4087777777       400                      

SQL> spool off;
