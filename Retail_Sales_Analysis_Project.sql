-- CREATE DATABASE
CREATE DATABASE project1;


-- USE DATABASE
USE project1;


-- CREATE TABLE
CREATE TABLE sales(
      transaction_id INT PRIMARY KEY,
      sale_date DATE,
      sale_time TIME,
      customer_id INT,
	  gender VARCHAR(15),
      age INT,
      category VARCHAR(15),
      quantity INT,
      price_per_unit FLOAT,
      cogs FLOAT,
      total_sale FLOAT);


-- INSERT DATA IN THE DATABASE
INSERT INTO sales (  transaction_id ,sale_date ,sale_time,customer_id , gender  ,age, category ,quantity,price_per_unit,cogs,total_sale )VALUES
(1,'2025-01-01','09:15:00',1001,'Male',25,'Electronics',1,501.00,300.00,500.00),
(2,'2025-01-01','10:05:00',1002,'Female',30,'Clothing',2,40.00,48.00,80.00),
(3,'2025-01-01','11:20:00',1003,'Male',22,'Grocery',5,10.00,30.00,50.00),
(4,'2025-01-02','12:10:00',1004,'Female',28,'Beauty',3,25.00,45.00,75.00),
(5,'2025-01-02','13:45:00',1005,'Male',35,'Sports',2,150.00,180.00,300.00),
(6,'2025-01-02','14:30:00',1006,'Female',27,'Electronics',1,800.00,480.00,800.00),
(7,'2025-01-03','09:05:00',1007,'Male',31,'Clothing',4,35.00,84.00,140.00),
(8,'2025-01-03','10:40:00',1008,'Female',24,'Grocery',6,8.00,28.80,48.00),
(9,'2025-01-03','11:55:00',1009,'Male',29,'Beauty',2,60.00,72.00,120.00),
(10,'2025-01-04','12:25:00',1010,'Female',33,'Sports',1,200.00,120.00,200.00),
(11,'2025-01-04','13:10:00',1011,'Male',26,'Electronics',2,450.00,540.00,900.00),
(12,'2025-01-04','14:55:00',1012,'Female',21,'Clothing',3,50.00,90.00,150.00),
(13,'2025-01-05','09:35:00',1013,'Male',40,'Grocery',7,9.00,37.80,63.00),
(14,'2025-01-05','10:20:00',1014,'Female',36,'Beauty',1,120.00,72.00,120.00),
(15,'2025-01-05','11:10:00',1015,'Male',23,'Sports',2,180.00,216.00,360.00),
(16,'2025-01-06','12:00:00',1016,'Female',32,'Electronics',1,950.00,570.00,950.00),
(17,'2025-01-06','13:25:00',1017,'Male',27,'Clothing',5,30.00,90.00,150.00),
(18,'2025-11-06','14:40:00',1018,'Female',38,'Grocery',4,12.00,28.80,48.00),
(19,'2025-01-07','09:50:00',1019,'Male',34,'Beauty',2,70.00,84.00,140.00),
(20,'2025-01-07','10:30:00',1020,'Female',29,'Sports',3,160.00,288.00,480.00),
(21,'2025-01-07','11:45:00',1021,'Male',41,'Electronics',1,600.00,360.00,600.00),
(22,'2025-11-08','12:15:00',1022,'Female',26,'Clothing',2,55.00,66.00,110.00),
(23,'2025-11-08','13:35:00',1023,'Male',37,'Grocery',8,7.00,33.60,56.00),
(24,'2025-01-08','14:50:00',1024,'Female',30,'Beauty',1,90.00,54.00,90.00),
(25,'2025-01-09','09:10:00',1025,'Male',28,'Sports',2,140.00,168.00,280.00),
(26,'2025-01-09','10:25:00',1026,'Female',22,'Electronics',1,700.00,420.00,700.00),
(27,'2025-01-09','11:40:00',1027,'Male',39,'Clothing',3,45.00,81.00,135.00),
(28,'2025-01-10','12:05:00',1028,'Female',31,'Grocery',6,11.00,39.60,66.00),
(29,'2025-01-10','13:15:00',1029,'Male',33,'Beauty',2,85.00,102.00,170.00),
(30,'2025-01-10','14:30:00',1030,'Female',27,'Sports',1,220.00,132.00,220.00),
(31,'2025-01-11','09:20:00',1031,'Male',24,'Electronics',2,400.00,480.00,800.00),
(32,'2025-01-11','10:45:00',1032,'Female',35,'Clothing',4,38.00,91.20,152.00),
(33,NULL,'11:55:00',1033,NULL,29,'Grocery',5,10.00,30.00,50.00),
(34,'2025-01-12','12:35:00',1034,'Female',42,'Beauty',1,150.00,90.00,150.00),
(35,'2025-01-12','13:50:00',1035,'Male',36,'Sports',3,175.00,315.00,525.00),
(36,'2025-01-12','14:20:00',1036,'Female',28,NULL,1,820.00,492.00,820.00),
(37,'2025-01-13','09:05:00',1037,'Male',32,'Clothing',2,60.00,72.00,120.00),
(38,'2025-01-13','10:15:00',1038,'Female',23,'Grocery',9,6.00,32.40,54.00),
(39,'2025-01-13','11:30:00',1039,'Male',27,'Beauty',2,95.00,114.00,190.00),
(40,'2025-01-14','12:40:00',1040,'Female',34,'Sports',1,210.00, NULL,210.00);



-- SHOW NULL
SELECT * FROM sales 
WHERE transaction_id  IS NULL
OR 
 sale_time IS NULL
 OR 
 customer_id IS NULL
 OR 
 gender  IS NULL
 OR 
 age IS NULL
 OR 
 category  IS NULL
 OR 
 quantity   IS NULL
 OR 
 price_per_unit IS NULL
 OR 
 cogs IS NULL
 OR total_sale IS NULL;      
 


-- DATA EXPLORATION

-- How many sales we have ? 
SELECT COUNT(*) FROM sales;

-- How many unique customer we have ?
SELECT COUNT(DISTINCT customer_id) FROM sales;

-- How many unique gender we have ?
SELECT COUNT(DISTINCT gender ) FROM sales;
 
 -- How many unique category we have with name ?
 SELECT COUNT(DISTINCT category) ,category FROM sales
 GROUP BY category;
 
 
 -- DATA ANALYSIS & BUSINESS KEY PROBLEM
 
 -- Write a SQL query to retrieve all columns for sale made on 2025-01-07 ?
 SELECT *
 FROM sales
 WHERE sale_date = '2025-01-07';
 
 -- Write a SQL query to retrieve all transactions where the category is clothing and the quantity sold is more than 2 in the month of JAN- 2025?
 SELECT *
 FROM sales
 WHERE category ='clothing' 
 AND
 sale_date BETWEEN '2025-01-01' AND '2025-01-31'
 AND 
 quantity >2;
 
-- Write a SQL query to calculate the total sales for each category?
SELECT category, SUM(total_sale)
FROM sales
GROUP BY category;

-- Write a SQL query to find the average age of customer who purchased items from the 'Beauty' category?
SELECT AVG(age)
FROM sales
WHERE category ='Beauty';      

-- Write a SQL query to find the total number of transaction made by each gender in each category ?
SELECT category , gender , COUNT(*)
FROM sales
GROUP BY category , gender
ORDER BY 1;

-- Write a SQL query to find all transaction where the total_sale is greaater than 500 ?
SELECT * 
FROM sales
WHERE total_sale>500;

-- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year ? not complete
SELECT year, month, avg_monthly_sale
FROM (
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_monthly_sale,
        RANK() OVER (PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS rnk
    FROM sales
    WHERE sale_date IS NOT NULL
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) AS t
WHERE rnk = 1;


-- Write a SQL query to find the top 5 customers based on the highest total sale ?
SELECT customer_id,SUM(total_sale)
FROM sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Write a SQL query to find the number of unique customer who purchased items from each category ?
SELECT category , 
COUNT( DISTINCT customer_id)
FROM sales 
GROUP BY category;

-- Write a SQL query to create each shift  and number of orders (Example morning<=12, afternoon between 12 & 17 , evening >17)?
SELECT shift, COUNT(*)
FROM(
	   SELECT *,
          CASE
            WHEN sale_time < '12:00:00' THEN 'Morning'
            WHEN sale_time BETWEEN '12:00:00' AND '17:00:00' THEN 'Afternoon'
            ELSE  'Evening'
         END AS Shift 
      FROM sales
	) AS t
GROUP BY shift;
 
