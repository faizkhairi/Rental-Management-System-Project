Create Table Manager(
        managerId int Primary Key,
        first_name varchar(30),
        last_name varchar(30),
        phone varchar(10),
        start_date date
);

Create Table Branch(
        branchId int Primary Key,
        managerId int unique,
        branchName varchar(30) unique,
        phone varchar(10),
        street_num varchar(10),
        street_name varchar (30),
        city varchar (30),
        zip varchar(10),
        Foreign Key(managerId) References Manager(managerId)
);

Create Table Supervisor(
        supervisorId int Primary Key,
        managerId int,
        first_name varchar(30),
        last_name varchar(30),
        phone varchar(10),
        start_date date,
        Foreign Key(managerId) References Manager(managerId)
);

Create Table Staff(
        staffId int Primary Key,
        branchId int,
        first_name varchar(30),
        last_name varchar(30),
        phone varchar(10),
        start_date date,
        Foreign Key (branchId) References Branch(branchId)
);

Create Table Property_Owner(
        owner_id int Primary Key,
        first_name varchar(30),
        last_name varchar(30),
        street_num int,
        street_name varchar (30),
        city varchar (30),
        zip varchar(10),
        phone varchar(10),
        fee number (10,2)
);

Create Table Rental_Property(
        property_number int Primary Key,
        supervisorId int,
        owner_id int,
        street_num varchar(10),
        street_name varchar (30),
        city varchar (30),
        zip varchar(10),
        num_rooms int,
        monthly_rent number(10, 2),
        status varchar (20) check (status in ('available', 'leased')),
        start_date date,
        Foreign Key(owner_id) References Property_Owner(owner_id),
        Foreign Key(supervisorId) References Supervisor(supervisorId)
);

Create Table Lease_Agreement(
        leaseId int Primary Key,
        property_number int,
        first_name varchar(30),
        last_name varchar(30),
        home_phone varchar(10),
        work_phone varchar(10),
        friend_f_name varchar(30),
        friend_l_name varchar(30),
        friend_phone varchar (10),
        start_date date,
        end_date date,
        deposit_amount number(10,2),
        rent_amount number(10,2),
        Foreign Key (property_number) References Rental_Property(property_number),
	Check (Months_Between(end_date, start_date) >= 6 AND Months_Between(end_date, start_date) <= 12)
);

-- Auto Increment for leaseId Primary Key
Create Sequence lease_sequence
Start With 1
Increment By 1
minvalue 1
maxvalue 100000;
