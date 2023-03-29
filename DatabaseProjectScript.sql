CREATE TABLE hotel_chain (
	chain_id INT NOT NULL,
    number_of_hotels INT,
    email VARCHAR(20),
    phone DECIMAL(9,0),
    address VARCHAR(20),
    chain_name VARCHAR(20)
);

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

CREATE TABLE rooms (
	room_id INT,
    price DECIMAL(10,2),
    capacity INT,
    room_view VARCHAR(20),
    extendability BOOL,
    room_condition VARCHAR(5),
    hotel_id INT,
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)    
);

SELECT * FROM hotels;