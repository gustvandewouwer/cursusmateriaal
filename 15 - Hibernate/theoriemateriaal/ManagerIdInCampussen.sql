use fietsacademy;
  ALTER TABLE campussen ADD COLUMN managerid INTEGER UNSIGNED,
 ADD CONSTRAINT FK_managers FOREIGN KEY FK_managers(managerid)
    REFERENCES managers(id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
UPDATE campussen SET managerid=id WHERE id<=
  (SELECT MAX(id) FROM managers);