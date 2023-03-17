copy verkaufsgebiet from '/var/lib/postgresql/data/csv/gartenmoebel/verkaufsgebiet.csv' delimiter ',' csv header;
copy kunde from '/var/lib/postgresql/data/csv/gartenmoebel/kunde.csv' delimiter ',' csv header;
copy bestellung from '/var/lib/postgresql/data/csv/gartenmoebel/bestellung.csv' delimiter ',' csv header;
copy versand from '/var/lib/postgresql/data/csv/gartenmoebel/versand.csv' delimiter ',' csv header;
copy produkt from '/var/lib/postgresql/data/csv/gartenmoebel/produkt.csv' delimiter ',' csv header;
copy bestellposition from '/var/lib/postgresql/data/csv/gartenmoebel/bestellposition.csv' delimiter ',' csv header;
copy preisliste from '/var/lib/postgresql/data/csv/gartenmoebel/preisliste.csv' delimiter ',' csv header;
copy preis from '/var/lib/postgresql/data/csv/gartenmoebel/preis.csv' delimiter ',' csv header;
copy kategorie from '/var/lib/postgresql/data/csv/gartenmoebel/kategorie.csv' delimiter ',' csv header;
copy produktkategorie from '/var/lib/postgresql/data/csv/gartenmoebel/produktkategorie.csv' delimiter ',' csv header;




psql -h lubuicla.f4.htw-berlin.de -d adbkt -U uadbkt

\copy verkaufsgebiet from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/verkaufsgebiet.csv' delimiter ',' csv header;

\copy kunde from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/kunde.csv' delimiter ',' csv header;

\copy bestellung from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/bestellung.csv' delimiter ',' csv header;

\copy versand from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/versand.csv' delimiter ',' csv header;

\copy produkt from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/produkt.csv' delimiter ',' csv header;

\copy bestellposition from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/bestellposition.csv' delimiter ',' csv header;

\copy preisliste from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/preisliste.csv' delimiter ',' csv header;

\copy preis from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/preis.csv' delimiter ',' csv header;

\copy kategorie from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/kategorie.csv' delimiter ',' csv header;

\copy produktkategorie from '/mnt/c/work/lv/uebungen/databases/gartenmoebel/csv/produktkategorie.csv' delimiter ',' csv header;

