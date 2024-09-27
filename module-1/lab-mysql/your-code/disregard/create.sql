USE lab_mysql;

CREATE TABLE cars (vin VARCHAR(20), manufacturer VARCHAR(16), model VARCHAR(20), year INT(4), color VARCHAR(8));
CREATE TABLE customers (cust_id SMALLINT(8), name VARCHAR(32), phone VARCHAR(16), email VARCHAR(32), address VARCHAR(32), city VARCHAR(16), state VARCHAR(16), country VARCHAR(16), postal SMALLINT(5));
CREATE TABLE salespersons (staff_id SMALLINT(5), name VARCHAR(32), store VARCHAR(16));
CREATE TABLE invoices (inv_id INT(9), date DATE, car SMALLINT(4), customer SMALLINT(4), salesperson SMALLINT(4));
