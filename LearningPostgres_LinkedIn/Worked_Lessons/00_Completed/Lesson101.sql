-- How to create a TYPE if not exists using PL/pgSQL

DO
$$
BEGIN
	IF NOT EXISTS (SELECT *
				  		FROM pg_type typ
				  			INNER JOIN pg_namespace nsp
				  				ON nsp.oid = typ.typnamespace
				  		WHERE nsp.nspname = current_schema()
				  			AND typ.typname = 'ai') 
					THEN CREATE TYPE ai
						AS (a TEXT,
						   i INTEGER);
	END IF;
END;
$$
LANGUAGE plpgsql;


