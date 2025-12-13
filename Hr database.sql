------------------------------------  Salesman DataBase --------------------------------------------

create database anshu
use anshu

create table salesman
 (
 Salesman_ID int Primary key,
 name char(30),
 city char(30),
 Comission Float,
 ) 
 
 select * from salesman
 
 insert into salesman values(5001,'James Hoog','New York',0.15)
  insert into salesman values(5002,'Nail Knite','Paris',0.13)
   insert into salesman values(5005,'Pit Alex','London',0.11)
    insert into salesman values(5006,'Mc lyon','Paris',0.14)  
      insert into salesman values(5007,'Paul Adam','Rome',0.13)
     insert into salesman values(5003,'Lauson Hen','San Jose',0.12) 

-----------------------------order_table -----------------------
create table order_table
 (
 Ord_no int,
 Purch_amt float,
 Ord_date date,
 Customer_ID int ,
 Salesman_ID int foreign key references salesman(Salesman_ID)
 )    
     
 SELECT * FROM order_table 
insert into order_table values(70001,150.5,'2012-10-05',3005,5002) 
insert into order_table values(70009,270.65,'2012-09-10',3001,5005) 
insert into order_table values(70002,65.26,'2012-10-05',3002,5001) 
insert into order_table values(70004,110.5,'2012-08-17',3009,5003)
insert into order_table values(70007,948.5,'2012-09-10',3005,5002) 
insert into order_table values(70005,2400.6,'2012-07-27',3007,5001) 
insert into order_table values(70008,5760,'2012-09-10',3002,5001) 
insert into order_table values(70010,1983.43,'2012-10-10',3004,5006) 
insert into order_table values(70003,2480.4,'2012-10-10',3009,5003) 
insert into order_table values(70012,250.45,'2012-06-27',3008,5002) 
insert into order_table values(70011,75.29,'2012-08-17',3003,5007) 
insert into order_table values(70013,3045.6,'2012-04-25',3002,5001) 
Drop table order_table

  update order_table set Ord_no=70001 where Purch_amt=150.5

-------------------customer ------------------------------
create table customer
 (
 customer_id int,
 cust_name char(30),
 city char(30),
 grade int,
 salesman_id int,
 )
  
 select * from customer 
 
insert into customer values(3002,'Nick Rimando','New York',100,5001)
insert into customer values(3007,'Brad Davis','New York',200,5001)
insert into customer values(3005,'Graham Zusi','California',200,5002)
insert into customer values(3008,'Julian Green','London',300,5006)
insert into customer values(3004,'Fabian Johnson','Paris',300,5002) 
insert into customer values(3009,'Geoff Cameron','Berlin',100,5003)  
insert into customer values(3003,'Geoff Jozy Altidor','Moscow',200,5007)  
insert into customer values(3001,'Brad Guzan','London',5005,6500)        

 
update customer set salesman_id=5002 where customer_id=3008
update customer set salesman_id=5006 where customer_id=3004
update customer set cust_name='Jozy Altidor' where customer_id=3003


-------------------Item master -------------------------------------
create table Item_master
  (
  Pro_ID_ int,
  Pro_NAME char(30),
  Pro_Price int,
  Pro_COM int,
  )      
        
  select * from Item_master     
  insert into Item_master values(101,'Mother Board',3200,15) 
    insert into Item_master values(102,'Key Board',450,16) 
       insert into Item_master values(103,'ZIP drive',250,14)
              insert into Item_master values(104,'Speaker',550,16) 
                insert into Item_master values(105,'Monitor',5000,11) 
                                insert into Item_master values(106,'DVD drive',900,12) 
 insert into Item_master values(107,'CD drive',800,12) 
  
 insert into Item_master values(108,'Printer',2600,13) 
  insert into Item_master values(109,'Refill cartridge',350,13)
    insert into Item_master values(110,'Mouse',250,12) 
    
 -----------------------------Emp Details ----------------------------------------   
 create table Emp_details
  (
  Emp_IDno int,
  Emp_FNAME CHAR(30),
  Emp_LNAME CHAR(30),
  Emp_dept int,
  )  
select * from Emp_details
 
insert into Emp_details values(127323,'Michale','Robbin',57)
insert into Emp_details values(526689,'Carlos','Snares',63)
insert into Emp_details values(843795,'Enric','Dosio',57)
insert into Emp_details values(328717,'Jhon','Snares',63)
insert into Emp_details values(444527,'Joseph','Dosni',47)
insert into Emp_details values(659831,'Zanifer','Emily',47)
insert into Emp_details values(847674,'kuleswar','Sitaraman',57)
insert into Emp_details values(748681,'Henrey','Gabriel',47)
insert into Emp_details values(555935,'Alex','Manuel',57)
insert into Emp_details values(539569,'George','Mardy',27)
insert into Emp_details values(733843,'Mario','Saule',63)
insert into Emp_details values(631548,'Alan','Snappy',27)
insert into Emp_details values(839139,'Maria','Foster',57) 
 
 --------------------------Nobel-------------------------------------
  create table Nobel
 (
 Year int,
 Subject char(20),
 Winner char(30),
 Country char(20),
 Category char(20)
 )
 
 select * from Nobel
Insert into Nobel values(1970,'Physics','Louis Neel','France','Scientist')
Insert into Nobel values(1970,'Chemistry','Luis Federico leloir','France','Scientist')
Insert into Nobel values(1970,'Physiology','Ulf von Euler','sweden','Scientist')
Insert into Nobel values(1970,'Physics','Bernard katz','Germany','Scientist')
Insert into Nobel values(1970,'literature','Aleksandr solzhenitsyn','Russia','Linguist')
Insert into Nobel values(1970,'Economics','Paul samuelson','USA','Economist')
Insert into Nobel values(1970,'Physiology','Julius axelrod','USA','Scientist')
Insert into Nobel values(1971,'Physics','Dennis Gabor','Hungary','Scientist')
Insert into Nobel values(1971,'Chemistry','Gerhard herzberg','Germany','Scientist')
Insert into Nobel values(1971,'Peace','Willy Brandt','Germany','Chancellor')
Insert into Nobel values(1971,'Literature','Pablo Neruda','Chile','Linguist')
Insert into Nobel values(1971,'Economics','Simon kuznets','Russia','Economist')
Insert into Nobel values(1978,'Peace','Anwar al-sadat','Egypt','President')
Insert into Nobel values(1978,'Peace','Menachem Begin','Israel','Prime Minister')
Insert into Nobel values(1987,'chemistry','Donald J.cram','USA','Scientist')
Insert into Nobel values(1987,'chemistry','Jean-Marie Lehn','France','Scitentist')
Insert into Nobel values(1987,'Physiology','Susumu Tonegawa','Japan','Scientist')
Insert into Nobel values(1994,'Economics','Reinhard selten','Germany','Eoconmist')
Insert into Nobel values(1994,'Peace','Yitzhak Rabin','Israel','Scientist')
Insert into Nobel values(1987,'Physics','Johannes Georg badnorz','Germany','Scientist')
Insert into Nobel values(1987,'Lierature','Joseph Brodsky','Russia','Linguist')
Insert into Nobel values(1987,'Economics','Robert solow','USA','Economist')
Insert into Nobel values(1994,'Literature','Kenzaburo Oe','Japan','Linguist')
 
 --------------Questions ------------------------------
 1.	Write a SQL statement to display all the information of all salesmen.
 select*from salesman
 
2.	Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".  
select 'This is SQL Exercise, Practice and Solution' as string

3.	3. Write a query to display three numbers in three columns. 
select 2 as columns1,3 as columns2 ,4 as columns3
  
4.	4. Write a query to display the sum of two numbers 10 and 15 from RDMS sever.  
select sum(10+15) as RDMS 

5.	5. Write a query to display the result of an arithmetic expression.  
SELECT 2/3*6-12+5 as arithmetic_expression

6. Write a SQL statement to display specific columns like name and commission for all the salesmen. 
select name,comission from salesman 

7.	Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders. 
 select Ord_date,Salesman_ID,Ord_no,Purch_amt from order_table

8.Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders.  
 select * from order_table order by Ord_date,Salesman_ID,Ord_no,Purch_amt
 
9.Write a SQL statement to display names and city of salesman, who belongs to the city of Paris.
 select * from salesman where city='Paris' 

10.Write a SQL statement to display all the information for those customers with a grade of 200.
 select * from customer where grade=200
 select*from customer
 
11. Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001. 
 select Ord_no,Ord_date,Purch_amt from order_table where Salesman_ID=5001
 
12. Write a SQL query to display the Nobel prizes for 1970.  
 select * from Nobel where YEAR=1970
  
13. Write a SQL query to know the winner of the 1971 prize for Literature. 
 select * from Nobel where YEAR=1971 AND Subject='Literature' 
 
14. Write a SQL query to display the year and subject that won 'Dennis Gabor' his prize
 SELECT YEAR,SUBJECT FROM Nobel WHERE Winner = 'DENNIS GABOR'

15. Write a SQL query to give the name of the 'Physics' winners since the year 1950.
SELECT*FROM Nobel WHERE Subject='physics' and YEAR=1950

16. Write a SQL query to Show all the details (year, subject, winner, country ) of the Chemistry prize winners between the year 1965 to 1975 inclusive. 
select year, subject, winner, country from Nobel where Subject = 'chemistry'  AND year BETWEEN 1965 AND 1975

17. Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin. 
SELECT *FROM nobel WHERE subject = 'Prime Ministerial' AND year > 1972 AND winner IN ('Menachem Begin', 'Yitzhak Rabin')

18. Write a SQL query to show all the details of the winners with first name Louis.
select*from Nobel where Winner like 'louis%'

19. Write a SQL query to show all the winners in Physics for 1970 together with the winner of Economics for 1971.
SELECT *FROM nobel WHERE (subject = 'Physics' AND year = 1970) OR (subject = 'Economics' AND year = 1971)

20. Write a SQL query to show all the winners of nobel prize in the year 1970 except the subject Physiology and Economics.
SELECT *FROM nobel WHERE year = 1970 AND subject NOT IN ('Physiology', 'Economics')

21. Write a SQL query to show the winners of a 'Physiology' prize in an early year before 1971 together with winners of a 'Peace' prize in a later year on and after the 1974. 
select*from Nobel where (Subject='Physiology' and YEAR<1971)and (Subject='peace' and YEAR>=1974)

22. Write a SQL query to find all details of the prize won by Johannes Georg Bednorz. 
select*from Nobel where Winner in ( 'Johannes Georg','Bednorz') 

23. Write a SQL query to find all the details of the nobel winners for the subject not started with the letter 'P' and arranged the list as the most recent comes first, then by name in order.
select*from Nobel where subject not like 'p%' ORDER BY year DESC, winner ASC

24. Write a SQL query to find all the details of 1970 winners by the ordered to subject and winner name; but the list contain the subject Economics and Chemistry at last.

SELECT *FROM nobel WHERE year = 1970 ORDER BY 
 CASE 
    WHEN subject IN ('Economics', 'Chemistry') THEN 1 
    ELSE 0 
  END,
  subject,
  winner

25. Write a query in SQL to find the last name of all employees, without duplicates. 
select*from Emp_details
select distinct emp_lname from Emp_details 

26. Write a query in SQL to find the data of employees whose last name is 'Snares'. 
select*from Emp_details where Emp_LNAME = 'snares'

27. Write a query in SQL to display all the data of employees that work in the department 57.
select*from Emp_details where emp_dept = 57

Q28. Write a query in SQL to display the first and last name and date of joining of the employees who is either Sales Representative or Sales Man.
select*from employee 

select first_name+last_name,hire_date from employee where 

Q29. Write a query in SQL to display the average salary of employees for each department who gets a commission percentage.
Q30. Write a query in SQL to display those departments where any manager is managing 4 or more employees. 
Q31. Write a query in SQL to display those departments where more than ten employees work who got a commission percentage.
Q32. Write a query in SQL to display the employee ID and the date on which he ended his previous job.
Q33.  Write a query in SQL to display the details of the employees who have no commission percentage and salary within the range 7000 to 12000 and works in that department which number is 50.




  