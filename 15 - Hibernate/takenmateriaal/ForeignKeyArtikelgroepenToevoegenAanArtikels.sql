alter TABLE allesvoordekeuken.artikels
 ADD CONSTRAINT FK_artikelgroepen FOREIGN KEY FK_artikelgroepen (artikelgroepid)
    REFERENCES artikelgroepen(id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;