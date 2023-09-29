### EXERCISES:

-- 1. Add some more entires into the offices table, using just the required (NOT NULL) columns.

SELECT * FROM offices;

	DESCRIBE offices;

    INSERT INTO offices (officeCode, city, phone, addressline1, country, postalCode,territory,officelocation)
	VALUES ('jovian', 'Bengaluru', '+919744324587', '34/7, Koramangal', 'India', '560010','South',POINT(1,2));

-- 2. Explore what happens if you don't provide a value for a column marked as not null.

INSERT INTO offices (city,phone,addressline1,country,postalcode,territory)
VALUES('Hyderabad','+919999999999','32/4, Oldcity', 'India','432201','East');

    -- Error Code: 1364. Field 'officeCode' doesn't have a default value


-- 3. Try adding an entry with a primary key matching the an existing entry.
      
      INSERT INTO offices (officeCode, city, phone, addressline1, country, postalCode,territory,officelocation)
        VALUES ('jovian', 'Chennai', '+919999999999', '3/7, Beach', 'India', '560220','South',POINT(3,2));
        --Error Code: 1062. Duplicate entry 'jovian' for key 'offices.PRIMARY'

--4. Retrieve and display just the city and phone number information for each office.

SELECT city, phone FROM offices;


--5 