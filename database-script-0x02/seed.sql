-- value for users 
INSERT INTO users(firstname , last_name, email , password_hash, phonenumber)
VALUES('obi','ada','alice@gmail.com','hash',07081586501);

-- value for property
INSERT INTO property (Nam_E , descriptio_N, location, price_per_night)
VALUES
('Obi','blisnation','lagos',20.45);

-- value for booking
INSERT INTO Booking (start_date, end_date, property_id, user_id ,total_price)
VALUES('10-10-2003','20-10-2004',1,02,800.5);

-- value for payment
INSERT INTO payment ( booking_id ,amount)
VALUES(01,200.3);

-- value for review
INSERT INTO review(property_id, user_id, rating, comm_ent)
VALUES
(4.0,02, 2.0 ,'VeryGood');


