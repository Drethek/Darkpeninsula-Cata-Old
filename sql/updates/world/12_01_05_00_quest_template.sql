-- [Quest] [Alliance/Horde] Can't Take It With Them (27599)
SET @NPC := 46014; -- Deceased Bogpaddle Privateer
SET @ITEM := 61923; -- Steamwheedle Ditty Bag
SET @GOSSIP := 46014;
SET @QUEST := 27599; -- Can't Take It With Them

-- Update creature_template
UPDATE `creature_template` SET `IconName`='', `gossip_menu_id`=@GOSSIP, `npcflag`=`npcflag`|1, `AIName`='SmartAI', `faction_A`=474, `faction_H`=474 WHERE entry=@NPC;

-- Add gossip_menu
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP, @GOSSIP);

-- Add gossip_menu_option
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP;
INSERT INTO `gossip_menu_option` VALUES
(@GOSSIP, 0, 0, '<Collect Steamwheedle Ditty Bag from corpse>', 1, 1, 0, 0, 0, 0, 0, '');

-- Add npc_text
DELETE FROM `npc_text` WHERE id=@GOSSIP;
INSERT INTO `npc_text` VALUES
(@GOSSIP, 'Here lies the corpse of one of the Bogpaddle Privateers.', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 12340);

-- Add Npc SmartAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@NPC, 0, 0, 1, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 56, @ITEM, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Deceased Bogpaddle Privateer - On Gossip Select - Steamwheedle Ditty Bag'),
(@NPC, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Deceased Bogpaddle Privateer - On Gossip Select - Forced Despawn');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` VALUES
(15, @GOSSIP, 0, 0, 9, @QUEST, 0, 0, 0, '', 'Only show gossip if player has quest Can''t Take It With Them');

-- Add creature
DELETE FROM `creature` WHERE id=46014;
INSERT INTO `creature` VALUES
(NULL, 46014, 0, 1, 1, 0, 0, -10001.574219, -4367.356934, -1.458951, 3.762379, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10037.939453, -4413.301270, -1.458951, 2.779845, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10160.700195, -4369.919922, -2.112490, 4.656820, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10048.599609, -4351.850098, -0.579040, 1.221730, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -9935.745117, -4310.993652, -1.459221, 0.863473, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -9946.431641, -4364.796875, -1.459221, 4.499870, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -9975.350586, -4409.664551, -1.459221, 4.270532, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10004.618164, -4425.214355, -1.459221, 2.204936, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10048.207031, -4351.779297, -1.458951, 1.322145, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10039.882813, -4327.474609, -1.458951, 1.294657, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -9927.381836, -4279.140625, -1.383010, 5.474548, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -10032.418945, -4395.364746, -1.458951, 4.892566, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(NULL, 46014, 0, 1, 1, 0, 0, -9993.735352, -4348.283203, -1.458951, 5.554655, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);