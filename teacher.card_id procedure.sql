-- stored procedure (my first procedure)
DELIMITER $$
CREATE PROCEDURE check_f_card_id(IN card_id VARCHAR(10) )
BEGIN
	IF card_id NOT LIKE 'f%' OR card_id NOT LIKE 'F%' THEN
    	SIGNAL SQLSTATE '45000'
        	SET MESSAGE_TEXT = 'check constraint on teacher.card_id failed' ;
	END IF;            

END$$
DELIMITER ;

-- before insert trigger
DELIMITER $$
	CREATE TRIGGER check_f_card_id_before_insert BEFORE INSERT ON teacher
	FOR EACH ROW
	BEGIN
		CALL check_f_card_id(new.card_id);
	END$$
DELIMITER ;

-- before update trigger
DELIMITER $$
	CREATE TRIGGER check_f_card_id_before_update BEFORE UPDATE ON teacher
	FOR EACH ROW
	BEGIN
		CALL check_f_card_id(new.card_id);
	END$$
DELIMITER ;