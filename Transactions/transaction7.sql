/* 
7)Show a lease agreement for a renter (name is entered as input).
*/

Create Or Replace Function get_lease_agreement(f_name IN Lease_Agreement.first_name%type, l_name IN Lease_Agreement.last_name%type) 
Return Varchar 
IS
	leaseAgreement varchar(200);
Begin
	
	Select LISTAGG(TO_CHAR(leaseId), ', ')
	Within Group (Order By leaseId)  
	Into leaseAgreement
	From Lease_Agreement
	Where first_name = f_name AND last_name = l_name;

	Return 'Lease Agreement(s) for ' || f_name || ' ' || l_name || ':' || chr(10) || leaseAgreement;
End;
/

Show Errors;
