Create Or Replace Trigger supervisor_3_properties
For Insert
On Rental_Property
Compound Trigger

MAX_PROPERTIES CONSTANT Int := 3;
current_properties int := 1;
supervisor_new int;

Before Each Row Is
Begin
	supervisor_new := :New.supervisorId;
End Before Each Row;

After Statement Is 
Begin
	Select Count(*)
	Into current_properties
	From Rental_Property
	Where supervisorId = supervisor_new;
	
	If current_properties > MAX_PROPERTIES Then
		RAISE_APPLICATION_ERROR(-20000,'The supervisor can only supervise up to 3 properties.');
	End If;
End After Statement;

End;
/

Show Errors;

	
