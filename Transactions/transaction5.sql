Create Or Replace Function properties_by_branch_5
Return Varchar
As
	Cursor branch_cursor Is
	Select branchId
	From Branch;

	manager_Id Manager.managerId%type;
	name_of_branch Branch.branchName%type;
	branch_id int;
	property_list varchar(100);
	result varchar(400);
Begin
	For branch_id_in_cursor
	In branch_cursor
	Loop
		Select managerId, branchName
		Into manager_Id, name_of_branch
		From Branch
		Where branchId = branch_id_in_cursor.branchId;

		Select TO_CHAR(COUNT(*))
		Into property_list
		From Rental_Property
		Where status = 'available' AND supervisorId In (Select supervisorId
								From Supervisor
								Where managerId = manager_Id);

		result := result || name_of_branch || ': ' || property_list || chr(10);
	End Loop;
	Return result;
End;
/

Show Errors;
