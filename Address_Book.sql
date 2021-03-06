--UC1:
CREATE DATABASE ADDRESSBOOK_SERVICE
SELECT * FROM SYS.DATABASES
USE ADDRESSBOOK_SERVICE

--UC2:
CREATE TABLE ADDRESS_BOOK(
ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(25) NOT NULL,
LAST_NAME VARCHAR(25) NOT NULL,
ADDRESS VARCHAR(100) NOT NULL,
CITY VARCHAR(25) NOT NULL,
STATE VARCHAR(25) NOT NULL,
ZIP_CODE FLOAT NOT NULL,
PHONE_NUMBER FLOAT NOT NULL,
EMAIL VARCHAR(50) NOT NULL)

SELECT * FROM ADDRESS_BOOK


--UC3:
INSERT INTO ADDRESS_BOOK VALUES('Harini','Lekkala','11A','Vizag','Visakhapatnam',654321,9087654321,'harini.lekkala1997@gmail.com')
INSERT INTO ADDRESS_BOOK VALUES('Harshini','Potnuri','12B','Madhurwada','Vsp',645321,8907654321,'harshini.potnuri1997@gmail.com')
INSERT INTO ADDRESS_BOOK VALUES('Pardhavi','Neeli','13C','Rajasthan','Jaipur',634521,7890123456,'pardhavi.neeli@gmail.com')



--UC4:
UPDATE ADDRESS_BOOK SET CITY = 'Podugupalem' WHERE FIRST_NAME = 'Harini'

--UC5:
DELETE FROM ADDRESS_BOOK WHERE FIRST_NAME = 'Pardhavi'

--UC6:
SELECT * FROM ADDRESS_BOOK WHERE CITY = 'Podugupalem'
SELECT * FROM ADDRESS_BOOK WHERE STATE = 'Vsp'

--UC7:
SELECT CITY, COUNT(CITY) AS CITY_COUNT FROM ADDRESS_BOOK GROUP BY CITY
SELECT STATE, COUNT(STATE) AS STATE_COUNT FROM ADDRESS_BOOK GROUP BY STATE

--UC8:
SELECT * FROM ADDRESS_BOOK WHERE CITY = 'Podugupalem' ORDER BY FIRST_NAME ASC

--UC9:
ALTER TABLE ADDRESS_BOOK ADD TYPE VARCHAR(20) NOT NULL DEFAULT('')
UPDATE ADDRESS_BOOK SET TYPE = 'Family' WHERE FIRST_NAME = 'Harini'
UPDATE ADDRESS_BOOK SET TYPE = 'Family' WHERE FIRST_NAME = 'Harshini'
--UPDATE ADDRESS_BOOK SET TYPE = 'Family' WHERE FIRST_NAME = 'Pardhavi'

--UC10:
SELECT TYPE, COUNT(TYPE) AS TYPE_COUNT FROM ADDRESS_BOOK GROUP BY TYPE

--UC11:
INSERT INTO ADDRESS_BOOK VALUES('vennila','Raj','20Z','Madhurwada','Tamil Nadu',612345,6543217890,'anand@gmail.com','Friends')
INSERT INTO ADDRESS_BOOK VALUES('ojaswi','Raj','20Z','Visakhapatnam','Podugupalem',612345,6543217890,'anand@gmail.com','Family')

SELECT * FROM ADDRESS_BOOK

DELETE FROM ADDRESS_BOOK WHERE ID = '7'

SELECT * FROM ADDRESS_BOOK



