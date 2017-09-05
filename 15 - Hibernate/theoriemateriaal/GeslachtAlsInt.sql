use fietsacademy;
alter table docenten ADD COLUMN geslacht int NOT NULL;
update docenten SET geslacht = 0;
update docenten SET geslacht = 1 WHERE voornaam IN ('Marianne','Jeanine','Grace','Brigitta','Sanne')