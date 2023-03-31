CREATE TABLE hotel_chain (
	chain_id INT NOT NULL,
    number_of_hotels INT,
    email VARCHAR(50),
    phone DECIMAL(10,0),
    address VARCHAR(50),
    chain_name VARCHAR(50),
    PRIMARY KEY (chain_id)
    );
    
    CREATE TABLE hotel (
	hotel_id INT NOT NULL,
    chain_id INT NOT NULL,
    number_of_rooms INT,
    email VARCHAR(50),
    phone DECIMAL(10,0),
    category VARCHAR(50),
    address VARCHAR(50),
    PRIMARY KEY (hotel_id),
	FOREIGN KEY(chain_id) REFERENCES hotel_chain(chain_id)
);


CREATE TABLE rooms (
	room_id INT NOT NULL,
    hotel_id INT,
    price DECIMAL(10,2),
    capacity VARCHAR(50),
    room_view VARCHAR(50),
    extendability VARCHAR(20),
    room_condition VARCHAR(50),
    PRIMARY KEY (room_id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id)    
);


select * from rooms where room_id = '3';

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES   
(100,8,'firstchain@gmail.com',6472237721,'15 Mcarthur Avenue, Ottawa','firstchain');
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (110,100,8,'110firstchain@gmail.ca',8264913493,'4-star','143 Rondo Street, Toronto')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(111,110,1100,'Single','Sea view','NO','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(112,110,2800,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(113,110,1900,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(114,110,2100,'Double','Mountain view','YES','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(115,110,2500,'Double','Sea view','YES','Good condition');
        
		
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (120,100,8,'120firstchain@gmail.ca',5467285844,'5-star','14 Somerset Street, Vancouver' )
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(121,120,2100,'Single','Sea view','YES','Good condition');
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(122,120,2000,'Single','Mountain view','NO','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(123,120,2800,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(124,120,3000,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(125,120,2400,'Single','Sea view','N0','Bad condition');
    
     INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (130,100,5,'130firstchain@gmail.ca',3786398933,'5-star','98 Carrol Avenue, Toronto')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(131,130,2500,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(132,130,2955,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(133,130,2225,'Single','Sea view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(134,130,3500,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(135,130,3000,'Double','Sea view','N0','Good condition');
        
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (140,100,5,'140firstchain@gmail.ca',9596287276,'4-star','177 Johnson Street, London')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(141,140,2000,'Single','Mountain view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(142,140,2570,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(143,140,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(144,140,2990,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(145,140,2000,'Single','Sea view','N0','Bad condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (150,100,5,'150firstchain@gmail.ca',3467718341,'3-star','190 Marcel Road, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(151,150,1600,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(152,150,1200,'Single','Sea view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(153,150,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(154,150,2000,'Double','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(155,150,1900,'Single','Mountain view','N0','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (160,100,5,'160firstchain@gmail.ca',1282233414,'4-star','10 Rashford Road, Vancouver')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(161,160,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(162,160,1900,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(163,160,2000,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(164,160,2660,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(165,160,1800,'Single','Mountain view','N0','Bad condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (170,100,5,'170firstchain@gmail.ca',5924644724,'5-star','23 Jordan Avenue, Chicago')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(171,170,2900,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(172,170,2500,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(173,170,1900,'Single','Sea view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(174,170,3200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(175,170,2900,'Double','Sea view','N0','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (180,100,5,'180firstchain@gmail.ca',8183122365,'3-star','07 Bensen Street, Toronto')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(181,180,1100,'Single','Sea view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(182,180,1800,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(183,180,1900,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(184,180,2100,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(185,180,1200,'Single','Sea view','N0','Good condition');
    

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(200,8,'secondchain@gmail.com',4977835765,'2 Unity Street, Toronto','Secondchain');
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (210,200,5,'210secondchain@gmail.ca',9348328223,'4-star','001 Husse Street, London')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(211,210,1900,'Single','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(212,210,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(213,210,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(214,210,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(215,210,1900,'Single','Sea view','YES','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (220,200,5,'220secondchain@gmail.ca',7837596813,'5-star','12 Tatum Avenue, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(221,220,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(222,220,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(223,220,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(224,220,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(225,220,3900,'Double','Sea view','YES','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (230,200,5,'230secondchain@gmail.ca',4336774666,'4-star','16 Browns Road, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(231,230,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(232,230,1900,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(233,230,2000,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(234,230,2660,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(235,230,1800,'Single','Mountain view','N0','Bad condition');
		
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (240,200,5,'240secondchain@gmail.ca',4445838489,'5-star','519 David Road, Vancouver')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(241,240,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(242,240,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(243,240,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(244,240,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(245,240,3900,'Double','Sea view','YES','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (250,200,5,'250secondchain@gmail.ca',7789783778,'3-star','107 Richards Street, Toronto')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(251,250,1100,'Single','Sea view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(252,250,1800,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(253,250,1900,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(254,250,2100,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(255,250,1200,'Single','Sea view','N0','Good condition');
		
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (260,200,5,'260secondchain@gmail.ca',9186964989,'5-star','126 Evlon Street, London')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(261,260,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(262,260,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(263,260,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(264,260,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(265,260,3900,'Double','Sea view','YES','Good condition');
		
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (270,200,5,'270secondchain@gmail.ca',7939783679,'5-star','077 Broadway Road, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(271,270,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(272,270,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(273,270,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(274,270,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(275,270,3900,'Double','Sea view','YES','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (280,200,5,'280secondchain@gmail.ca',7682568728,'5-star','555 Raide Street, Vancouver')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(281,280,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(282,280,2200,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(283,280,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(284,280,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(285,280,3900,'Double','Sea view','YES','Good condition');
    

INSERT INTO hotel_chain(chain_id,number_of_hotels,email,phone, address,chain_name) VALUES
(300,8,'thirdchain@gmail.com',9137663741,'72 Johnathan Road, London','Thirdchain');
	INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (310,300,5,'310thirdchain@gmail.ca',6158327736,'5-star','277 Montgomery Street, Vancouver')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(311,310,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(312,310,2200,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(313,310,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(314,310,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(315,310,3900,'Double','Sea view','YES','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (320,300,5,'320thirdchain@gmail.ca',6997222651,'5-star','091 Colony Street, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(321,320,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(322,320,2200,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(323,320,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(324,320,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(325,320,3900,'Double','Sea view','YES','Good condition');
    
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (330,300,5,'330thirdchain@gmail.ca',7648257996,'4-star','89 Timbers Avenue, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(331,330,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(332,330,1900,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(333,330,2000,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(334,330,2660,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(335,330,1800,'Single','Mountain view','N0','Bad condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (340,300,5,'340thirdchain@gmail.ca',7938517415,'5-star','562 Vini Road, Toronto')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(341,340,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(342,340,2200,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(343,340,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(344,340,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(345,340,3900,'Double','Sea view','YES','Good condition');
    
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (350,300,5,'350thirdchain@gmail.ca',7747119699,'3-star','67 Vitality Road, London')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(351,350,1100,'Single','Sea view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(352,350,1800,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(353,350,1900,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(354,350,2100,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(355,350,1200,'Single','Sea view','N0','Good condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (360,300,5,'360thirdchain@gmail.ca',3662165828,'4-star','233 Stamford Street, Hamilton')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(361,360,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(362,360,1900,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(363,360,2000,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(364,360,2660,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(365,360,1800,'Single','Mountain view','N0','Bad condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (370,300,5,'370thirdchain@gmail.ca',3351644472,'4-star','674 Harden Lane, Ottawa')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(371,370,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(372,370,1900,'Single','Sea view','N0','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(373,370,2000,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(374,370,2660,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(375,370,1800,'Single','Mountain view','N0','Bad condition');
    
    INSERT INTO hotel(hotel_id,chain_id,number_of_rooms,email,phone,category,address) VALUES
    (380,300,5,'380thirdchain@gmail.ca',1736527252,'5-star','52 Embid Avenue, Toronto')
		INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(381,380,2900,'Double','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(382,380,2200,'Single','Mountain view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(383,380,2400,'Single','Sea view','YES','Good condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(384,380,2800,'Double','Mountain view','N0','Bad condition');
        INSERT INTO rooms(room_id,hotel_id,price,capacity,room_view,extendability,room_condition) VALUES
		(385,380,3900,'Double','Sea view','YES','Good condition');






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












