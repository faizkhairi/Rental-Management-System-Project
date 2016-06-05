--Manager
INSERT INTO MANAGER VALUES (1, 'Joey', 'Tribbiani', '4081234567', Date '2001-01-01');
INSERT INTO MANAGER VALUES (2, 'Chandler', 'Bing', '4081234568', Date '2002-01-01');
INSERT INTO MANAGER VALUES (3, 'Ross', 'Geller', '4081234569', Date '2003-01-01');


--Branches
INSERT INTO BRANCH VALUES (123, 1, 'Brunch', '4080000000', '101', 'CentralPerk', 'NewYork', '12345');
INSERT INTO BRANCH VALUES (456, 2, 'Treebranch', '4080000001', '101', 'TreeHouseStreet', 'Oakland', '94621');
INSERT INTO BRANCH VALUES (789, 3, 'Lunch', '4080000002', '101', 'SuperStreet', 'Detroit', '09876');

--Staff
INSERT INTO staff VALUES (11, 123, 'David', 'Beckham', '4081231231', Date '2006-01-01');
INSERT INTO staff VALUES (22, 456, 'Lionel', 'Messi', '4081231232', Date '2008-01-01');
INSERT INTO staff VALUES (33, 789, 'Cristiano', 'Ronaldo', '4081231233', Date '2007-01-01');


--Supervisors
INSERT INTO SUPERVISOR VALUES (999, 1, 'Barney', 'Stinson', '4081111111', Date '2010-01-01');
INSERT INTO SUPERVISOR VALUES (998, 2, 'Ted', 'Mosby', '4082222222', Date '2010-01-01');
INSERT INTO SUPERVISOR VALUES (997, 3, 'Robin', 'Scherbatsky', '4083333333', Date '2010-01-01');


--Property Owners
INSERT INTO Property_Owner VALUES (111, 'Spongebob', 'Squarepants', '1001', 'PineappleStreet', 'SanJose', '95129', '4089999999', 400);
INSERT INTO Property_Owner VALUES (222, 'Patrick', 'Star', '1001', 'RockStreet', 'SanFrancisco', '99999', '4088888888', 400);
INSERT INTO Property_Owner VALUES (333, 'Sandy', 'Cheeks', '1001', 'TreeStreet', 'Dallas', '88888', '4087777777', 400);


--Rental Properties
INSERT INTO RENTAL_PROPERTY VALUES (1000, 999, 111, '123', 'MainStreet', 'Beijing', '11111', 5, 10000, 'available', Date '2010-01-01');
INSERT INTO RENTAL_PROPERTY VALUES (2000, 999, 222, '123', 'FirstStreet', 'SanFrancisco', '11111', 5, 20000.89, 'available', Date '2008-08-08');
INSERT INTO Rental_Property VALUES (3000, 999, 111, '123', 'FourthStreet', 'SanJose', '12345', 7, 12354.34, 'available', Date '2008-05-08');
INSERT INTO RENTAL_PROPERTY VALUES (4000, 998, 111, '124', 'SecondStreet', 'Beijing', '11111', 6, 15034.12, 'available', Date '2010-01-02');
INSERT INTO RENTAL_PROPERTY VALUES (5000, 998, 222, '128', 'ThirdStreet', 'SanFrancisco', '11141', 6, 15045.78, 'available', Date '2010-01-20');
INSERT INTO RENTAL_PROPERTY VALUES (6000, 997, 333, '130', 'OracleArena', 'Oakland', '99999', 1000, 100000, 'available', Date '2015-06-01');

INSERT INTO RENTAL_PROPERTY VALUES (7000, 997, 111, '130', 'OracleArena', 'Oakland', '99999', 1000, 100000, 'available', Date '2015-06-01');


PROMPT constraint a: A supervisor cannot supervise more than three rental properties at a time.
INSERT INTO Rental_Property VALUES (900, 999, 111, '123', 'FifthStreet', 'SanJose', 12345, 7, 12354.34, 'available', Date '2010-03-15');

--INSERT INTO BRANCH VALUES (124, 1, 'Lunch', '4080000001', '101', 'AmazonStreet', 'Seattle', '66666');*/
