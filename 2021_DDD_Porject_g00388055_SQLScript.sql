SELECT * FROM `address`

INSERT INTO `treatment` (`treatCode`, `treatDetails`, `treatCost`) VALUES ('treat023', 'Misc', '45');

UPDATE `employee` SET `address` = 'add000004' WHERE `employee`.`empNumber` = 'emp01';

DELETE FROM `treatment` WHERE `treatment`.`treatCode` = 'treat023'