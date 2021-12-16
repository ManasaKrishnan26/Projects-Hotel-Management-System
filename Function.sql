CREATE DEFINER=`root`@`localhost` FUNCTION `customer_country`(customer_no int,
hotel_type text ) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
declare country_name text;

select Country into country_name
from hotel_management_system 
where customer_no = customer_id and hotel_type = Hotel_Name;


RETURN country_name;
END