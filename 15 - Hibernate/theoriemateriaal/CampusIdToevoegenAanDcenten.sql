use fietsacademy;
ALTER TABLE docenten ADD COLUMN campusid INTEGER UNSIGNED,
 ADD CONSTRAINT FK_campussen FOREIGN KEY FK_campussen (campusid)
    REFERENCES campussen(id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
UPDATE docenten SET campusid=1+(id+length(voornaam)+length(familienaam)) mod 6;
ALTER TABLE docenten change COLUMN campusid campusid integer UNSIGNED NOT NULL;