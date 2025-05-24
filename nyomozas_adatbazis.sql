
INSERT INTO Tagok (id, nev, magassag, hajszin, szemszin, szuletesi_ev, egyeb_jellemzok) VALUES
(1, 'Kovács Lili', 165, 'barna', 'kék', 1998, 'Szeret olvasni'),
(2, 'Nagy Gábor', 180, 'fekete', 'barna', 1995, 'Futó'),
(3, 'Szabó Ádám', 175, 'szőke', 'zöld', 2000, 'Csendes természetű'),
(4, 'Tóth Eszter', 162, 'vörös', 'barna', 1997, 'Zenész'),
(5, 'Kiss Bence', 170, 'barna', 'szürke', 1996, 'Programozó'),
(6, 'Varga Dóra', 168, 'szőke', 'kék', 1999, 'Sokat utazik'),
(7, 'Molnár Péter', 178, 'fekete', 'zöld', 1994, 'Kedveli a kutyákat'),
(8, 'Lakatos Anna', 160, 'vörös', 'kék', 2001, 'Fotós'),
(9, 'Balogh Zoltán', 182, 'barna', 'barna', 1993, 'Sportoló'),
(10, 'Farkas Zsófia', 167, 'fekete', 'szürke', 1998, 'Növényrajongó');


INSERT INTO Detektivek (id, nev, tapasztalat_ev, szuletesi_ev) VALUES
(1, 'Dávid nyomozó', 12, 1980),
(2, 'Erika nyomozó', 8, 1985),
(3, 'Zoltán nyomozó', 15, 1978);


INSERT INTO Allitasok (id, detektiv_id, tag_id, allitas_szoveg) VALUES
(1, 1, 1, 'Nem beszélt sokat, de idegesnek tűnt.'),
(2, 1, 2, 'Gábor láthatóan zavarban volt a kérdések alatt.'),
(3, 1, 3, 'Ádám tagadta, hogy bármit is tudna az árulóról.'),
(4, 2, 4, 'Eszter többször ellentmondásba keveredett.'),
(5, 2, 5, 'Bence határozottan és nyugodtan válaszolt.'),
(6, 2, 6, 'Dóra nem volt hajlandó válaszolni egyes kérdésekre.'),
(7, 3, 7, 'Péter szerint Zoltán furcsán viselkedett.'),
(8, 3, 8, 'Anna szerint Lili titokban beszélgetett valakivel.'),
(9, 3, 9, 'Zoltán nagyon magabiztos volt.'),
(10, 3, 10, 'Zsófia azt állította, valaki figyeli őket.'),
(11, 2, 3, 'Ádám gyanús megjegyzéseket tett.'),
(12, 1, 6, 'Dóra és Zoltán sok időt töltöttek együtt.');


insert_script.strip()

-- Tábla: Tagok
    CREATE TABLE Tagok (
        id INTEGER PRIMARY KEY,
        nev TEXT NOT NULL,
        magassag INTEGER,
        hajszin TEXT,
        szemszin TEXT,
        szuletesi_ev INTEGER,
        egyeb_jellemzok TEXT
    );

    -- Tábla: Detektivek
    CREATE TABLE Detektivek (
        id INTEGER PRIMARY KEY,
        nev TEXT NOT NULL,
        tapasztalat_ev INTEGER,
        szuletesi_ev INTEGER
    );

    -- Tábla: Allitasok
    CREATE TABLE Allitasok (
        id INTEGER PRIMARY KEY,
        detektiv_id INTEGER,
        tag_id INTEGER,
        allitas_szoveg TEXT,
        FOREIGN KEY (detektiv_id) REFERENCES Detektivek(id),
        FOREIGN KEY (tag_id) REFERENCES Tagok(id)
    );

    -- Tagok feltöltése
    INSERT INTO Tagok (id, nev, magassag, hajszin, szemszin, szuletesi_ev, egyeb_jellemzok) VALUES
    (1, 'Kovács Lili', 165, 'barna', 'kék', 1998, 'Szeret olvasni'),
    (2, 'Nagy Gábor', 180, 'fekete', 'barna', 1995, 'Futó'),
    (3, 'Szabó Ádám', 175, 'szőke', 'zöld', 2000, 'Csendes természetű'),
    (4, 'Tóth Eszter', 162, 'vörös', 'barna', 1997, 'Zenész'),
    (5, 'Kiss Bence', 170, 'barna', 'szürke', 1996, 'Programozó'),
    (6, 'Varga Dóra', 168, 'szőke', 'kék', 1999, 'Sokat utazik'),
    (7, 'Molnár Péter', 178, 'fekete', 'zöld', 1994, 'Kedveli a kutyákat'),
    (8, 'Lakatos Anna', 160, 'vörös', 'kék', 2001, 'Fotós'),
    (9, 'Balogh Zoltán', 182, 'barna', 'barna', 1993, 'Sportoló'),
    (10, 'Farkas Zsófia', 167, 'fekete', 'szürke', 1998, 'Növényrajongó');

    -- Detektivek feltöltése
    INSERT INTO Detektivek (id, nev, tapasztalat_ev, szuletesi_ev) VALUES
    (1, 'Dávid nyomozó', 12, 1980),
    (2, 'Erika nyomozó', 8, 1985),
    (3, 'Zoltán nyomozó', 15, 1978);

    -- Állítások feltöltése
    INSERT INTO Allitasok (id, detektiv_id, tag_id, allitas_szoveg) VALUES
    (1, 1, 1, 'Nem beszélt sokat, de idegesnek tűnt.'),
    (2, 1, 2, 'Gábor láthatóan zavarban volt a kérdések alatt.'),
    (3, 1, 3, 'Ádám tagadta, hogy bármit is tudna az árulóról.'),
    (4, 2, 4, 'Eszter többször ellentmondásba keveredett.'),
    (5, 2, 5, 'Bence határozottan és nyugodtan válaszolt.'),
    (6, 2, 6, 'Dóra nem volt hajlandó válaszolni egyes kérdésekre.'),
    (7, 3, 7, 'Péter szerint Zoltán furcsán viselkedett.'),
    (8, 3, 8, 'Anna szerint Lili titokban beszélgetett valakivel.'),
    (9, 3, 9, 'Zoltán nagyon magabiztos volt.'),
    (10, 3, 10, 'Zsófia azt állította, valaki figyeli őket.'),
    (11, 2, 3, 'Ádám gyanús megjegyzéseket tett.'),
    (12, 1, 6, 'Dóra és Zoltán sok időt töltöttek együtt.');
