/*
d) When a lease agreement is created, the status for the property should be changed to leased (or not_available). 
*/ 

CREATE or REPLACE TRIGGER change_status_trig
AFTER INSERT ON Lease_Agreement
FOR EACH ROW
BEGIN
	UPDATE Rental_Property
	set status = 'leased'
	where :New.property_number = Rental_Property.property_number;

END;
/
	
Show Errors;
