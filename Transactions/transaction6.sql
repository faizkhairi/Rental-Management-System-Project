CREATE or REPLACE Procedure Create_Lease_Agreement (
	property_number_param IN Lease_Agreement.property_number%type,  
	f_name IN Lease_Agreement.first_name%type, 
	l_name IN Lease_Agreement.last_name%type, 
	home_phone_param IN Lease_Agreement.home_phone%type, 
	work_phone_param IN Lease_Agreement.work_phone%type, 
	friend_f_name_param IN Lease_Agreement.friend_f_name%type, 
	friend_l_name_param IN Lease_Agreement.friend_l_name%type, 
	friend_phone_param IN Lease_Agreement.friend_phone%type, 
	start_date_param IN varchar, 
	end_date_param IN varchar)

Is
param_start_date date;
param_end_date date;
rent number;

BEGIN 		
	param_start_date := to_date(start_date_param, 'yyyy/mm/dd');
	param_end_date := to_date(end_date_param, 'yyyy/mm/dd');

	SELECT monthly_rent INTO rent from rental_property where rental_property.property_number = property_number_param;
	
	INSERT INTO Lease_Agreement VALUES (
		lease_sequence.nextval, 
		property_number_param, 
		f_name,
		l_name,
		home_phone_param, 
		work_phone_param, 
		friend_f_name_param, 
		friend_l_name_param, 
		friend_phone_param, 
		param_start_date, 
		param_end_date, 
		rent, 
		rent
	);
END;
/

Show Errors;
