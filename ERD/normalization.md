 # Normalization to 3NF 
 # Objective 
 Aim to review the database schema that already provided 
 to identify redundancies 
 and adjust the design to achieve 3NF 

# The initial schema 
includes 
1. users : 
user_id 
first_name 
last_name 
phone_number
email_address 
password_number 

2. property :
property_id 
host_id
name 
descripion 
location 
created_at 

3. booking :
booking_id 
booking_date 
start_date 
end_date 
Total_cost 
user_id (foregin key)

4. message : 
message_id 
sender_id 
recipient_id 
message_body 
sent_at 

5. Review : 
review_id 
rating 
comment
user_id 
propery_id
creaed_at 

6. payment 
paymen_id 
payment_date
booking_id 
payment_method

# Step-by-step-Normalizaion 

# First Normal Form (1Nf)
Ensure: 
1. All columns have atomic values
2. No repeating group or arrays 
md :
in 1nf , all fields were made atomic. for exanple :
`property_name `
conaining multiple properies was split 
Each row now represents only *one* property per record 

# Second Normal Form (2NF)
Ensure : 
No partial dependency on part of a composite primary key 
md :
The `bookings` table have partial dependencies:
problem : 
`username` and `property_name` depended partially on `booking_id`
solution : 
split `users` and `properties` into separate tables and used * foregins key * in `booking` instead 

# Third Normal Form (3Nf)
ensure :
No transitive dependencies (i.e non-key fields should not depend on other non-key field)
md :  
in `payments`the `user_email` was removed :
problem :
`user_email` was derived from `user_id` violates 3NF
solution :
instead , 'Payments' stores only `user_id` , and we can retrieve email by joing with `users`

# Final Optimized Schema 
1. user : 
user_id 
Name 
Email 
phone 
address 

2. property 
property_id 
name 
location
type
price 

3. booking 
booking_id 
booking_date 
start_date 
end_date 
total_cost 
user_id 
property_id 

4. message 
message_id 
sent_date 
content
booking_id 

5. review 
review_id 
rating 
comment 
booking_id 

6. payment 
payment_id 
payment_date 
amount
booking_id 

# Conclusion 
The database design nows adhere to principle of 3NF , reducing redundancy and ensuring that all relationships
are well structured through foregin key 

