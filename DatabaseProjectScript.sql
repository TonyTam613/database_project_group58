CREATE TABLE hotel_chain (
	chain_id INT NOT NULL,
    number_of_hotels INT,
    email VARCHAR(20),
    phone DECIMAL(9,0),
    address VARCHAR(20),
    chain_name VARCHAR(20)
);

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone,address,chain_name) VALUES
(001,12,'firstchain@gmail.com',647223772,'16 spark street','firstchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone,address,chain_name) VALUES
(002,8,'secondch@gmail.com',655223734,'2nd unity street','secondchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone,address,chain_name) VALUES
(003,8,'thirdchain@gmail.com',709113740,'18 kent street','Thirdchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone,address,chain_name) VALUES
(004,8,'fourthch@gmail.com',644567988,'88 melbourn avenue','fourthchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone,address,chain_name) VALUES
(005,8,'fifthchain@gmail.com',567983004,'110 yonge street','fifthchain');

CREATE TABLE hotel (
	hotel_id INT,
    number_of_rooms INT,
    email VARCHAR(20),
    phone DECIMAL(9,0),
    category DECIMAL(1,0),
	chain_id INT,
    address VARCHAR(40),
    FOREIGN KEY(chain_id) REFERENCES hotel_chain(chain_id)
);


INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(010,004,5,'c2h1@gmail.ca',647454748,4,'9 percy street Ottawa area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(020,004,5,'c2h2gmail.ca',687900453,5,'2 yonge street Toronto area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(030,004,5,'c2h3@gmail.ca',648531211,4,'5 viewmont ave Toronto area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(040,004,5,'c2h4@gmail.ca',474883929,4,'16 bank street Bayshore area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(050,004,5,'c2h5@gmail.ca',609766546,4,'15 poplar street BC area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(060,004,5,'c2h6@gmail.ca',299182627,5,'36 bank ave Bay area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(070,004,5,'c2h7@gmail.ca',647454748,4,'22 lyon street Ottawa area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(080,004,5,'c2h8@gmail.ca',6133333333,4,'55 glebe street BC area');

CREATE TABLE room (
	room_id INT,
    price DECIMAL(10,2),
    capacity INT,
    room_view VARCHAR(20),
    extendability BOOL,
    room_condition VARCHAR(5),
    hotel_id INT,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)    
);

INSERT INTO room (room_id,price,capacity,room_view,extendability,room_condition,hotel_id) VALUES 
(011,12.22,2,'mountain view',false,'bad condition',040);

CREATE TABLE manager (
	manager_id INT,
    hotel_id INT,
    manager_name VARCHAR(20),
    address VARCHAR(40),
    SSN INT,
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE employee (
	employee_id INT,
    employee_name VARCHAR(20),
    address VARCHAR(40),
    SSN INT
);

CREATE TABLE works_at (
	employee_id INT,
    hotel_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE customer (
	customer_id INT,
    customer_name VARCHAR(20),
    address VARCHAR(40),
    SSN INT,
    date_of_registration DATE,
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE booking (
	booking_id INT,
    room_id INT,
    employee_id INT,
    customer_id INT,
    date_of_booking DATE,
    length_of_stay INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE amenities (
	service VARCHAR(20),
    room_id INT,
    hotel_id INT,
    FOREIGN KEY (room_id) REFERENCES room(room_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

SELECT * FROM hotels;