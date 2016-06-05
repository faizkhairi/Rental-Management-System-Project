Create Or Replace Function rental_property_list (owner_first in Property_Owner.first_name%type, owner_last in Property_Owner.last_name%type, branch_name in Branch.branchName%type)
Return Varchar
As
	list_properties varchar(300) := ' ';
	manager_id Manager.managerId%type;
	owner int;
Begin
	Select managerId
	Into manager_id
	From Branch
	Where branchName = branch_name;
	
	Select owner_id
	Into owner
	From Property_Owner
	Where first_name = owner_first AND last_name = owner_last;	

	Select LISTAGG(TO_CHAR(property_number), ', ')
	Within Group (Order By property_number)
  	Into list_properties	
	From Rental_Property
	Where Rental_Property.owner_id = owner AND Rental_Property.supervisorId in (Select supervisorId
										From Supervisor
										Where managerId = manager_id);

	Return 'Rental Properties (Property ID) by ' || owner_first || ' ' || owner_last || ': ' || chr(10) || list_properties;
End;
/

Show Errors;
	
