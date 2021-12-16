CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `cancellations` AS
    SELECT 
        `b`.`Is_Canceled` AS `Is_Canceled`,
        `b`.`Booking_Changes` AS `Booking_Changes`,
        `b`.`Days_In_Waiting_List` AS `Days_In_Waiting_List`,
        `g`.`Previous_Cancellations` AS `Previous_Cancellations`,
        `g`.`Previous_Bookings_Not_Cancelled` AS `Previous_Bookings_Not_Cancelled`,
        `b`.`Booking_Agent` AS `Booking_Agent`
    FROM
        (`booking` `b`
        JOIN `guest_history` `g`)