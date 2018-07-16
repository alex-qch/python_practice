BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `music` (
	`id`	INTEGER,
	`file_id`	TEXT,
	`right_answer`	TEXT,
	`wrong_answers`	TEXT
);
INSERT INTO `music` VALUES (1,NULL,'Cпички','Ночь,Баррикады,Вбий мене,Время идти,Здесь и сейчас,Иллюзии,Ночь
');
INSERT INTO `music` VALUES (2,NULL,'Баррикады','Cпички,Баррикады,Вбий мене,Время идти,Здесь и сейчас,Иллюзии,Ночь
');
INSERT INTO `music` VALUES (3,NULL,'Вбий мене','Cпички,Ночь,Вбий мене,Время идти,Здесь и сейчас,Иллюзии,Ночь
');
INSERT INTO `music` VALUES (4,NULL,'Время идти','Cпички,Ночь,Баррикады,Время идти,Здесь и сейчас,Иллюзии,Ночь
');
INSERT INTO `music` VALUES (5,NULL,'Здесь и сейчас','Cпички,Ночь,Баррикады,Вбий мене,Здесь и сейчас,Иллюзии,Ночь
');
INSERT INTO `music` VALUES (6,'','Иллюзии','Cпички,Ночь,Баррикады,Вбий мене,Время идти,Иллюзии,Ночь
');
INSERT INTO `music` VALUES (7,NULL,'Колись настанут часи','Cпички,Ночь,Баррикады,Вбий мене,Время идти,Здесь и сейчас,Ночь');
INSERT INTO `music` VALUES (8,NULL,'Ночь','Cпички,Ночь,Баррикады,Вбий мене,Время идти,Здесь и сейчас,Иллюзии
');
COMMIT;
