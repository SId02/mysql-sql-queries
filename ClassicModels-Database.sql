-- To display available databases

SHOW DATABASES;

-- Databases can be created using the CREATE DATABASE statement

CREATE DATABASE `classicmodels`;

-- A database must be selected before it can be used. This is done with the USE statement.
USE `classicmodels`;

-- Create table offices 

CREATE TABLE `offices` (
    `officeCode` VARCHAR(10) NOT NULL,
    `city` VARCHAR(50) NOT NULL,
    `phone` VARCHAR(50) NOT NULL,
    `addressLine1` VARCHAR(50) NOT NULL,
    `addressLine2` VARCHAR(50),
    `state` VARCHAR(50),
    `country` VARCHAR(50) NOT NULL,
    `postalCode` VARCHAR(15) NOT NULL,
    `territory` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`officeCode`)
);

SHOW TABLES;
DESCRIBE `offices`;
-- insert some rows into the table using the INSERT INTO statement

INSERT INTO `offices` 

(`officeCode`,`city`,`phone`,`addressLine1`,`addressLine2`,`state`,`country`,`postalCode`,`territory`) VALUES 

('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),

('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),

('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),

('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),

('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),

('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),

('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

 -- view data from all columns using

SELECT 
    *
FROM
    `offices`;



-- > **EXERCISES**:

-- 1. Add some more entires into the `offices` table, using just the required (NOT NULL) columns. 
	DESCRIBE offices;

	INSERT INTO offices (officeCode, city, phone, addressline1, country, postalCode,territory,officelocation)
	VALUES ('jovian', 'Bengaluru', '+919744324587', '34/7, Koramangal', 'India', '560010','South',POINT(1,2));


-- 2. Explore what happens if you don't provide a value for a column marked as `not null`.
INSERT INTO offices (city,phone,addressline1,country,postalcode,territory)
VALUES('Hyderabad','+919733345588','32/4, Oldcity', 'India','432201','East');

-- 3. Try adding an entry with a primary key matching the an existing entry.

INSERT INTO offices (officeCode, city, phone, addressline1, country, postalCode,territory,officelocation)
VALUES ('jovian', 'Chennai', '+919744323487', '3/7, Beach', 'India', '560220','South',POINT(3,2));


-- 4. Retrieve and display just the city and phone number information for each office.
SELECT 
    city, phone
FROM
    offices;



CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`),
  FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
);
INSERT INTO `employees` VALUES
(1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),
(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),
(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),
(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)'),
(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),
(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1056,'Sales Manager (NA)'),
(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),
(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),
(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),
(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1143,'Sales Rep'),
(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),
(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),
(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),
(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),
(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),
(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),
(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),
(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),
(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),
(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),
(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1056,'Sales Rep'),
(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5',1621,'Sales Rep'),
(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4',1102,'Sales Rep');


-- EXERCISES 

-- 1. Try inserting an entry into `employees` with an invalid value for `officeCode`.






-- 2. Try inserting an entry into `employees` with an invalid value for `reportsTo`.
-- 3. Create a new office location and add some employees for the new location.
