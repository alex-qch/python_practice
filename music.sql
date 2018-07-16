BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `music` (
	`id`	INTEGER,
	`file_id`	TEXT,
	`right_answer`	TEXT,
	`wrong_answers`	TEXT
);
INSERT INTO `music` VALUES (1,'Eraser','Eraser','Castle On The Hill,Shape Of You,');
INSERT INTO `music` VALUES (2,'Castle On The Hill','Castle On The Hill','Eraser,Shape Of You,Dive,Perfect,Galway Gril');
INSERT INTO `music` VALUES (3,'Shape Of You','Shape Of You','Eraser,Castle On The Hill,Dive,Perfect,Galway Gril');
INSERT INTO `music` VALUES (4,'DIve','DIve','Eraesr,Castle On The Hill,Shape Of You,Perfect,Galway Gril');
INSERT INTO `music` VALUES (5,'Perfect','Perfect','Eraser,Castle On The Hill,Shape Of You,Dive,Galway Gril');
INSERT INTO `music` VALUES (6,'Galway Girl','Galway Girl','Eraser,Castle On The Hill,Shape Of You,Dive,Perfect');
COMMIT;
