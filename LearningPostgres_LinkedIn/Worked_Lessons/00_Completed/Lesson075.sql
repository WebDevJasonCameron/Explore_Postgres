-- -- Network Address Data Type 
-- ############################
/*
	1. PostgreSQL offeres data types to store IPv4, IPv6, and MAC address
	
	2. Network Address Types
	   Name 		Storage size		Notes
	   -----		------------		------------------------
	   cidr			7 or 19 bytes		IPv4 and IPv6 networks
	   inet			7 or 19 bytes 		IPv4 and IPv6 host and networks
	   macaddr		6 bytes				MAC addresses
	   macaddr8		8 bytes				MAC addresses (EUI-64 format)
	   
	   It is better to use these types instead of plain text types to 
	   store network addresses, because these types offer input error 
	   checking and specialized operators and functions  
	   
	3. Special sorting mechanism
	
	   When sorting inet or cidr data types, IPv4 addresses will always sort
	   before IPv6 addresses, including IPv4 addresses encapsulated or mapped 
	   to IPv6 addresses
	
	4. These types are bundled with indexing support and advanced functions 
	   and operator support   
*/

-- 1. Build a sample table with an IP address for IPv4 and IPv6 network type

CREATE TABLE table_netaddr(
	id SERIAL PRIMARY KEY,
	ip INET
);

-- 2. Insert data
INSERT INTO table_netaddr (ip)
VALUES
	('4.35.221.243'),
	('4.152.207.126'),
	('4.152.207.238'),
	('4.249.111.162'),
	('12.1.223.162'),
	('12.8.192.60')
;

-- 3. Lets view the data
SELECT * FROM table_netaddr;

-- 4. Analyz entries for /24 networks ip addresses
-- set_masklen function: set netmask leangth for inet value
-- Like this -> set_masklen(ip, 28)

SELECT 
	ip,
	set_masklen(ip, 24) AS inet_24
FROM table_netaddr;

-- 5. Lets convert inet to cidr type
SELECT 
	ip,
	set_masklen(ip, 24) AS inet_24,
	set_masklen(ip::cidr, 24) AS cidr_24
FROM table_netaddr;

-- 6. We can also analyze other network like /27, 28
SELECT 
	ip,
	set_masklen(ip,24) AS inet_24,
	set_masklen(ip::cidr,24) AS cidr_24,
	set_masklen(ip::cidr,27) AS cidr_27,
	set_masklen(ip::cidr,28) AS cidr_28
FROM table_netaddr;














