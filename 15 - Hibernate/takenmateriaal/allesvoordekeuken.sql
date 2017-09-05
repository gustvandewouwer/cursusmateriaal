CREATE DATABASE IF NOT EXISTS allesvoordekeuken;
USE allesvoordekeuken;

DROP TABLE IF EXISTS artikelgroepen;
CREATE TABLE artikelgroepen (
  id int(10) unsigned NOT NULL auto_increment,
  naam varchar(50) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS artikels;
CREATE TABLE artikels (
  id int(10) unsigned NOT NULL auto_increment,
  naam varchar(50) NOT NULL,
  aankoopprijs decimal(10,2) NOT NULL,
  verkoopprijs decimal(10,2) NOT NULL,
  PRIMARY KEY (id),
  KEY `Naam`(naam)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

grant all on allesvoordekeuken.* to 'cursist'@'localhost' identified by 'cursist';