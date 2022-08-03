DROP DATABASE IF EXISTS demo_03;
CREATE DATABASE demo_03;
USE demo_03;

CREATE TABLE users (
    id INT(3) NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

CREATE TABLE Permision(

id INT(11) PRIMARY KEY,

name VARCHAR(50)

);

 

CREATE TABLE User_Permision(

permision_id INT(11),

user_id INT(11)

);

INSERT INTO users(name, email, country) VALUES('Minh','minh@codegym.vn','Viet Nam');
INSERT INTO users(name, email, country) VALUES('Kante','kante@che.uk','Kenia');

INSERT INTO Permision(id, name) VALUES(1, 'add');

INSERT INTO Permision(id, name) VALUES(2, 'edit');

INSERT INTO Permision(id, name) VALUES(3, 'delete');

INSERT INTO Permision(id, name) VALUES(4, 'view');

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