-- [Quest] [Horde] Reinforcements denied (27855)
SET @NPC := 46775; -- Marshtide Mage
SET @QUEST := 27855; -- Reinforcements denied

-- Fix required races
UPDATE quest_template SET RequiredRaces=946 WHERE entry=@QUEST;

-- Fix creature stats
UPDATE creature_template SET minlevel=53, maxlevel=54, faction_A=11, faction_H=11, mindmg=65, maxdmg=91, attackpower=99, baseattacktime=2000, unit_class=8, minrangedmg=54, maxrangedmg=80, rangedattackpower=23, AIName='SmartAI' WHERE entry=@NPC;

-- Add Npc SmartAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@NPC, 0, 0, 0, 1, 0, 100, 1, 0, 1000, 0, 0, 11, 79865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - On Respawn - Cast Frost Armor'),
(@NPC, 0, 1, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 87116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - On Aggro - Ritual of Summoning - Summon Portal'),
(@NPC, 0, 2, 0, 32, 0, 100, 0, 0, 1500, 5000, 5000, 11, 6136, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - On Damage Taken - Cast Chilled'),
(@NPC, 0, 3, 0, 9, 0, 100, 0, 0, 30, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - Stop moving when in range'),
(@NPC, 0, 4, 0, 9, 0, 100, 0, 31, 60, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - Moving when not in range'),
(@NPC, 0, 5, 0, 3, 0, 100, 0, 5, 100, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - Stop autoattack when has mana'),
(@NPC, 0, 6, 0, 3, 0, 100, 0, 0, 5, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - Start autoattack when has low mana'),
(@NPC, 0, 7, 0, 9, 0, 100, 0, 0, 30, 3000, 3000, 11, 79858, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Marshtide Mage - Cast Frostbolt');

-- Add missing npc
INSERT INTO creature VALUES
(NULL, @NPC, 0, 1, 1, 0, 0, -10198.493164, -3638.480469, 22.874939, 1.290012, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10206.476563, -3594.639404, 22.417385, 1.918331, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10265.938477, -3616.666016, 23.842728, 3.972934, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10275.887695, -3667.418457, 22.045830, 4.339715, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10301.053711, -3648.611084, 22.131643, 2.088762, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10327.910156, -3609.008789, 20.936356, 2.639327, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10333.833008, -3637.044922, 22.178776, 5.285334, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10226.708008, -3624.034912, 23.932629, 5.766783, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, @NPC, 0, 1, 1, 0, 0, -10255.949219, -3687.903076, 23.766905, 4.539987, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);