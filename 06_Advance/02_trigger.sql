CREATE TRIGGER tg_email
BEFORE/AFTER INSERT/UPDATE/UPDATE/DELETE
ON users;

DELIMITER |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;

|

DELIMITER ;

UPDATE users SET email='mouredev@gmail.com' WHERE user_id = 1;

DROP TRIGGER tg_email;
