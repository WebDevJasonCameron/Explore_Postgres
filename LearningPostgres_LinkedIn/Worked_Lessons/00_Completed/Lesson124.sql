-- 12. Listing all Seq
SELECT relname sequence_name
FROM pg_class
WHERE
	RELKIND= 'S';
