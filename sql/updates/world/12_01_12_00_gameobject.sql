-- [Q] [Alliance] Capturing Memories (25767)
SET @QUEST := 25767; -- Capturing Memories

-- Set alliance quest
UPDATE quest_template SET RequiredRaces=2098253, OfferRewardText='Wonderful! Arcanist Valdurian will be most pleased.' WHERE  entry =@QUEST;

-- Replaced removed gameobject with current
UPDATE gameobject SET id=203214 WHERE id IN (203216, 203215);




-- [Q] [Horde/Alliance] Sunken Treasure (26051)
SET @GAMEOBJECT := 2712; -- Calcified Elven Gem
SET @ITEM := 4492; -- Elven Gem
SET @QUEST := 26051; -- Sunken Treasure

-- Add missing gameobject
DELETE FROM gameobject WHERE id=@GAMEOBJECT;
INSERT INTO gameobject VALUES
(NULL, @GAMEOBJECT, 0, 1, 1, -2288.830078, -1580.324219, -36.514854, 1.171316, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2273.065186, -1555.013428, -39.198521, 2.310143, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2302.310791, -1539.221558, -37.909489, 2.389469, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2299.779541, -1509.244385, -37.237675, 1.498041, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2281.551270, -1516.010010, -37.474777, 0.125165, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2254.230957, -1523.552979, -38.731178, 5.833438, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2226.433350, -1527.915405, -39.518024, 5.911978, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2190.384277, -1533.825073, -40.791348, 5.911978, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2174.241943, -1567.262085, -47.480679, 4.995418, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2218.800537, -1573.902588, -55.186497, 3.215705, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2263.622314, -1613.693726, -27.141064, 4.631768, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2297.812012, -1642.789307, -28.724541, 4.002664, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2344.106201, -1676.323853, -33.483273, 4.122044, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2367.976318, -1709.086182, -31.154253, 5.414025, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2289.107178, -1718.004883, -64.935387, 0.213119, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2250.343994, -1740.347168, -66.033607, 5.930819, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2200.225098, -1747.956055, -64.741165, 1.191724, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2204.764404, -1708.864624, -64.741447, 1.690452, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2228.374756, -1712.444458, -64.741646, 4.177026, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2251.332520, -1739.895996, -66.055840, 2.738964, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2285.469482, -1717.931152, -65.001572, 3.098677, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2336.360596, -1653.976685, -31.239594, 1.732869, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2223.840088, -1605.255005, -54.868103, 0.578333, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2157.882813, -1648.867920, -44.557838, 5.498858, 0, 0, 0, 0, 300, 100, 1),
(NULL, @GAMEOBJECT, 0, 1, 1, -2152.672119, -1696.488892, -46.041035, 4.466066, 0, 0, 0, 0, 300, 100, 1);

-- Add missing loot
DELETE FROM gameobject_loot_template WHERE item=@ITEM;
INSERT INTO gameobject_loot_template VALUES
(@GAMEOBJECT, @ITEM, -100, 1, 0, 1, 1);