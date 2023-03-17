drop table bestellposition;
drop table bestellung;
drop table versand;
drop table kunde;
drop table verkaufsgebiet;
drop table produktkategorie;
drop table preis;
drop table produkt;
drop table preisliste;
drop table kategorie;

create table Verkaufsgebiet (
    VGID         integer not null,
    Obergebiet   integer,
    Bez          varchar(50) not null,
    Ebene        integer not null,
    constraint   verkaufsgebiet_pk primary key(VGID)
);

create table kunde(
    kid            integer not null,
    vgid           integer not null,
    name           varchar(100)not null,
    titel          varchar(20),
    constraint kunde_pk primary key(kid)
);

create table bestellung (
    bid            integer not null,
    kid            integer not null,
    bestelldatum   date not null,
    gesamtpreis    decimal(13,2),
    constraint bestellung_pk primary key(bid)
);

create table versand(
    vid            integer not null,
    versanddatum   date not null,
    lieferdatum    date,
    constraint versand_pk primary key(vid)
);

create table produkt(
    pid    integer not null,
    bez    varchar(200)not null,
    laenge integer,
    breite integer,
    constraint produkt_pk primary key(pid)
);

create table bestellposition (
    bid         integer not null,
    pid         integer not null,
    vid         integer,
    menge       integer,
    einzelpreis decimal(13,2),
    constraint bestellposition_pk primary key(bid, pid)
);


create table preisliste (
    plid        integer not null,
    datum_von   date not null,
    datum_bis   date not null,
    constraint preisliste_pk primary key(plid)
);

create table preis(
    plid   integer not null,
    pid    integer not null,
    betrag decimal(13,2) not null,
    constraint preis_pk primary key(plid, pid)
);


create table kategorie(
    kid             integer not null,
    oberkategorie   integer,
    bez             varchar(50)not null,
    ebene           integer not null,
    constraint kategorie_pk primary key(kid)
);


create table produktkategorie (
    pid  integer not null,
    kid  integer not null,
    hk   char(1) not null,
    constraint produktkategorie_pk primary key(pid, kid)
);



alter table kunde
    add constraint kunde_vgid_fk foreign key(vgid)
        references verkaufsgebiet(vgid);

alter table bestellung
    add constraint bestellung_kid_fk foreign key(kid)
        references kunde(kid);

alter table bestellposition
    add constraint bestellposition_bid_fk foreign key(bid)
        references bestellung(bid);

alter table bestellposition
    add constraint bestellposition_pid_fk foreign key(pid)
        references produkt(pid);

alter table bestellposition
    add constraint bestellposition_vid_fk foreign key(vid)
        references versand(vid);

alter table kategorie
    add constraint kategorie_ober_fk foreign key(oberkategorie)
        references kategorie(kid);

alter table preis
    add constraint preis_plid_fk foreign key(plid)
        references preisliste(plid);

alter table preis
    add constraint preis_pid_fk foreign key(pid)
        references produkt(pid);

alter table produktkategorie
    add constraint produktkategorie_kid_fk foreign key(kid)
        references kategorie(kid);

alter table produktkategorie
    add constraint produktkategorie_pid_fk foreign key(pid)
        references produkt(pid);

alter table verkaufsgebiet
    add constraint verkaufsgebiet_ober_fk foreign key(obergebiet)
        references verkaufsgebiet(vgid);


