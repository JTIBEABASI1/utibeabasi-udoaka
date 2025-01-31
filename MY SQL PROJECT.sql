--creating customers table
CREATE TABLE customers(
	customer_id VARCHAR (6) PRIMARY KEY,
	company_name VARCHAR (60),
	contact_name VARCHAR (30),
	contact_title VARCHAR (50),
	city VARCHAR (35),
	country VARCHAR (35)
);

--creating category table
CREATE TABLE category(
	category_id INT PRIMARY KEY ,
	category_name VARCHAR (35),
	category_description VARCHAR (200)
);


--creating shippers table
CREATE TABLE shippers(
	shippers_id INT PRIMARY KEY,
	company_name VARCHAR (25)
);


--creating employees table
CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR (35),
	Title VARCHAR (35),
	city VARCHAR (15),
	country VARCHAR (10),
	reports_to INT
);


--creating products table
CREATE TABLE products(
	product_id INT PRIMARY KEY,
	product_name VARCHAR (50),
	quantityPerUnit VARCHAR (150),
	unit_per_price DECIMAL (10,2),
	Discounted INT ,
	category_id INT REFERENCES category(category_id)
);

 

--creating orders table
CREATE TABLE orders(
	order_id INT PRIMARY KEY,
	customer_id VARCHAR (6) REFERENCES customers(customer_id),
	employee_id INT REFERENCES employees(employee_id),
	order_date DATE,
	required_date DATE,
	shipped_date DATE,
	shippers_id INT REFERENCES shippers(shippers_id) ,
	freight DECIMAL (10,2)
);


--creating order detail table
CREATE TABLE order_detail(
	order_id INT REFERENCES orders(order_id),
	product_id INT REFERENCES products(product_id) ,
	quantity INT,
	discount DECIMAL (10,2)
);


