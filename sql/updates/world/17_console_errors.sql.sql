-- Remove Uneeded Transport objects
DELETE FROM `gameobject_template` WHERE `entry` IN(21653, 21654, 21655, 21656, 32056, 32057, 80024, 176086, 192517, 193458, 193459, 193460, 193461, 194030, 194031, 194582, 194583, 194584, 194585, 194586, 194587);

-- Update missing portal spells
UPDATE `gameobject_template` SET `data0` = 85891 WHERE `entry` = 205876;
UPDATE `gameobject_template` SET `data0` = 85892 WHERE `entry` = 205877;
UPDATE `gameobject_template` SET `data0` = 96364 WHERE `entry` = 208325;
-- Missing dbc data (custom stuffs)
DELETE FROM `spell_dbc` WHERE `Id` IN(85891,85892,96364);
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `RangeIndex`, `SchoolMask`, `SpellAuraOptionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellEquippedItemsId`, `SpellLevelsId`, `SpellTargetRestrictionsId`, `SpellInterruptsId`, `Comment`) VALUES
('85891', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '38', '0', '0', '0', '0', '0', '0', '0', 'Teleport to ??? serverside spell'),
('85892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '38', '0', '0', '0', '0', '0', '0', '0', 'Teleport to ??? serverside spell'),
('96364', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '38', '0', '0', '0', '0', '0', '0', '0', 'serverside spell for gobjid=208325');

-- Id: 59620
-- Name: Berserk IT'S NOT A SPELL PROC
DELETE FROM `spell_proc_event` WHERE `entry` = 59620;
-- Wrong Creature Class
UPDATE `creature_template` SET `unit_class` = 2 WHERE `entry` IN(49093,49107,50105,49610,50113,50108,57771,57955,58250,37615, 37617, 37619, 37621, 37632, 37654, 48677, 48710, 48744, 48753, 48776, 48784, 48814, 48936, 48951, 49043, 49262, 49292, 49295, 49300, 49308, 49310, 49324, 49325, 49326, 49328, 49330, 49504, 49505, 49507, 49508, 49509, 49510, 49511, 49512, 49609, 49664, 49665, 49744, 50095, 50098, 50103, 51088, 52393, 52395, 57292, 57294, 57409, 57462, 57463, 57808, 57818, 57820, 57822, 57824);
UPDATE `creature_template` SET `unit_class` = 4 WHERE `entry` IN (49057,49048,48715, 48791, 48803, 48804, 48941, 49047, 49056, 49293, 57293);
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (48792,37630, 48595, 48597, 48652, 48653, 48669, 48695, 48745, 48746, 48748, 48750, 48778, 48812, 49317, 49318, 49320, 49653, 49662, 57296);

-- Some wrong creature npcflag
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (37632,37630,49624,49648,48941,48936,48940,48943,48944);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` IN (46224,46225);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 57481;
UPDATE `creature_template` SET `npcflag` = 256 WHERE `entry` = 47036;
UPDATE `creature_template` SET `npcflag` = 16777216 WHERE `entry` IN (48804,48803,48913);

-- Delete Wrong difficulty_entry_1 entry
UPDATE `creature_template` SET `difficulty_entry_1`='0' WHERE `entry`='40622';
UPDATE `creature_template` SET `difficulty_entry_1`='48792' WHERE `entry`='48417';
UPDATE `creature_template` SET `difficulty_entry_1`='49093' WHERE `entry`='44404';
UPDATE `creature_template` SET `difficulty_entry_1`='49096' WHERE `entry`='40655';

UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry`='44566';

UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` IN (22515,53488);
UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 35627;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (35753,1414,45681);
UPDATE `creature` SET `spawnMask` = 1 WHERE `guid` IN (785907,785575);
UPDATE `creature` SET `spawnMask` = 0 WHERE `guid` IN (780716,780725,780726,780774);
DELETE FROM `creature` WHERE `id` = 61081;

DELETE FROM `creature_equip_template` WHERE `entry`=1;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
('1', '1', '0', '0', '0');

DELETE FROM `creature_addon` WHERE `guid` IN (204582, 204457, 162099, 209802, 209802, 169617, 169643, 169587, 196477, 196541, 196535, 196538, 196479, 196480, 196483, 196482, 195594, 195842, 196076, 195906, 196254, 196652, 196765, 196863, 196695, 195966, 196073, 205029, 205671, 205117, 205028, 205421, 162305, 162266, 162282, 162298, 162265, 162259, 197715, 197735, 197706, 197529, 205742, 205057, 205426, 203955, 204097, 31095, 5296, 212130, 212130, 188425, 188425, 763510);
INSERT INTO `creature_addon` VALUES
('204582', '2045820', '10672', '0', '257', '0', '18950'),
('204457', '2044570', '0', '0', '257', '0', '12187'),
('188425', '0', '0', '0', '1', '468', '51835 61899'),
('209802', '2098020', '0', '0', '257', '0', '57545 57550'),
('212130', '0', '0', '0', '1', '383', '76821 29266'),
('162099', '0', '0', '0', '1', '455', '12544'),
('196695', '1966950', '0', '0', '1', '0', '13886'),
('763510', '0', '0', '0', '0', '0', '16380 16380'),
('169617', '1696170', '0', '0', '257', '0', '18950'),
('169643', '1696430', '0', '0', '257', '0', '18950'),
('169587', '1695870', '0', '0', '257', '0', '18950'),
('195594', '1955940', '0', '0', '257', '0', '18950'),
('195842', '1958420', '0', '0', '257', '0', '18950'),
('196652', '1966520', '0', '0', '257', '0', '18950'),
('196765', '1967650', '0', '0', '257', '0', '18950'),
('196863', '1968630', '0', '0', '257', '0', '18950'),
('196073', '1960730', '0', '0', '257', '0', '18950'),
('205029', '2050290', '0', '0', '4097', '0', '18950'),
('205671', '2056710', '0', '0', '257', '0', '18950'),
('205117', '2051170', '0', '50331648', '257', '0', '18950'),
('205028', '2050280', '0', '50331648', '257', '0', '18950'),
('205421', '2054210', '0', '0', '4097', '0', '18950'),
('205742', '2057420', '0', '0', '258', '0', '18950'),
('205057', '2050570', '0', '0', '257', '0', '18950'),
('205426', '2054260', '0', '0', '257', '0', '18950'),
('203955', '2039550', '0', '0', '257', '0', '18950'),
('204097', '2040970', '0', '0', '257', '0', '18950'),
('31095', '310950', '0', '0', '257', '0', '18950'),
('5296', '52960', '37259', '0', '1', '0', '33900'),
('162305', '1623050', '0', '0', '257', '0', '5301'),
('162266', '1622660', '0', '0', '257', '0', '5301'),
('162282', '1622820', '0', '0', '257', '0', '5301'),
('162298', '1622980', '0', '0', '257', '0', '5301'),
('162265', '1622650', '0', '0', '257', '0', '5301'),
('162259', '1622590', '0', '0', '257', '0', '5301'),
('197715', '1977150', '0', '0', '257', '0', '5301'),
('197735', '1977350', '0', '0', '257', '0', '5301'),
('197706', '1977060', '0', '0', '257', '0', '5301'),
('197529', '1975290', '0', '0', '257', '0', '5301'),
('196477', '0', '0', '0', '1', '455', '83829'),
('196541', '0', '0', '0', '1', '455', '83829'),
('196535', '0', '0', '0', '1', '455', '83829'),
('196538', '0', '0', '0', '1', '455', '83829'),
('196479', '0', '0', '0', '1', '455', '83829'),
('196480', '0', '0', '0', '1', '455', '83829'),
('196483', '0', '0', '0', '1', '455', '83829'),
('196482', '0', '0', '0', '1', '455', '83829'),
('195966', '0', '0', '0', '1', '65', '84511'),
('196254', '1962540', '0', '0', '1', '0', '87569'),
('196076', '1960760', '0', '0', '1', '0', '88361'),
('195906', '1959060', '0', '0', '1', '0', '88361');

DELETE FROM `gameobject` WHERE `guid`=65588;
UPDATE `gameobject` SET `rotation0`='0', `rotation1`='0', `rotation2`='-0.836286', `rotation3`='0.548294' WHERE `guid`='778993';

UPDATE `creature_template` SET `npcflag`= 2 WHERE `entry` IN (22577,31991,32105,22551,26944,3098,13616,13617,14741,26377,26504,34884,39317);