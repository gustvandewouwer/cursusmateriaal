use allesvoordekeuken;
 ALTER TABLE artikels ADD COLUMN soort VARCHAR(2) NOT NULL,
 ADD COLUMN garantie INTEGER UNSIGNED,
 ADD COLUMN houdbaarheid INTEGER UNSIGNED;