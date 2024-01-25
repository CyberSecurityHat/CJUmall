CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(50) NOT NULL,
	p_name VARCHAR(100),
	p_unitPrice  INTEGER,
	p_description TEXT,
   	p_category VARCHAR(100),
	p_manufacturer VARCHAR(100),
	p_unitsInStock LONG,
	p_condition VARCHAR(100),
	p_fileName  VARCHAR(100),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

select * from product;

desc product;