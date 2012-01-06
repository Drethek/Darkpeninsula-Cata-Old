-- [Quest] [Alliance/Horde] Stranglethorn Fever (26597)
SET @NPC_DOCTOR := 1449; -- Witch Doctor Unbagwa
SET @NPC_MOOK := 1514; -- Mokk the Savage
SET @ITEM := 2797; -- Heart of Mokk
SET @GOSSIP := 1449;
SET @QUEST := 26597; -- Stranglethorn Fever

-- Update creature_template
UPDATE creature_template SET gossip_menu_id=@GOSSIP, AIName='SmartAI' WHERE entry=@NPC_DOCTOR;
UPDATE creature_template SET minlevel=32, maxlevel=32, faction_A=72, faction_H=72, mindmg=50, maxdmg=65, attackpower=115, family=9, minrangedmg=33, maxrangedmg=50, AIName='SmartAI' WHERE entry=@NPC_MOOK; 

-- Add gossip_menu
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP, @GOSSIP);

-- Add gossip_menu_option
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP;
INSERT INTO `gossip_menu_option` VALUES
(@GOSSIP, 0, 0, 'I know you''re the only one capable of evoking Mook the Savage. I need it''s heart to treat a friend, please, do appear, so I can kill him and save my friend.', 1, 1, 0, 0, 0, 0, 0, '');

-- Add npc_text
DELETE FROM `npc_text` WHERE id=@GOSSIP;
INSERT INTO `npc_text` VALUES
(@GOSSIP, 'Hello, I''m Doctor Unbagwa, the best expert of gorilla of Azeroth. I can get healing substances from they guts. Don''t you think their are an interesting race? ', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 12340);

-- Add Npc SmartAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_DOCTOR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_DOCTOR AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@NPC_DOCTOR, 0, 0, 1, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_DOCTOR, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, @NPC_MOOK, 6, 30000, 0, 0, 0, 8, 0, 0, 0, -13729.104492, -31.894688, 46.102547, 2.562651, 'Summon Mokk the Savage');

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_MOOK;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_MOOK AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@NPC_MOOK, 0, 0, 0, 0, 0, 100, 0, 1000, 1500, 13000, 15000, 11, 81219, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Battle Shout'),
(@NPC_MOOK, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Enrage at 30% health'),
(@NPC_MOOK, 0, 2, 0, 0, 0, 100, 0, 2000, 3000, 8000, 10000, 11, 83378, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Stomp');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` VALUES
(15, @GOSSIP, 0, 0, 9, @QUEST, 0, 0, 0, '', 'Only show gossip if player has quest Stranglethorn Fever');