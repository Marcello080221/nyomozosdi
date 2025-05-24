
    "Állítások, amelyek tartalmazzák a 'gyanús' szót": 
        SELECT A.allitas_szoveg, T.nev AS tag_nev, D.nev AS detektiv_nev
        FROM Allitasok A
        JOIN Tagok T ON A.tag_id = T.id
        JOIN Detektivek D ON A.detektiv_id = D.id
        WHERE A.allitas_szoveg LIKE '%gyanús%';
    ,
    "Tagok, akiket többször is kihallgattak": 
        SELECT T.nev, COUNT(*) AS kihallgatasok_szama
        FROM Allitasok A
        JOIN Tagok T ON A.tag_id = T.id
        GROUP BY T.nev
        HAVING COUNT(*) > 1;
    ,
    "Melyik detektív hány kihallgatást végzett": 
        SELECT D.nev, COUNT(*) AS kihallgatasok_szama
        FROM Allitasok A
        JOIN Detektivek D ON A.detektiv_id = D.id
        GROUP BY D.nev;
    ,
    "Melyik tag szerepel legtöbbször az állításokban": 
        SELECT T.nev, COUNT(*) AS szereples
        FROM Allitasok A
        JOIN Tagok T ON A.tag_id = T.id
        GROUP BY T.nev
        ORDER BY szereples DESC
        LIMIT 1;
    ,
    "Minden állítás időrendben (id szerint)": 
        SELECT A.id, T.nev AS tag, D.nev AS detektiv, A.allitas_szoveg
        FROM Allitasok A
        JOIN Tagok T ON A.tag_id = T.id
        JOIN Detektivek D ON A.detektiv_id = D.id
        ORDER BY A.id;
    



