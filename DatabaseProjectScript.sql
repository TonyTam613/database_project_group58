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

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES   
(400,8,'4chain@gmail.com',6472237721,'20 Bank Street, Ottawa','fourthChain');

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(410,400,8,'c4h1@gmail.ca',6235556666,'5-star','50 Yonge Street, Toronto');
		
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(411,410,12.10,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(412,410,20.00,'Double','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(413,410,22.00,'Single','Mountain view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(414,410,57.89,'Single','Sea view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(415,410,200,'Double','Sea view','NO','Bad condition');
        		

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(420,400,8,'c4h2@gmail.ca',5467285844,'2-star','14 Bay Street, Montreal' );

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(421,420,2123,'Double','Mountain view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(422,420,55.99,'Single','Sea view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(423,420,12.43,'Single','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(424,420,23.55,'Single','Mountain view','NO','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(425,420,43,'Double','Sea view','N0','Good condition');
    

		INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
		(430,400,5,'c4h3@gmail.ca',1236549876,'5-star','22 Percy Avenue, Ottawa');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(431,430,54,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(432,430,65,'Single','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(433,430,76,'Single','Sea view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(434,430,87,'Double','Mountain view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(435,430,34,'Double','Sea view','YES','Good condition');
        
		
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(440,400,5,'c4h4@gmail.ca',2223335555,'3-star','444 Viewmont Street, London');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(441,440,54,'Single','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(442,440,23,'Single','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(443,440,65,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(444,440,76,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(445,440,87,'Single','Sea view','N0','Good condition');
    
		
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(450,400,5,'c4h5@gmail.ca',3467718341,'3-star','662 Johnson Road, Kingston');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(451,450,98,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(452,450,98,'Double','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(453,450,93.32,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(454,450,43.32,'Double','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(455,450,34.32,'Double','Sea view','N0','Good condition');
    

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(460,400,5,'c4h6@gmail.ca',7778889999,'4-star','43 Bratford Road, York');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(461,460,34,'Single','Mountain view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(462,460,45,'Single','Sea view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(463,460,67,'Double','Mountain view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(464,460,87,'Double','Mountain view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(465,460,46,'Double','Mountain view','N0','Bad condition');
    

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(470,400,5,'c4h7@gmail.ca',4445556666,'5-star','23 Jordan Avenue, Chicago');
		
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(471,470,46,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(472,470,67,'Single','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(473,470,78,'Single','Sea view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(474,470,98,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(475,470,65,'Single','Sea view','N0','Good condition');
    

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(480,400,5,'c4h8@gmail.ca',222333444,'1-star','77 Queen Street, Toronto');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(481,480,57,'Single','Sea view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(482,480,58,'Double','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(483,480,38,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(484,480,59,'Double','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(485,480,59,'Single','Sea view','N0','Good condition');




INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES   
(500,8,'5chain@gmail.com',6472237721,'20 First Street, Ottawa','fourthChain');

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(510,500,8,'c5h1@gmail.ca',6235556666,'5-star','50 Second Street, Toronto');
		
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(511,510,12.10,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(512,510,20.00,'Double','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(513,510,22.00,'Single','Mountain view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(514,510,57.89,'Single','Sea view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(515,510,200,'Double','Sea view','NO','Bad condition');
        		

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(520,500,8,'c5h2@gmail.ca',5467285844,'2-star','14 Third Street, Montreal' );

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(521,520,2123,'Double','Mountain view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(522,520,55.99,'Single','Sea view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(523,520,12.43,'Single','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(524,520,23.55,'Single','Mountain view','NO','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(525,520,43,'Double','Sea view','N0','Good condition');
		

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(530,500,5,'c5h3@gmail.ca',1236549876,'5-star','22 Fourth Avenue, Ottawa');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(531,530,54,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(532,530,65,'Single','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(533,530,76,'Single','Sea view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(534,530,87,'Double','Mountain view','YES','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(535,530,34,'Double','Sea view','YES','Good condition');
			
		
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(540,500,5,'c5h4@gmail.ca',2223335555,'3-star','444 Fifth Street, London');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(541,540,54,'Single','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(542,540,23,'Single','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(543,540,65,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(544,540,76,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(545,540,87,'Single','Sea view','N0','Good condition');
		
		
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(550,500,5,'c5h5@gmail.ca',3467718341,'3-star','662 Sixth Road, Kingston');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(551,550,98,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(552,550,98,'Double','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(553,550,93.32,'Double','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(554,550,43.32,'Double','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(555,550,34.32,'Double','Sea view','N0','Good condition');
		

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(560,500,5,'c5h6@gmail.ca',1282233414,'4-star','43 Seventh Road, York');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(561,560,34,'Single','Mountain view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(562,560,45,'Single','Sea view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(563,560,67,'Double','Mountain view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(564,560,87,'Double','Mountain view','NO','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(565,560,46,'Double','Mountain view','N0','Bad condition');
		

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(570,500,5,'c5h7@gmail.ca',5924644724,'5-star','23 Eighth Avenue, Chicago');
			
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(571,570,46,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(572,570,67,'Single','Sea view','N0','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(573,570,78,'Single','Sea view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(574,570,98,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(575,570,65,'Single','Sea view','N0','Good condition');
		

	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
	(580,500,5,'c5h8@gmail.ca',8183122365,'1-star','77 Ninth Street, Toronto');

		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(581,580,57,'Single','Sea view','N0','Bad condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(582,580,58,'Double','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(583,580,38,'Single','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(584,580,59,'Double','Mountain view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(585,580,59,'Single','Sea view','N0','Good condition');




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