Create Or Replace Function prop_names_4 (prop_city in Rental_Property.city%type, number_of_rooms in Rental_Property.num_rooms%type, rent in Rental_Property.monthly_rent%type)
Return Varchar
As
	list_properties varchar(300) := ' ';
Begin		
	Select LISTAGG(TO_CHAR(property_number), ', ')
	Within Group (Order By property_number)
	Into list_properties
	From Rental_Property
	Where ((city = prop_city OR prop_city is NULL) AND (num_rooms = number_of_rooms OR number_of_rooms is NULL) AND (monthly_rent = rent OR rent IS NULL));

	Return 'Available Properties (Property ID): ' || chr(10) || list_properties;
End;
/

Show Errors;	
