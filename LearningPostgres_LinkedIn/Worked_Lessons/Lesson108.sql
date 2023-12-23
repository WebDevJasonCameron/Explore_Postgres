-- FOREIGN KEY CONSTRAINT
-- ##########################
/*	
	1. Forign key play a vital most important role in PG
	
	2. A Foreign key is a column or a group of columns in a table that ref
	   the primary key of another table
	   
	3. FK is defined as the first table that has ref to the PK of the 
	   Second table
	   
	4. CREATE TABLE table_name (
	       column_name data_type PRIMARY KEY,
		   ...
		   ...
		   FOREIGN KEY (column_name_2_or_something) REFERENCES child_table_name (column_name_from_2_table)
	   );
*/
