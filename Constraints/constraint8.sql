Create Or Replace Trigger update_lease_agreement 
for insert on lease_agreement
compound trigger

rental_id rental_property.property_number%type;
lease_new lease_agreement.leaseId%type;

before each row is
begin
	rental_id := :new.property_number;
	lease_new := :new.leaseId;
end before each row;

after statement is
	begin
		update rental_property set monthly_rent = monthly_rent * 1.1 Where property_number = rental_id;
		update lease_agreement set rent_amount = (select monthly_rent from rental_property where property_number = rental_id) where leaseId = lease_new;

		update lease_agreement set deposit_amount = (select monthly_rent from rental_property where property_number = rental_id) where leaseId = lease_new;

end after statement;
	
end;
/

Show Errors;
