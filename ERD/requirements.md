# Entity Relationship Diagram (ERD) Creation 

# Objective
This project helps to visually represnts the database schema and relationship between entites 

# Description 
its includes : 
1. user 
2. property
3. booking 
4. message 
5. review 
6. payment 


# Entities and Attributes 
user :
user_id
Name 
address 
phone_number 

property : 
property_id 
Name
Location
Type
Price

booking :
booking_id 
booking_date 
end_date 
start_date 
Total_cost 
Useer_id 
property_id 

message : 
message_id 
sent_date 
user_id
property_id 
content 

review :
review_id 
rating 
comment 
user_id 
property_id 

payment :
payment_id 
payment_date 
amount 
booking_id 

# Relationship 

users to property *one to many* : 
a user can own multiple properties 

user to booking *one to many* : 
a user can take multiple bookings 

property to booking *one to many* :
a property can have many bookings 

booking to payment *one to one* :
each booking has one payment 

users to review *one to many* : 
 A user can write multiple reviews 

property to review *one to many* : 
a property can have multiple reviews 

users to message *one to many*: 
a user can send a multiple messages 

property to message *one to many* : 
a messsage is sent regarding a property 

# tools required 
a Draw.io(diagrams.net) or similar diagramming tools 

# file content 
containing README.MD its is a file that document the airbnb-database project and instruction 


