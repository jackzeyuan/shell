DELIMITER $$ 
DROP TRIGGER IF EXISTS `mediaset_update_triger`$$ 
CREATE TRIGGER `mediaset_update_triger` 
AFTER UPDATE ON `mediaset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.gps = NEW.gps ,c.szmbscreen = NEW.szmbscreen WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `control_update_triger`$$ 
CREATE TRIGGER `control_update_triger` 
AFTER UPDATE ON `control` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.conIndex = NEW.esp WHERE c.id = NEW.cid;
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `body_update_triger`$$ 
CREATE TRIGGER `body_update_triger` 
AFTER UPDATE ON `body` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.body = NEW.structure WHERE c.id = NEW.cid;	
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `control_insert_triger`$$ 
CREATE TRIGGER `control_insert_triger` 
AFTER INSERT ON `control` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.conIndex = NEW.esp WHERE c.id = NEW.cid;
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `outset_update_triger`$$ 
CREATE TRIGGER `outset_update_triger` 
AFTER UPDATE ON `outset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.outIndex = NEW.powersunroof  WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `mediaset_insert_triger`$$ 
CREATE TRIGGER `mediaset_insert_triger` 
AFTER INSERT ON `mediaset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.gps = NEW.gps ,c.szmbscreen = NEW.szmbscreen WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `lightset_update_triger`$$ 
CREATE TRIGGER `lightset_update_triger` 
AFTER UPDATE ON `lightset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.ligIndex = NEW.hid WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `innerset_update_triger`$$ 
CREATE TRIGGER `innerset_update_triger` 
AFTER UPDATE ON `innerset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.cruisecontrol = NEW.cruisecontrol, c.allviewsunfoof = NEW.allviewsunfoof  WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `seatset_update_triger`$$ 
CREATE TRIGGER `seatset_update_triger` 
AFTER UPDATE ON `seatset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.seaIndex = NEW.leatherseat WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `body_insert_triger`$$ 
CREATE TRIGGER `body_insert_triger` 
AFTER INSERT ON `body` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.body = NEW.structure WHERE c.id = NEW.cid;
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `security_update_triger`$$ 
CREATE TRIGGER `security_update_triger` 
AFTER UPDATE ON `security` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.secIndex = NEW.subdriverairbag WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `car_update_triger`$$ 
CREATE TRIGGER `car_update_triger` 
BEFORE UPDATE ON `Car` FOR EACH ROW  
BEGIN
	DECLARE country0 INT;
	SELECT b.area INTO country0 FROM brand b WHERE b.id = NEW.brandId;
	SET NEW.country = country0 ;
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `baseParameter_insert_triger`$$ 
CREATE TRIGGER `baseParameter_insert_triger` 
AFTER INSERT ON `baseParameter` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.level = NEW.type WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `lightset_insert_triger`$$ 
CREATE TRIGGER `lightset_insert_triger` 
AFTER INSERT ON `lightset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.ligIndex = NEW.hid WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `car_insert_triger`$$ 
CREATE TRIGGER `car_insert_triger` 
BEFORE INSERT ON `Car` FOR EACH ROW  
BEGIN
	DECLARE country0 INT;
	SELECT b.area INTO country0 FROM brand b WHERE b.id = NEW.brandId;
	SET NEW.country = country0 ;
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `security_insert_triger`$$ 
CREATE TRIGGER `security_insert_triger` 
AFTER INSERT ON `security` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.secIndex = NEW.subdriverairbag WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `seatset_insert_triger`$$ 
CREATE TRIGGER `seatset_insert_triger` 
AFTER INSERT ON `seatset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.seaIndex = NEW.leatherseat WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `innerset_insert_triger`$$ 
CREATE TRIGGER `innerset_insert_triger` 
AFTER INSERT ON `innerset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.cruisecontrol = NEW.cruisecontrol, c.allviewsunfoof = NEW.allviewsunfoof  WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `outset_insert_triger`$$ 
CREATE TRIGGER `outset_insert_triger` 
AFTER INSERT ON `outset` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.outIndex = NEW.powersunroof  WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `baseParameter_update_triger`$$ 
CREATE TRIGGER `baseParameter_update_triger` 
AFTER UPDATE ON `baseParameter` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.level = NEW.type WHERE c.id = NEW.cid;
END $$
DELIMITER $$ 
DROP TRIGGER IF EXISTS `gear_insert_triger`$$ 
CREATE TRIGGER `gear_insert_triger` 
AFTER INSERT ON `gear` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.tran = NEW.gearstyle WHERE c.id = NEW.cid;
END $$


DELIMITER $$ 
DROP TRIGGER IF EXISTS `gear_update_triger`$$ 
CREATE TRIGGER `gear_update_triger` 
AFTER UPDATE ON `gear` FOR EACH ROW  
BEGIN
	UPDATE Car c SET c.tran = NEW.gearstyle WHERE c.id = NEW.cid;
END $$


