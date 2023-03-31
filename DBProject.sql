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
    hotel_id INT,
    price DECIMAL(10,2),
    capacity VARCHAR(20),
    room_view VARCHAR(20),
    extendability BOOL,
    room_condition VARCHAR(20),
    PRIMARY KEY (room_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)    
);

select * from rooms where hotel_id = '011';

select * from hotel;

select * from hotel where chain_id = '4';

INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
(304,010,1000,'single','sea view',False,'good condition');

INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
(309,011,1500,'double','mountain view',false,'bad condition');









