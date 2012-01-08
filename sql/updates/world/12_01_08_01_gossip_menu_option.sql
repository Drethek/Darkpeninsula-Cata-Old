-- [Q] [Horde/Alliance] Heroes of Darrowshire (27388)
SET @NPC := 11063; -- Carlin Redpath <The Argent Crusade>
SET @ITEM := 13202; -- Extended Annals of Darrowshire
SET @GOSSIP := 3864;
SET @QUEST := 27388; -- Heroes of Darrowshire

-- Add SAI to creature
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;

-- Add a gossip_menu_option
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP;
INSERT INTO `gossip_menu_option` VALUES
(@GOSSIP, 0, 0, 'Chromie needs of the relics, please give me Extended Annals of Darrowshire', 1, 1, 0, 0, 0, 0, 0, '');

-- Add SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@NPC, 0, 0, 1, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Carlin Redpath <The Argent Crusade> - On Gossip Select - Close Gossip'),
(@NPC, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 56, @ITEM, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Carlin Redpath <The Argent Crusade> - On Link From Gossip Select - Add Item Extended Annals of Darrowshire');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` VALUES
(15, @GOSSIP, 0, 0, 9, @QUEST, 0, 0, 0, '', 'Only show gossip if player has quest Heroes of Darrowshire'),
(15, @GOSSIP, 0, 0, 26, @ITEM, 0, 0, 0, '', 'Only show gossip if player not has Extended Annals of Darrowshire');