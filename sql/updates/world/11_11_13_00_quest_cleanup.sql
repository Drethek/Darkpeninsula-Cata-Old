-- The Replacements
DELETE FROM `gameobject` WHERE `id`=201603;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(201603, 648, 1, 1, -8153.8, 1342.73, 22.7424, 5.96035, 0, 0, 0.160716, -0.987001, 300, 0, 1),
(201603, 648, 1, 1, -8084.37, 1481.35, 8.83228, 0.992712, 0, 0, 0.476225, 0.879324, 300, 0, 1),
(201603, 648, 1, 1, -8092.04, 1514.55, 8.99208, 1.82131, 0, 0, 0.789905, 0.613229, 300, 0, 1),
(201603, 648, 1, 1, -8248.27, 1513.22, 41.9297, 3.0858, 0, 0, 0.999611, 0.0278931, 300, 0, 1),
(201603, 648, 1, 1, -8235.23, 1490.32, 40.7525, 5.13569, 0, 0, 0.542785, -0.839872, 300, 0, 1),
(201603, 648, 1, 1, -8223.74, 1469.27, 39.6957, 5.46163, 0, 0, 0.399324, -0.91681, 300, 0, 1),
(201603, 648, 1, 1, -8263.78, 1459.77, 41.9269, 2.78735, 0, 0, 0.984355, 0.176199, 300, 0, 1),
(201603, 648, 1, 1, -8281.33, 1464.33, 43.1104, 2.8973, 0, 0, 0.992549, 0.121842, 300, 0, 1),
(201603, 648, 1, 1, -8252.64, 1437.37, 40.2229, 2.72373, 0, 0, 0.978254, 0.207413, 300, 0, 1),
(201603, 648, 1, 1, -8234.91, 1443.77, 39.9069, 6.08917, 0, 0, 0.0968577, -0.995298, 300, 0, 1),
(201603, 648, 1, 1, -8234.02, 1516.53, 40.6426, 1.73021, 0, 0, 0.761162, 0.648562, 300, 0, 1),
(201603, 648, 1, 1, -8260.23, 1538.11, 41.0158, 2.97899, 0, 0, 0.996697, 0.081212, 300, 0, 1),
(201603, 648, 1, 1, -8322.03, 1530.43, 47.4049, 2.97899, 0, 0, 0.996697, 0.081212, 300, 0, 1),
(201603, 648, 1, 1, -8363.38, 1502.63, 46.2952, 0.469642, 0, 0, 0.232669, 0.972556, 300, 0, 1),
(201603, 648, 1, 1, -8330.75, 1500.44, 46.4421, 5.52368, 0, 0, 0.37069, -0.928756, 300, 0, 1);

-- Clenup
DELETE FROM `playercreateinfo_action` WHERE `action`='9';