Create Or Replace Trigger lease_agreement
Before Insert
On Lease_Agreement
For Each Row

Declare
        rent_of_property Lease_Agreement.rent_amount%type;

Begin
        Select monthly_rent
        Into rent_of_property
        From Rental_Property
        Where Rental_Property.property_number = :New.property_number;

        If MONTHS_BETWEEN(:New.end_date, :New.start_date) = 6 Then
		Update Rental_Property set monthly_rent = monthly_rent * 1.1 where property_number = :new.property_number;
        End If;
End;
/

Show Errors;
