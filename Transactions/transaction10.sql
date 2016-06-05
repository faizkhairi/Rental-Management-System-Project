Create Or Replace Function lease_expire_2
Return Varchar
As

name_address varchar(500) := ' ';

Begin
	Select LISTAGG('Property ID: ' || TO_CHAR(Rental_Property.property_number) || chr(10) || ' Street: ' || Rental_Property.street_num || ' ' || Rental_Property.street_name || ' ' || Rental_Property.city || ' ' || Rental_Property.zip || chr(10), '')
 	Within Group (Order By Rental_Property.property_number)
	Into name_address
	From Lease_Agreement Inner Join Rental_Property
	On Lease_Agreement.property_number = Rental_Property.property_number
	Where MONTHS_BETWEEN(Lease_Agreement.end_date, SYSDATE) <= 2 AND status = 'leased';

	Return 'Properties whose leases expire in next two months: ' || chr(10) || chr(10) || name_address;
End;
/

Show Errors; 
