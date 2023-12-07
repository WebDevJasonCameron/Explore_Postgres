# Log

## 2023 12 07 | 

Learn about Upsert: 
```
INSERT INTO t_tags (tag) 
VALUES 
	('Pen')
ON CONFLICT (tag)
DO 
	UPDATE SET
		tag = EXCLUDED.tag,
		update_date = NOW()
;
```

---

## 2023 12 06 | Start Log

Today the lsns are focused on select, update and delete a record.  Simple stuff.  I also dl all the resources and placed them in their sections.
i
