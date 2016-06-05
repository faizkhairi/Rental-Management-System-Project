Create Or Replace Function supervisor_properties
Return Varchar
As
	list_of_properties varchar (1000) := ' ';
Begin
	for x in (Select LISTAGG ('Supervisor: ' ||  supervisor.first_name || ' ' || supervisor.last_name || chr(10) || 'Address: ' || rental_property.street_num || ' ' || rental_property.street_name || ' ' || rental_property.city || ' ' || rental_property.zip, ',' || chr(10) || chr(10))
			Within Group (Order By rental_property.supervisorId) as properties
	          From Rental_Property Inner Join Supervisor
		  On Rental_Property.supervisorId = Supervisor.supervisorId
		  --Group By supervisor.supervisorId
		 )
	Loop
		list_of_properties := x.properties;	
	End Loop;

	Return list_of_properties;
End;

/

Show Errors;
