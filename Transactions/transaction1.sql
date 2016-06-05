/* 1.3 #1 */
Create Or Replace Function get_rental_properties(branch_name In Branch.branchName%type)
Return varchar
Is

manager_name varchar(80) := ' ';
rental_properties varchar(500) := ' ';
manager_id Manager.managerId%type;

Begin
	Select manager.first_name || ' ' || manager.last_name, manager.managerId
	Into manager_name, manager_id
	From Branch Inner Join Manager
	On Branch.managerId = Manager.managerId
	Where branchName = branch_name;

	Select LISTAGG ('Property Number: ' || TO_CHAR(property_number) || ' Street: ' || street_num || ' ' || street_name || chr(10), '')
	WITHIN GROUP (ORDER BY property_number)
	Into rental_properties
	From Rental_Property Where status = 'available' AND supervisorId In (Select supervisorId 
										From Supervisor 
										Where managerId = manager_id);

	Return 'Manager Name: ' || manager_name || ' ' || chr(10) ||  rental_properties;
End;
/

Show Errors;
