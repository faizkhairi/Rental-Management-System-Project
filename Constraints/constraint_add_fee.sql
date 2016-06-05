Create Or Replace Trigger addFee
For Insert On Rental_Property
Compound Trigger
        param_property_number Rental_Property.property_number%type;
Before Each Row Is
Begin
    param_property_number := :New.property_number;
End Before Each Row;

After Statement Is
Begin
      	Update Property_Owner
      	Set fee = fee + 400
   	Where Property_Owner.owner_id In (Select owner_id
   						From Rental_Property
       						Where property_number = param_property_number);
End After Statement;
End;
/
Show Errors;

