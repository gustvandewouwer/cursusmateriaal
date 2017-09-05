use allesvoordekeuken;
  create table kortingen (
  artikelid integer unsigned not null,
  vanafAantal integer unsigned not null,
  kortingspercentage decimal(10,2) not null,
  unique index kortingenvanaf(artikelid, vanafaantal),
  key fk_kortingen_artikels(artikelid),
  constraint  fk_kortingen_artikels foreign key (artikelid) references artikels(id)
    on delete cascade
    on update restrict
)
engine = innodb;

insert into kortingen(artikelid,vanafaantal,kortingspercentage)
select id,5,1+id mod 10 from artikels;

insert into kortingen(artikelid,vanafaantal,kortingspercentage)
select id,10,10+id mod 10 from artikels;

insert into kortingen(artikelid,vanafaantal,kortingspercentage)
select id,20,20+id mod 10 from artikels;