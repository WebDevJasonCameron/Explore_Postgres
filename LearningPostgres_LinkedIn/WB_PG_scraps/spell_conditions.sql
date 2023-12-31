/*		(1)

-- Spells -> Spell Tags <- Tags

SELECT *
FROM spell_tags;

SELECT * 
FROM tags;

*/
-------------------------------------------------------------
SELECT 
	s.name AS "Name",
	s.school AS "Arcane School",
	
	st.spell_tag_id AS "Tag ID",
	
	t.name AS "Tag Name"
	
FROM spells s
INNER JOIN spell_tags st ON st.spells_spell_id = s.spell_id 
INNER JOIN tags t ON t.tag_id = st.tags_tag_id;

/* USED To Fix st.spells_item_id to st.spells_spell_id -- NOT NEEDED NOW  */
ALTER TABLE spell_tags 
RENAME COLUMN spells_item_id TO spells_spell_id;
-------------------------------------------------------------
/*		(2)

-- Spells -> Spell Conditions <- Conditions

SELECT *
FROM spell_conditions;

SELECT * 
FROM conditions;

*/
-------------------------------------------------------------
SELECT 
	s.name AS "Name",
	s.school AS "Arcane School",
	
	sc.spell_condition_id AS "The condition ID",
	
	c.condition AS "Condition"
	
FROM spells s
INNER JOIN spell_conditions sc ON sc.spells_spell_id = s.spell_id
INNER JOIN conditions c ON c.condition_id = sc.conditions_condition_id;

-------------------------------------------------------------
/*		(3)

-- Spells -> Spell DamageTypes <- DamageTypes

SELECT *
FROM spell_damagetypes;

SELECT * 
FROM damagetypes;

*/
-------------------------------------------------------------
SELECT 
	s.name AS "Name",
	s.school AS "Arcane School",
	
	sd.spell_damagetype_id AS "The DamageType ID",
	
	d.damage AS "Damage"
	
FROM spells s
INNER JOIN spell_damagetypes sd ON sd.spells_spell_id = s.spell_id
INNER JOIN damagetypes d ON d.damagetype_id = sd.damagetypes_damagetype_id;

-------------------------------------------------------------
/*		(4)

-- Spells -> Spell Classes <- Classes

SELECT *
FROM spell_classes;

SELECT * 
FROM rpg_classes;

*/
-------------------------------------------------------------
SELECT 
	s.name AS "Name",
	s.school AS "Arcane School",
	
	sc.classes_class_id AS "Class ID",
	
	c.class_name AS "Class Name"
	
FROM spells s
INNER JOIN spell_classes sc ON sc.spells_spell_id = s.spell_id
INNER JOIN rpg_classes c ON c.class_id = sc.classes_class_id;


-------------------------------------------------------------
-------------------      ALL			---------------------
-------------------------------------------------------------

SELECT 
	s.name AS "Name",
	s.school AS "Arcane School",
		
	t.name AS "Tag Name",
	con.condition AS "Condition",
	d.damage AS "Damage",
	c.class_name AS "Class Name"

FROM spells s

LEFT JOIN spell_tags st ON st.spells_spell_id = s.spell_id 
LEFT JOIN tags t ON t.tag_id = st.tags_tag_id

LEFT JOIN spell_conditions scon ON scon.spells_spell_id = s.spell_id
LEFT JOIN conditions con ON con.condition_id = scon.conditions_condition_id

LEFT JOIN spell_damagetypes sd ON sd.spells_spell_id = s.spell_id
LEFT JOIN damagetypes d ON d.damagetype_id = sd.damagetypes_damagetype_id

LEFT JOIN spell_classes sc ON sc.spells_spell_id = s.spell_id
LEFT JOIN rpg_classes c ON c.class_id = sc.classes_class_id;










