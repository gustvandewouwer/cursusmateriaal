use fietsacademy;

DROP TABLE IF EXISTS groepscursussen;
DROP TABLE IF EXISTS individuelecursussen;
DROP TABLE IF EXISTS cursussen;

CREATE TABLE cursussen (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  naam VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = InnoDB;

CREATE TABLE groepscursussen (
  id INTEGER UNSIGNED NOT NULL,
  van DATE NOT NULL,
  tot DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES cursussen(id)
)
ENGINE = InnoDB;

CREATE TABLE individuelecursussen (
  id INTEGER UNSIGNED NOT NULL,
  duurtijd TINYINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES cursussen(id)
)
ENGINE = InnoDB;

INSERT INTO cursussen(naam)
VALUES ('Wegwielrennen voor beginners');
INSERT INTO groepscursussen(id,van,tot)
VALUES (last_insert_id(),ADDDATE(CURDATE(), INTERVAL 10 DAY),ADDDATE(CURDATE(), INTERVAL 20 DAY));

INSERT INTO cursussen(naam)
VALUES ('Wegwielrennen voor gevorderden');
INSERT INTO groepscursussen(id,van,tot)
VALUES (last_insert_id(),ADDDATE(CURDATE(), INTERVAL 21 DAY),ADDDATE(CURDATE(), INTERVAL 31 DAY));

INSERT INTO cursussen(naam)
VALUES ('Veldrijden voor beginners');
INSERT INTO groepscursussen(id,van,tot)
VALUES (last_insert_id(),ADDDATE(CURDATE(), INTERVAL 10 DAY),ADDDATE(CURDATE(), INTERVAL 20 DAY));

INSERT INTO cursussen(naam)
VALUES ('Veldrijden voor gevorderden');
INSERT INTO groepscursussen(id,van,tot)
VALUES (last_insert_id(),ADDDATE(CURDATE(), INTERVAL 21 DAY),ADDDATE(CURDATE(), INTERVAL 31 DAY));

INSERT INTO cursussen(naam)
VALUES ('BMX');
INSERT INTO individueleCursussen(id,duurtijd)
VALUES (last_insert_id(),5);

INSERT INTO cursussen(naam)
VALUES ('Mountainbiken');
INSERT INTO individueleCursussen(id,duurtijd)
VALUES (last_insert_id(),5);