/* 
9)Show the average rent for properties in a town (name of the town is entered as input). You can take the average of all the properties that are rented out (in that town) and those available for rent in that town.
*/

Create or Replace Function get_average_rent (town_param IN Rental_Property.city%type)
Return Number Is
average_Rent Rental_Property.monthly_rent%type;
Begin
	Select AVG(monthly_rent)
	Into average_Rent
	From Rental_Property
	where city = town_param AND status = 'available';
	Return average_Rent;
End;
/

Show Errors
