CREATE TABLE hotel_chain (
	chain_id INT NOT NULL,
    number_of_hotels INT,
    email VARCHAR(20),
    phone DECIMAL(9,0),
    address VARCHAR(20),
    chain_name VARCHAR(20),
    PRIMARY KEY (chain_id)
    );

select * from hotel_chain;

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(001,12,'firstchain@gmail.com',647223772,'16th street','firstchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(002,8,'secondch@gmail.com',655223734,'2nd unity street','secondchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(003,8,'thirdchain@gmail.com',709113740,'18 ottawa street','Thirdchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(004,8,'fourthch@gmail.com',644567988,'88 melbourn avenue','fourthchain');

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(005,8,'fifthchain@gmail.com',567983004,'110 toronto street','fifthchain');

CREATE TABLE hotel (
	hotel_id INT NOT NULL,
    chain_id INT NOT NULL,
    number_of_rooms INT,
    email VARCHAR(20),
    phone DECIMAL(9,0),
    category DECIMAL(1,0),
    address VARCHAR(40),
    PRIMARY KEY (hotel_id),
	FOREIGN KEY(chain_id) REFERENCES hotel_chain(chain_id)
);

select * from hotel;

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(010,001,5,'1st010chain@gmail.ca',647454748,4,'77th tenji street ottawa area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(020,001,5,'2nd020chain@gmail.ca',687900453,5,'81st mcarthur street toronto area');


INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(030,001,5,'3rd030chain@gmail.ca',648531211,4,'8th monty ave toronto area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(040,001,5,'4th040chain@gmail.ca',474883929,4,'12th richards street bayshore area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(050,001,5,'5th050chain@gmail.ca',609766546,4,'15 romo street BC area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(060,001,5,'6st060chain@gmail.ca',299182627,5,'98 carrol ave Bay area');

INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
(010,001,5,'1st010chain@gmail.ca',647454748,4,'77th tenji street ottawa area');


CREATE TABLE manager (
	manager_id INT NOT NULL,
    hotel_id INT,
    manager_name VARCHAR(20),
    address VARCHAR(40),
    SSN INT,
    PRIMARY KEY (manager_id),
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE employee (
	employee_id INT NOT NULL,
    employee_name VARCHAR(20),
    address VARCHAR(40),
    SSN INT,
    PRIMARY KEY (employee_id)
);


CREATE TABLE works_at (
	employee_id INT NOT NULL,
    hotel_id INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE customer (
	customer_id INT NOT NULL,
    customer_name VARCHAR(20),
    hotel_id INT,
    address VARCHAR(40),
    SSN INT,
    date_of_registration DATE,
    PRIMARY KEY (customer_id),
    FOREIGN KEY(hotel_id) REFERENCES hotel(hotel_id)
);

CREATE TABLE booking (
	booking_id INT NOT NULL,
    room_id INT,
    employee_id INT,
    customer_id INT,
    date_of_booking DATE,
    length_of_stay INT,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE rooms (
	room_id INT NOT NULL,
    price DECIMAL(10,2),
    capacity INT,
    room_view VARCHAR(20),
    extendability BOOL,
    room_condition VARCHAR(5),
    hotel_id INT,
    PRIMARY KEY (rooms_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)    
);
