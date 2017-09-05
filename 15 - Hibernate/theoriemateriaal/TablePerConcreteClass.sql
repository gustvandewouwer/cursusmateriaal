use fietsacademy; 

DROP TABLE IF EXISTS groepscursussen;
DROP TABLE IF EXISTS individuelecursussen;
DROP TABLE IF EXISTS cursussen;

CREATE TABLE groepscursussen (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  naam VARCHAR(45) NOT NULL,
  van DATE NOT NULL,
  tot DATE NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = InnoDB;

INSERT INTO groepscursussen(naam,van,tot)
VALUES ('Wegwielrennen voor beginners',ADDDATE(CURDATE(), INTERVAL 10 DAY),ADDDATE(CURDATE(), INTERVAL 20 DAY));

INSERT INTO groepscursussen(naam,van,tot)
VALUES ('Wegwielrennen voor gevorderden',ADDDATE(CURDATE(), INTERVAL 21 DAY),ADDDATE(CURDATE(), INTERVAL 31 DAY));

INSERT INTO groepscursussen(naam,van,tot)
VALUES ('Veldrijden voor beginners',ADDDATE(CURDATE(), INTERVAL 10 DAY),ADDDATE(CURDATE(), INTERVAL 20 DAY));

INSERT INTO groepscursussen(naam,van,tot)
VALUES ('Veldrijden voor gevorderden',ADDDATE(CURDATE(), INTERVAL 21 DAY),ADDDATE(CURDATE(), INTERVAL 31 DAY));

CREATE TABLE individuelecursussen (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  naam VARCHAR(45) NOT NULL,
  duurtijd TINYINT NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1000000;

INSERT INTO individuelecursussen(naam,duurtijd)
VALUES ('BMX',5);

INSERT INTO individuelecursussen(naam,duurtijd)
VALUES ('Mountainbiken',5);