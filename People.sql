DROP DATABASE IF EXISTS JTeam;
CREATE DATABASE JTeam;
USE JTeam;

DROP TABLE IF EXISTS People;
CREATE TABLE People(
peopleID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
firstName VARCHAR(20) NOT NULL,
lastName VARCHAR(20) NOT NULL,
birthDate DATE DEFAULT '1982-01-02',
street VARCHAR(50),
city VARCHAR(40),
state VARCHAR(50),
zip VARCHAR(10) NULL,
phone VARCHAR(15),
email VARCHAR(50) NULL,
startDate DATE NOT NULL,
endDate DATE,
pType VARCHAR(10) NOT NULL
);

Use Jteam;
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (100,"Brittany","Rivera","1994-02-16","P.O. Box 451, 5265 Lacinia Rd.","Kerikeri","North Island","771649","(259) 142-1209","Sed.eget@consequatpurus.edu","2019-12-04","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (101,"Noelle","Martinez","1983-11-03","Ap #998-8608 Cum Rd.","Tranås","F","1583","(144) 790-5682","sollicitudin.orci@velmauris.edu","2018-11-24","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (102,"Boris","Matthews","1999-12-02","Ap #992-2159 Enim. Street","Alexandra","SI","C1P 3B2","(444) 977-0553","Mauris.non@nequeMorbiquis.edu","2018-05-13","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (103,"Colin","Morrison","1983-03-28","Ap #813-9061 Aliquet. Rd.","Poznań","Wielkopolskie","9616","(946) 147-2333","lorem@mauris.ca","2018-08-12","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (104,"Dakota","Melendez","1992-01-30","P.O. Box 297, 8076 Id Av.","Polpenazze del Garda","LOM","30604","(311) 473-8765","Etiam.ligula@pharetra.ca","2019-08-10","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (105,"Freya","Taylor","1984-02-25","Ap #251-7679 In, Road","Karacabey","Bursa","72736","(446) 485-3953","malesuada.fames@laciniaatiaculis.ca","2019-10-28","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (106,"Chaney","Lara","2000-12-18","P.O. Box 519, 1847 Habitant Rd.","Patarrá","San José","00381","(822) 531-9920","ullamcorper@tristique.com","2019-07-26","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (107,"Talon","Roberson","1996-09-14","9091 Lorem, Street","Oosterhout","Noord Brabant","797134","(207) 271-3295","ligula.elit.pretium@nonluctus.net","2018-06-25","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (108,"Maggie","Simmons","1996-02-17","665-4438 In, Av.","Taunusstein","Hesse","L3R 1X3","(730) 859-4287","a@eu.org","2018-11-09","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (109,"Velma","Avila","1991-06-04","7961 Phasellus St.","Berlin","BE","57012","(997) 934-8490","ullamcorper.Duis@amet.co.uk","2019-08-19","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (110,"Raya","Miranda","1998-10-19","Ap #291-4889 Est Street","Melipilla","Metropolitana de Santiago","6178","(684) 246-8605","est.ac@auctorveliteget.com","2019-10-04","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (111,"Xaviera","Cardenas","1998-04-21","668-4243 Nunc Road","Radom","MA","526233","(424) 479-5902","rhoncus.Proin@consequat.co.uk","2018-09-22","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (112,"Raja","Buckley","1993-07-21","P.O. Box 371, 1935 Ac Avenue","Gboko","BE","31094","(526) 685-0957","Donec@lobortisultricesVivamus.co.uk","2018-03-20","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (113,"Chester","Sexton","1990-09-30","Ap #492-1267 At, Rd.","Lagos","LA","13219","(470) 938-1606","rutrum.lorem.ac@tortordictumeu.net","2018-04-14","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (114,"Calvin","Brown","1982-07-18","160-2059 Vitae, Avenue","Vienna","Vienna","4461","(329) 874-0971","rutrum@vitae.net","2019-02-28","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (115,"Scott","Harrington","2000-06-28","265-9593 Id St.","Galway","C","76310","(224) 537-3398","felis.orci@Nuncmauris.co.uk","2018-08-18","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (116,"Xena","Mclean","1990-12-06","2620 Et, Rd.","Castello dell'Acqua","LOM","149429","(883) 349-0030","amet.risus@purus.edu","2018-07-29","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (117,"Emi","Romero","1999-04-07","189-2776 Sem St.","Gillette","Wyoming","84169","(113) 135-1074","sagittis@semeget.co.uk","2019-09-23","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (118,"Winter","Mendez","1985-01-31","273-1939 Aliquet. Road","Bremerhaven","Bremen","833085","(352) 775-6916","enim.Mauris@velitSed.net","2019-11-01","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (119,"Jared","Cline","1980-06-06","P.O. Box 631, 944 Urna Street","Alcalá de Henares","MA","8120","(551) 489-3537","nunc.risus@blandit.net","2019-07-15","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (120,"Olga","Wise","1990-08-25","7912 In, Rd.","Vaughan","Ontario","93843","(397) 420-5177","auctor.quis.tristique@est.org","2018-05-30","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (121,"Tanner","Norton","1994-08-25","978-3001 Mi, Rd.","Veere","Zeeland","20619","(305) 969-9456","dictum.magna.Ut@Crasconvallisconvallis.com","2019-05-08","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (122,"Harrison","Hooper","1983-09-25","3672 Cras Road","Vaughan","Ontario","63003","(734) 673-3995","montes.nascetur.ridiculus@eleifend.co.uk","2019-08-01","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (123,"Amery","Mcintosh","1987-06-06","389-1288 Pede. Av.","Thane","MH","67368","(241) 904-5240","ac@Aliquamfringilla.co.uk","2019-06-10","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (124,"Fritz","Shepherd","1982-02-12","Ap #833-3385 Cras St.","Okene","KO","8536","(774) 741-4435","amet.consectetuer.adipiscing@massa.com","2019-04-11","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (125,"Clayton","Mckenzie","1996-07-25","P.O. Box 240, 2718 Mauris Ave","Quesada","A","34-465","(599) 139-9802","penatibus@milaciniamattis.org","2019-06-05","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (126,"Erin","Chang","1990-07-22","P.O. Box 997, 4384 Feugiat Road","Lille","Antwerpen","5754","(301) 579-1010","augue.ut.lacus@Integersemelit.com","2018-01-20","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (127,"Kaitlin","Goff","1980-07-16","414-4876 Vel Rd.","Burnaby","British Columbia","82387","(890) 786-6636","malesuada.fames@utsemNulla.co.uk","2018-08-18","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (128,"Susan","Merrill","1980-05-01","3421 Morbi Rd.","Northumberland","Ontario","6820","(422) 221-5086","Curabitur@Etiamvestibulummassa.com","2019-02-17","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (129,"Drew","Ross","1980-09-11","Ap #684-7636 Aenean Rd.","Gerpinnes","Henegouwen","645708","(280) 132-1197","tempus.lorem@nibh.edu","2018-12-30","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (130,"Victoria","Glenn","1994-09-10","167-253 Neque. Av.","Berlin","Berlin","4263","(229) 803-1774","orci.Donec@tristiqueneque.co.uk","2018-06-05","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (131,"Armando","Bailey","1988-06-22","715-8127 Quisque Avenue","Mandurah","Western Australia","61618","(851) 214-2102","ut.molestie.in@tinciduntduiaugue.co.uk","2018-08-28","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (132,"Tucker","Pate","1999-08-07","5526 Elementum Rd.","Profondeville","NA","P5S 3N1","(633) 769-7912","molestie.pharetra.nibh@mauris.net","2019-06-11","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (133,"Adrienne","Saunders","1987-02-25","P.O. Box 585, 588 Neque St.","Quinte West","Ontario","19981","(822) 119-7675","Nulla.dignissim.Maecenas@vulputatelacusCras.ca","2018-10-20","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (134,"Darius","Collins","1993-05-20","5374 Aliquet, Ave","Cork","M","911107","(163) 293-2911","amet.metus@libero.com","2019-03-18","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (135,"Ursula","Aguirre","1986-01-06","250-778 Nibh. St.","Nothomb","Luxemburg","56216","(220) 314-0518","ultrices.Duis@Aliquamnec.edu","2019-11-22","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (136,"Larissa","Dillard","1999-03-11","P.O. Box 978, 4241 Malesuada St.","Salem","OR","35776","(782) 520-9959","metus.Aliquam.erat@ipsum.com","2018-04-01","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (137,"Elliott","Hunt","1985-07-16","Ap #707-3175 Erat. Road","Siedlce","Mazowieckie","82001","(802) 604-4440","mi.felis.adipiscing@pede.co.uk","2019-07-19","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (138,"Sharon","Cantu","1995-09-04","4704 Dolor Rd.","Ribeirão das Neves","Minas Gerais","4739 RW","(874) 185-1898","tempus@ultricesDuis.ca","2019-01-17","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (139,"Maile","Andrews","1986-06-13","143-2189 Elit Rd.","Queenstown","SI","66906","(489) 743-9771","Donec.consectetuer@odiosagittis.ca","2018-03-02","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (140,"Linus","Quinn","1992-12-06","P.O. Box 794, 3368 Integer Road","San José de Maipo","Metropolitana de Santiago","24469","(134) 374-3178","arcu@metusvitaevelit.co.uk","2018-01-08","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (141,"Emily","Wilcox","1994-11-06","Ap #721-3546 Velit Street","Georgia","GA","6032","(965) 409-6413","in.molestie@porttitoreros.net","2018-10-24","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (142,"Martena","Murray","1989-03-09","5399 Conubia Street","Kędzierzyn-Koźle","OP","0796 DU","(295) 455-5128","purus.mauris.a@et.net","2019-02-11","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (143,"Damon","Conrad","1999-01-08","426-8879 Risus. Road","Şereflikoçhisar","Ank","798659","(155) 686-7530","non.sapien@lectussit.ca","2019-07-15","Intern");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (144,"Urielle","Everett","2000-07-10","P.O. Box 175, 3345 Conubia St.","Gualdo Tadino","Umbria","44353","(514) 731-8379","Aliquam.vulputate.ullamcorper@odioNam.ca","2018-01-09","Reporter");
INSERT INTO People (peopleID,firstName,lastName,birthDate,street,city,state,zip,phone,email,startDate,pType) VALUES (145,"Vinit","Shah","1999-02-24","N. Tryon St.","Charlotte","NC","28048","(704) 776-1691","vinitshah@gmail.com","2018-01-09","Reporter");

UPDATE People
SET email = "vinitshah@yahoo,com", pType = "Intern"
WHERE peopleID = 145;

DELETE
FROM People
WHERE peopleID = 145;

CREATE INDEX People_peopleID_ix ON People (peopleID);
CREATE INDEX People_firstName_ix ON People (firstName);
CREATE INDEX People_lastName_ix ON People (lastName);
CREATE INDEX People_pType_ix ON People(pType);
DROP INDEX People_pType_ix ON People;

# Procedure to list all the entries in the table
DROP PROCEDURE IF EXISTS ListPeople;
DELIMITER //
CREATE 
	DEFINER = CURRENT_USER
    PROCEDURE ListPeople()
    BEGIN
		SELECT * FROM People;
END //
DELIMITER ;

# Calling the Procedure
CALL ListPeople();


USE jteam;
SELECT * FROM People WHERE pType = "Intern";

SELECT COUNT(pType) FROM People WHERE pType = "Intern";

USE jteam;
SELECT * FROM People WHERE pType = "Reporter";

SELECT COUNT(pType) FROM People WHERE pType = "Reporter";

# Creating a Trigger which will trim all firstname, lastname, street and state inputs
DROP TRIGGER IF EXISTS before_insert_record;
USE JTeam;
DELIMITER //
CREATE 
DEFINER = CURRENT_USER
TRIGGER before_insert_record 
BEFORE INSERT 
ON People FOR EACH ROW
BEGIN
SET NEW.firstName = TRIM(NEW.firstName);
SET NEW.lastName = TRIM(NEW.lastName);
SET NEW.street = TRIM(NEW.street);
SET NEW.state = TRIM(NEW.state);
END //
DELIMITER ;