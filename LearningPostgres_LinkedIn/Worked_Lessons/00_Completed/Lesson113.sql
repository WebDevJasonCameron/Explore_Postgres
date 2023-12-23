-- ADD FOREIGN KEY
/*
ALTER TABLE tablename
ADD CONSTRAINT cname FOREIGN KEY (columname) REFERENCES table2_name (columname)
*/

ALTER TABLE t_products
ADD CONSTRAINT t_products_supplier_id_fkey
	FOREIGN KEY (supplier_id) 
	REFERENCES t_suppliers (supplier_id);
	
