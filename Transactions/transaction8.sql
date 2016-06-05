Create Or Replace Function more_than_one_rental
Return Varchar
As
renter_names varchar(300) := ' ';
 

Begin
	Select LISTAGG(first_name || ' ' || last_name, ', ')
	Within Group (Order By property_number)
	Into renter_names
	From Lease_Agreement
	Group By first_name, last_name
	Having Count(*) > 1;

	Return 'Renter(s) who rented more than one rental property (the number of times the name appears is the number of properties he/she owns): ' || chr(10) || chr(10) ||  renter_names;
End;
/

Show Errors;	
