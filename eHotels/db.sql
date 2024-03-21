DROP TABLE IF EXISTS hotel_chain;
CREATE TABLE hotel_chain
    (
        id                        serial       PRIMARY KEY,
		name					  varchar(45)  NOT NULL,
        address_of_central_office varchar(200) NOT NULL,
        number_of_hotels          int          NOT NULL
    );
	
insert into hotel_chain values 
(1, 'Morissette, Gibson and Jacobi', '03 Mifflin Avenue', 4),
(2, 'Kris-Volkman', '71 Parkside Court', 10),
(3, 'Barton and Sons', '01383 Anniversary Parkway', 4),
(4, 'Schimmel-Langworth', '43591 Mayer Hill', 1),
(5, 'Daniel, Stanton and O''Connell', '1601 Anderson Park', 8);

DROP TABLE IF EXISTS inst_hotel_chain_phone_number;
CREATE TABLE inst_hotel_chain_phone_number
    (
        hotel_chain_id int NOT NULL,
        phone_number   varchar(15),
        FOREIGN KEY (hotel_chain_ID) REFERENCES hotel_chain (id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (hotel_chain_id, phone_number)
    );

insert into inst_hotel_chain_phone_number values 
	(1, '337-896-3381'),
	(2, '638-590-1452'),
	(3, '516-435-8698'),
	(4, '842-935-1225'),
	(5, '699-499-7459'),
	(3, '739-287-7654'),
	(4, '111-899-0888'),
	(5, '599-879-8514'),
	(1, '611-374-9681'),
	(2, '849-356-9015');

DROP TABLE IF EXISTS inst_hotel_chain_contact_email;
CREATE TABLE inst_hotel_chain_contact_email
    (
        hotel_chain_id int          NOT NULL,
        contact_email  varchar(100) NOT NULL CHECK (contact_email LIKE '_%@_%._%'),
        FOREIGN KEY (hotel_chain_ID) REFERENCES hotel_chain (id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (hotel_chain_id, contact_email)
    );

insert into inst_hotel_chain_contact_email values
	(2, 'bestwestern@example.com'),
	(4, 'radisson@example.com'),
	(3, 'marriott@example.com'),
	(1, 'hyatt@example.com'),
	(5, 'hilton@example.com'),
	(5, 'radisson@example.com'),
	(4, 'ihg@example.com'),
	(4, 'sheraton@example.com'),
	(2, 'hilton@example.com'),
	(5, 'sheraton@example.com');

DROP TABLE IF EXISTS hotel;
CREATE TABLE hotel
    (
        id              serial, -- serial since the number of hotels can change (build new ones or demolish old ones)
        hotel_chain_id  int          NOT NULL,
		name		    varchar(45)  NOT NULL,
        category        int  		 NOT NULL,
        number_of_rooms int          NOT NULL,
        address         varchar(200) NOT NULL,
        contact_email   varchar(100) NOT NULL CHECK (contact_email LIKE '_%@_%._%'),
        FOREIGN KEY (hotel_chain_ID) REFERENCES hotel_chain (id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (id, hotel_chain_id)
    );


insert into hotel values 
	(1, 5, 'Riverfront Retreat', 2, 80, '7585 Debs Place', 'fairmont@example.com'),
	(2, 4, 'Riverfront Retreat', 1, 98, '9 Barnett Drive', 'sheraton@example.com'),
	(3, 5, 'Sunset Inn', 1, 114, '55396 Division Court', 'bestwestern@example.com'),
	(4, 4, 'Meadowbrook Hotel', 2, 1, '71212 Old Shore Circle', 'westin@example.com'),
	(5, 3, 'Whispering Pines Inn', 5, 2, '2 Elka Place', 'ritzcarlton@example.com'),
	(6, 3, 'Harbor Lights Resort', 5, 180, '87 Vera Hill', 'ramada@example.com'),
	(7, 5, 'Crystal Cove Hotel', 4, 186, '8 Truax Circle', 'ritzcarlton@example.com'),
	(8, 5, 'Riverfront Retreat', 1, 96, '8 7th Center', 'doubletree@example.com'),
	(9, 2, 'Sunset Inn', 3, 119, '94280 Everett Lane', 'hyatt@example.com'),
	(10, 1, 'Crystal Cove Hotel', 5, 2, '3 Rowland Road', 'omni@example.com'),
	(11, 5, 'Meadowbrook Hotel', 1, 40, '392 Towne Park', 'sheraton@example.com'),
	(12, 4, 'Harbor Lights Resort', 3, 137, '705 Sunbrook Court', 'ritzcarlton@example.com'),
	(13, 2, 'Riverfront Retreat', 5, 70, '32 Coolidge Alley', 'omni@example.com'),
	(14, 2, 'Mountain Lodge', 4, 93, '3 Algoma Junction', 'holidayinn@example.com'),
	(15, 5, 'Silver Lake Lodge', 4, 115, '74039 Main Avenue', 'bestwestern@example.com');

DROP TABLE IF EXISTS inst_phone_number;
CREATE TABLE inst_phone_number
    (
        hotel_chain_id int NOT NULL,
        hotel_id       int NOT NULL,
        phone_number   varchar(15),
        FOREIGN KEY (hotel_chain_id, hotel_id) REFERENCES hotel (hotel_chain_id, id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (hotel_chain_id, hotel_id, phone_number)
    );

insert into inst_phone_number values 
	(4, 2, '284-639-3157'),
	(2, 14, '173-149-5906'),
	(3, 5, '578-918-5812'),
	(2, 9, '319-767-9367'),
	(5, 15, '561-299-5418'),
	(2, 13, '635-405-2612'),
	(4, 4, '279-703-2925'),
	(5, 8, '253-108-1624'),
	(2, 9, '512-964-1496'),
	(5, 15, '800-799-2051');

-- SELECt * from inst_phone_number;

DROP TABLE IF EXISTS room;
CREATE TABLE room
    (
        room_number     int         NOT NULL, -- Number of rooms is fixed
        hotel_chain_id  int         NOT NULL,
        hotel_id        int         NOT NULL,
        price           int         NOT NULL,
        capacity        varchar(45) NOT NULL,
        room_view       varchar(20) NOT NULL,
        can_be_extended boolean     NOT NULL, -- 1 (True) or 0 (False)
        has_problems    boolean     NOT NULL, -- 1 (True) or 0 (False)
        FOREIGN KEY (hotel_chain_id, hotel_id) REFERENCES hotel (hotel_chain_id, id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (hotel_chain_id, hotel_id, room_number)
    );
	
insert into room values 
(1, 5, 1, 791, 'Single', 'Mountain view', true, false),
(2, 4, 2, 291, 'King', 'Poolside', false, true),
(3, 3, 5, 600, 'Studio', 'City skyline', false, true),
(4, 4, 4, 548, 'Suite', 'City skyline', false, false),
(5, 3, 5, 782, 'Queen', 'Garden view', false, false),
(6, 3, 6, 894, 'Single', 'City skyline', false, true),
(7, 5, 7, 986, 'Queen', 'Poolside', true, true),
(8, 5, 8, 840, 'Studio', 'Garden view', false, true),
(9, 2, 9, 890, 'Suite', 'Garden view', true, true),
(10, 1, 10, 515, 'Suite', 'Mountain view', true, false),
(11, 5, 11, 716, 'Suite', 'City skyline', false, true),
(12, 4, 2, 663, 'Suite', 'Garden view', true, false),
(13, 2, 13, 230, 'Double', 'Poolside', false, true),
(14, 2, 14, 433, 'Single', 'Mountain view', false, true),
(15, 2, 14, 959, 'Queen', 'Poolside', false, false),
(16, 4, 2, 788, 'Studio', 'Mountain view', true, false),
(17, 1, 10, 88, 'King', 'Ocean view', false, true),
(18, 2, 9, 608, 'Queen', 'City skyline', false, false),
(19, 2, 9, 104, 'King', 'Mountain view', true, false),
(20, 5, 8, 84, 'King', 'Mountain view', false, false);

DROP TABLE IF EXISTS inst_amenities;
CREATE TABLE inst_amenities
    (
        hotel_chain_id int         NOT NULL,
        hotel_id       int         NOT NULL,
        room_number    int         NOT NULL,
        amenity        varchar(20) NOT NULL,
        FOREIGN KEY (hotel_chain_id, hotel_id, room_number) REFERENCES room (hotel_chain_id, hotel_id, room_number) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (room_number, hotel_chain_id, hotel_id, amenity)
    );


insert into inst_amenities values 
(5, 1, 1, 'Flat-screen TV'),
(4, 2, 2, 'Balcony'),
(3, 5, 3, 'Jacuzzi tub'),
(4, 2, 2, 'Mini fridge'),
(4, 4, 4, 'Flat-screen TV'),
(3, 5, 5, 'Flat-screen TV'),
(3, 6, 6, 'Flat-screen TV'),
(5, 7, 7, 'Balcony'),
(5, 7, 7,'Coffee maker'),
(5, 8, 8, 'Mini fridge'),
(2, 9, 9, 'Jacuzzi tub'),
(1, 10, 10, 'Jacuzzi tub'),
(5, 11, 11, 'Flat-screen TV'),
(4, 2, 2, 'Jacuzzi tub'),
(2, 13, 13, 'Flat-screen TV');

DROP TABLE IF EXISTS customer;
CREATE TABLE customer
    (
        SIN                  int          PRIMARY KEY,
        first_name           varchar(45)  NOT NULL,
        last_name            varchar(45)  NOT NULL,
        address              varchar(200) NOT NULL,
        date_of_registration DATE         NOT NULL -- YYYY-MM-DD
    );

insert into customer values 
(17, 'Ganny', 'Avramovich', '3580 Oak Road', '2023-08-14'),
(89, 'Aluino', 'Reilingen', '4568 Scott Pass', '2023-08-20'),
(96, 'Wit', 'Pomphrey', '1456 Old Shore Point', '2023-05-03'),
(69, 'Delly', 'de Banke', '92103 Reindahl Drive', '2023-07-26'),
(66, 'Kiah', 'Corns', '228 Fremont Pass', '2023-03-29'),
(15, 'Conny', 'Prandi', '30 Eastlawn Crossing', '2023-09-23'),
(29, 'Ulberto', 'Tebbs', '651 Pearson Street', '2023-11-16'),
(59, 'Leoine', 'Trembley', '86 Oneill Trail', '2023-11-02'),
(88, 'Vladamir', 'Misk', '9927 Messerschmidt Crossing', '2023-12-29'),
(97, 'Gertrudis', 'Penhall', '243 Brown Crossing', '2023-10-03');

DROP TABLE IF EXISTS employee;
CREATE TABLE employee
    (
        SIN        int          PRIMARY KEY,
        first_name varchar(45)  NOT NULL,
        last_name  varchar(45)  NOT NULL,
        address    varchar(200) NOT NULL,
        role       varchar(45)  NOT NULL
    );

insert into employee values 
(31, 'Emlyn', 'Bushby', '4005 Rigney Trail', 'Business Development'),
(40, 'Colly', 'Slaughter', '913 Shopko Circle', 'Accounting'),
(46, 'Dun', 'Gyde', '2 5th Circle', 'Research and Development'),
(90, 'Heda', 'Wagner', '28628 Washington Plaza', 'Training'),
(53, 'Araldo', 'Moscon', '56102 Crowley Hill', 'Engineering'),
(91, 'Nataniel', 'Urion', '165 Huxley Way', 'Services'),
(10, 'Linc', 'Badam', '290 Garrison Center', 'Legal'),
(65, 'Carrissa', 'Peaseman', '84 Chive Drive', 'Marketing'),
(66, 'Michale', 'Stoyell', '1 Rigney Trail', 'Training'),
(97, 'Clem', 'Kitcat', '2 Lillian Drive', 'Research and Development');

DROP TABLE IF EXISTS supervises;
CREATE TABLE supervises
    (
        manager_id  int NOT NULL,
        employee_id int NOT NULL,
        FOREIGN KEY (manager_id) REFERENCES employee (SIN) ON DELETE CASCADE ON UPDATE CASCADE,
        FOREIGN KEY (employee_id) REFERENCES employee (SIN) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (manager_id, employee_id)
    );
	
insert into supervises values 
	(31, 40),
	(46, 90),
	(46, 53),
	(91, 65),
	(91, 10),
	(91, 66),
	(91, 97);

DROP TABLE IF EXISTS manages;
CREATE TABLE manages
    (
        manager_id     int NOT NULL,
        hotel_id       int NOT NULL,
		hotel_chain_id int NOT NULL,
        FOREIGN KEY (manager_id) REFERENCES employee (SIN) ON DELETE CASCADE ON UPDATE CASCADE,
        FOREIGN KEY (hotel_chain_id, hotel_id) REFERENCES hotel (hotel_chain_id, id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (manager_id, hotel_chain_id, hotel_id)
    );
	
insert into manages values 
	(31, 1, 5),
	(46, 2, 4),
	(91, 3, 5),
	(31, 4, 4),
	(31, 5, 3),
	(91, 6, 3),
	(46, 7, 5),
	(46, 8, 5),
	(46, 9, 2),
	(91, 10, 1),
	(91, 11, 5),
	(91, 12, 4),
	(91, 13, 2),
	(91, 14, 2),
	(91, 15, 5);
	
DROP TABLE IF EXISTS works_for;
CREATE TABLE works_for
    (
        employee_id    int NOT NULL,
        hotel_id       int NOT NULL,
        hotel_chain_id int NOT NULL,
        FOREIGN KEY (employee_id) REFERENCES employee (SIN) ON DELETE CASCADE ON UPDATE CASCADE,
        FOREIGN KEY (hotel_chain_id, hotel_id) REFERENCES hotel (hotel_chain_id, id) ON DELETE CASCADE ON UPDATE CASCADE,
        PRIMARY KEY (employee_id, hotel_chain_id, hotel_id)
    );

INSERT INTO works_for values
	(31, 1, 5), 
	(40, 2, 4), 
	(46, 3, 5), 
	(90, 4, 4),
	(53, 5, 3),
	(91, 6, 3),
	(10, 7, 5),
	(65, 8, 5), 
	(66, 9, 2), 
	(97, 10, 1),
	(31, 11, 5), 
	(40, 12, 4),
	(46, 13, 2), 
	(90, 14, 2), 
	(53, 15, 5);
	 
-- No cascading when deleting or updating (since we need to store archives of bookings)
DROP TABLE IF EXISTS booking;
CREATE TABLE booking
    (
		room_number    int  NOT NULL,
        hotel_chain_id int  NOT NULL,
        hotel_id       int  NOT NULL,
        customer_id    int  NOT NULL,
        date           DATE NOT NULL, -- YYYY-MM-DD
        FOREIGN KEY (customer_id) REFERENCES customer (SIN),
        FOREIGN KEY (hotel_chain_id, hotel_id, room_number) REFERENCES room (hotel_chain_id, hotel_id, room_number),
        PRIMARY KEY (hotel_chain_id, hotel_id, room_number, customer_id)
    );

insert into booking values 
	(1, 5, 1, 17, '2023-10-10'),
	(2, 4, 2, 89, '2023-10-11'),
	(3, 3, 5, 96, '2023-10-12');

-- No cascading when deleting or updating (since we need to store archives of rentals)
DROP TABLE IF EXISTS renting;
CREATE TABLE renting
    (
		room_number    int  NOT NULL,
        hotel_chain_id int  NOT NULL,
        hotel_id       int  NOT NULL,
        customer_id    int  NOT NULL,
        employee_id    int  NOT NULL,
        date           DATE NOT NULL, -- YYYY-MM-DD
        FOREIGN KEY (customer_id) REFERENCES customer (SIN),
        FOREIGN KEY (employee_id) REFERENCES employee (SIN),
        FOREIGN KEY (hotel_chain_id, hotel_id, room_number) REFERENCES room (hotel_chain_id, hotel_id, room_number),
        PRIMARY KEY (hotel_chain_id, hotel_id, room_number, customer_id, employee_id)
    );

insert into renting values 
	(1, 5, 1, 17, 31, '2023-11-12');

-- DROP SCHEMA public Cascade;  -- To delete all tables
-- create schema public;