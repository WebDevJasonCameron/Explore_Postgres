SELECT *
FROM spell_conditions;

SELECT * 
FROM conditions;

-------------------------------------------------------------
SELECT 
	s.name AS "Name",
	s.school AS "Arcane School",
	
	sc.spell_condition_id AS "The condition ID",
	
	c.condition AS "Condition"
	
FROM spells s
INNER JOIN spell_conditions sc ON sc.spells_spell_id = s.spell_id
INNER JOIN conditions c ON c.condition_id = sc.conditions_condition_id;




