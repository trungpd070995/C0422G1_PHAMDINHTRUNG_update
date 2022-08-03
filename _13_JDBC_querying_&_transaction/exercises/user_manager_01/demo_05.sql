DROP DATABASE IF EXISTS demo_05;
CREATE DATABASE demo_05;
USE demo_05;

CREATE TABLE users (
    id INT(3) NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

INSERT INTO users(name, email, country) VALUES('Minh','minh@codegym.vn','Viet Nam');
INSERT INTO users(name, email, country) VALUES('Kante','kante@che.uk','Kenia');

DELIMITER $$

CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    WHERE users.id = user_id;

    END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name VARCHAR(50),

IN user_email VARCHAR(50),

IN user_country VARCHAR(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sellect_all_user()

BEGIN

   SELECT 
    *
FROM
    users;

    END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE edit_user(

IN user_id int,

IN user_name VARCHAR(50),

IN user_email VARCHAR(50),

IN user_country VARCHAR(50)

)

BEGIN

 UPDATE users 
SET 
    `name` = user_name,
    email = user_email,
    country = user_country
WHERE
    id = user_id;

    END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE delete_user_by_id(IN user_id INT)

BEGIN

    DELETE FROM users 
WHERE
    id;

    END$$

DELIMITER ;
