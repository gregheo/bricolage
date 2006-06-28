-- Project: Bricolage
-- VERSION: $LastChangedRevision$
--
-- $LastChangedDate: 2004-11-09 05:32:57 +0200 (Tue, 09 Nov 2004) $
-- Target DBMS: MySQL 5.0.22
-- Author: Arsu Andrei <acidburn@asynet.ro>
--
-- Description: This creates the triggers to replace the check constraints until checks
-- are supported in MySQL.
--
--

DELIMITER |

CREATE TRIGGER ck_key_name_insert_class BEFORE INSERT ON class
    FOR EACH ROW 
	BEGIN
	    IF (NEW.key_name <> LOWER (key_name))
	        THEN SET NEW.key_name=NULL;
		END IF;        
    
        END;
|

CREATE TRIGGER ck_key_name_update_class BEFORE UPDATE ON class
    FOR EACH ROW 
	BEGIN
	    IF (NEW.key_name <> LOWER (NEW.key_name))
	        THEN SET NEW.key_name=NULL;
		END IF;        
    
        END;
|

DELIMITER ;