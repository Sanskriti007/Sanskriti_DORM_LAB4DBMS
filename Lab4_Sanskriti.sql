/* Lab Assignment, Great Learning, Sanskriti Srivastava*/


/*creating supplier table*/
CREATE TABLE supplier (
	SUPP_ID	INT,
	SUPP_NAME	varchar(50) NOT NULL,
	SUPP_CITY	varchar(50) NOT NULL,
	SUPP_PHONE	varchar(50) NOT NULL,
	PRIMARY KEY (SUPP_ID)
	);

/*creating customer table	*/
CREATE TABLE customer(
	CUS_ID	INT,
	CUS_NAME	VARCHAR(20) NOT NULL,
	CUS_PHONE	VARCHAR(10) NOT NULL,
	CUS_CITY	VARCHAR(30) NOT NULL,
	CUS_GENDER	CHAR,
	PRIMARY KEY (CUS_ID)
	);
	
/*creating category table*/
CREATE TABLE category(
	CAT_ID	INT,
	CAT_NAME	VARCHAR(20) NOT NULL,
	PRIMARY KEY (CAT_ID)
);

/*creating product table*/
CREATE TABLE product(
	PRO_ID	INT,
	PRO_NAME	VARCHAR(20) NOT NULL DEFAULT "Dummy",
	PRO_DESC	VARCHAR(60),
	CAT_ID	INT,
	PRIMARY KEY (PRO_ID),
	FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)
 );
 
/* creating supplier_pricing table*/
CREATE TABLE supplier_pricing(
	PRICING_ID	INT,
	PRO_ID	INT,
	SUPP_ID	INT,
	SUPP_PRICE	INT DEFAULT 0,
	PRIMARY KEY (PRICING_ID),
	FOREIGN KEY (PRO_ID) REFERENCES product(PRO_ID),
	FOREIGN KEY (SUPP_ID) REFERENCES supplier(SUPP_ID)
	);
	/* creating table order*/
CREATE TABLE orders(
	ORD_ID	INT,
	ORD_AMOUNT	INT NOT NULL,
	ORD_DATE	DATE NOT NULL,
	CUS_ID	INT,
	PRICING_ID	INT,
	PRIMARY KEY (ORD_ID),
	FOREIGN KEY (CUS_ID) REFERENCES customer(CUS_ID),
	FOREIGN KEY (PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
    );
	
/* create rating table*/
CREATE TABLE rating(	
	RAT_ID	INT,
	ORD_ID	INT,
	RAT_RATSTARS INT NOT NULL,
	PRIMARY KEY (RAT_ID),
	FOREIGN KEY (ORD_ID) REFERENCES orders(ORD_ID)
	);
	
/* Insert Values into supplier table*/
INSERT INTO supplier VALUES(1,'Rajesh Retails','Delhi','1234567890');
INSERT INTO supplier VALUES(2,'Appario Ltd.','Mumbai','2589631470');
INSERT INTO supplier VALUES(3,'Knome products','Banglore','9785462315');
INSERT INTO supplier VALUES(4,'Bansal Retails','Kochi','8975463285');
INSERT INTO supplier VALUES(5,'Mittal Ltd.','Lucknow','7898456532');


/* Insert Values into customer table*/
INSERT INTO customer VALUES(1,'AAKASH','9999999999','DELHI','M');
INSERT INTO customer VALUES(2,'AMAN','9785463215','NOIDA','M');
INSERT INTO customer VALUES(3,'NEHA','9999999999','MUMBAI','F');
INSERT INTO customer VALUES(4,'MEGHA','9994562399','KOLKATA','F');
INSERT INTO customer VALUES(5,'PULKIT','7895999999','LUCKNOW','M');

/*Insert Values into category table*/
INSERT INTO category VALUES(1,'BOOKS');
INSERT INTO category VALUES(2,'GAMES');
INSERT INTO category VALUES(3,'GROCERIES');
INSERT INTO category VALUES(4,'ELECTRONICS');
INSERT INTO category VALUES(5,'CLOTHES');
	
/*Insert Values into product table*/
INSERT INTO product VALUES(1,'GTA V','Windows 7 and above with i5 processor and 8GB RAM',2);
INSERT INTO product VALUES(2,'TSHIRT','SIZE-L with Black, Blue and White variations',5);
INSERT INTO product VALUES(3,'ROG LAPTOP','Windows 10 with 15inch screen, i7 processor, 1TB SSD',4);
INSERT INTO product VALUES(4,'OATS','Highly Nutritious from Nestle',3);
INSERT INTO product VALUES(5,'HARRY POTTER','Best Collection of all time by J.K Rowling',1);
INSERT INTO product VALUES(6,'MILK','1L Toned MIlk',3);
INSERT INTO product VALUES(7,'Boat Earphones','1.5Meter long Dolby Atmos',4);
INSERT INTO product VALUES(8,'Jeans','Stretchable Denim Jeans with various sizes and color',5);
INSERT INTO product VALUES(9,'Project IGI','compatible with windows 7 and above',2);
INSERT INTO product VALUES(10,'Hoodie','Black GUCCI for 13 yrs and above',5);
INSERT INTO product VALUES(11,'Rich Dad Poor Dad','Written by RObert Kiyosaki',1);
INSERT INTO product VALUES(12,'Train Your Brain','By Shireen Stephen',1);


/*Insert into supplier_pricing table*/
INSERT INTO supplier_pricing VALUES(1,1,2,1500);
INSERT INTO supplier_pricing VALUES(2,3,5,30000);
INSERT INTO supplier_pricing VALUES(3,5,1,3000);
INSERT INTO supplier_pricing VALUES(4,2,3,2500);
INSERT INTO supplier_pricing VALUES(5,4,1,1000);
INSERT INTO supplier_pricing VALUES(6,12,2,780);
INSERT INTO supplier_pricing VALUES(7,12,4,789);
INSERT INTO supplier_pricing VALUES(8,3,1,31000);
INSERT INTO supplier_pricing VALUES(9,1,5,1450);
INSERT INTO supplier_pricing VALUES(10,4,2,999);
INSERT INTO supplier_pricing VALUES(11,7,3,549);
INSERT INTO supplier_pricing VALUES(12,7,4,529);
INSERT INTO supplier_pricing VALUES(13,6,2,105);
INSERT INTO supplier_pricing VALUES(14,6,1,99);
INSERT INTO supplier_pricing VALUES(15,2,5,2999);
INSERT INTO supplier_pricing VALUES(16,5,2,2999);


/* Insert Values into orders TABLE*/

INSERT INTO orders VALUES(101,1500,'2021-10-06',2,1);
INSERT INTO orders VALUES(102,1000,'2021-10-12',3,5);
INSERT INTO orders VALUES(103,30000,'2021-09-16',5,2);
INSERT INTO orders VALUES(104,1500,'2021-10-05',1,1);
INSERT INTO orders VALUES(105,3000,'2021-08-16',4,3);
INSERT INTO orders VALUES(106,1450,'2021-08-18',1,9);
INSERT INTO orders VALUES(107,789,'2021-09-01',3,7);
INSERT INTO orders VALUES(108,780,'2021-09-07',5,6);
INSERT INTO orders VALUES(109,3000,'2021-00-10',5,3);
INSERT INTO orders VALUES(110,2500,'2021-09-10',2,4);
INSERT INTO orders VALUES(111,1000,'2021-09-15',4,5);
INSERT INTO orders VALUES(112,789,'2021-09-16',4,7);
INSERT INTO orders VALUES(113,31000,'2021-09-16',1,8);
INSERT INTO orders VALUES(114,1000,'2021-09-16',3,5);
INSERT INTO orders VALUES(115,3000,'2021-09-16',5,3);
INSERT INTO orders VALUES(116,99,'2021-09-17',2,14);


/* Insert Values into rating table*/
INSERT INTO rating VALUES(1,101,4);
INSERT INTO rating VALUES(2,102,3);
INSERT INTO rating VALUES(3,103,1);
INSERT INTO rating VALUES(4,104,2);
INSERT INTO rating VALUES(5,105,4);
INSERT INTO rating VALUES(6,106,3);
INSERT INTO rating VALUES(7,107,4);
INSERT INTO rating VALUES(8,108,4);
INSERT INTO rating VALUES(9,109,3);
INSERT INTO rating VALUES(10,110,5);
INSERT INTO rating VALUES(11,111,3);
INSERT INTO rating VALUES(12,112,4);
INSERT INTO rating VALUES(13,113,2);
INSERT INTO rating VALUES(14,114,1);
INSERT INTO rating VALUES(15,115,1);
INSERT INTO rating VALUES(16,116,0);


/* Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.*/


SELECT 
     count(DISTINCT a.cus_id) AS CUS_COUNT, a.cus_gender AS GENDER
FROM customer a,orders b 
WHERE a.CUS_ID = b.CUS_ID 
	AND b.ORD_AMOUNT >= 3000
GROUP BY a.cus_gender;
	
/* Display all the orders along with product name ordersed by a customer having Customer_Id=2*/
SELECT  a.* , b.pro_name
FROM orders a, product b, supplier_pricing c
WHERE a.PRICING_ID = c.PRICING_ID
	AND c.PRO_ID = b.PRO_ID
	AND a.CUS_ID = 2 


/* Display the Supplier details who can supply more than one product.*/



WITH SupplierCount as
    (SELECT supp_id Supplier_id,
	count(pro_id) product_count
    from supplier_pricing
	group by supp_id)
        SELECT a.* 
        FROM supplier a, SupplierCount s
        WHERE s.product_count> 1
		AND a.supp_id = s.Supplier_id;
		
		
/*Find the least expensive product from each category and print the table with category id, name, product name and price of the product*/

WITH Min_Price AS(
SELECT MIN(s.supp_price) price, p.cat_id
FROM   supplier_pricing s,product p
WHERE p.pro_id = s.pro_id
GROUP BY p.cat_id)
SELECT c.cat_id,c.cat_name,p.pro_name , m.price
FROM Min_Price m, supplier_pricing s,product p,category c
where c.cat_id = m.cat_id
AND m.price=s.supp_price
AND s.pro_id=p.pro_id;


/*7)	Display the Id and Name of the Product ordered after “2021-10-05”.*/

SELECT p.pro_id,p.pro_name
from product p , orders o,supplier_pricing s
where s.PRICING_ID = o.PRICING_ID
	AND p.PRO_ID = s.PRO_ID
	AND ord_date > date('2021-10-05');
	
/*8)	Display customer name and gender whose names start or end with character 'A'.*/

SELECT c.cus_name,c.cus_gender
from customer c
where c.cus_name LIKE 'A%' 
OR c.cus_name LIKE '%A'

/*Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.*/

CREATE PROCEDURE SelectAllCustomers
AS
SELECT s.supp_name, s.supp_id,r.rat_ratstars,
CASE WHEN r.rat_ratstars = 5 then 'Excellent Service' 
     when r.rat_ratstars >=4 then 'Good Service'
	 when r.rat_ratstars >2 then 'Average Service'
	ELSE 
	'Poor Service'
	END Type_of_Service
from supplier s,rating r,orders o, supplier_pricing p
where r.ord_id=o.ord_id
and o.pricing_id = p.pricing_id
and p.supp_id = s.supp_id
GO;


EXEC SelectAllCustomers;