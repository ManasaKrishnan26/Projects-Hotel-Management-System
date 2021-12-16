CREATE DEFINER=`root`@`localhost` PROCEDURE `assigned_room_type`(
in customer int,
out room_type text )
BEGIN
select Assigned_room_type into room_type
from room
where customer = customer_id ;
END