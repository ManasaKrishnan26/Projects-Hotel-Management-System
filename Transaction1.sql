start transaction;

select @customerid:=max(customer_id)+1 from hotel_management_system ;

insert into room(customer_id, Reserved_Room_Type, Assigned_Room_Type, Total_Of_Special_Requests, Stays_In_Weekend_Nights, Stays_In_Week_Nights)
			values(@customerid, 'A', 'A', 3 , 1 , 2 );
            
insert into hotel_management_system(customer_id, Hotel_Name, Country)
            values(@customerid, 'Resort Hotel', 'USA' );
            
 commit;           