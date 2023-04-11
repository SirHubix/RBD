-- Obecność złączenia, zarówno w składni ze słowami INNER JOIN jak i bez niej.
--   Z INNER JOIN.
SELECT gracz.nazwa , druzyna.nazwa  
from gracz INNER JOIN druzyna ON
gracz.id_druzyny = druzyna.id_druzyny;
--   Bez INNER JOIN.
SELECT gracz.nazwa , druzyna.nazwa  
from gracz , druzyna  WHERE 
gracz.id_druzyny = druzyna.id_druzyny;

-- Użycie grupowania i funkcji agregujących.

SELECT gracz.dywizja, COUNT(gracz.nazwa) FROM
gracz GROUP By gracz.dywizja;
-- Warunki odwołujące się do wzorców napisów.
SELECT nazwa FROM gracz WHERE dywizja LIKE '%er';
-- Użycie zagnieżdżenia, w obu odmianach (nieskorelowane i skorelowane). 
--   zagnieżdżenie nieskorelowane
SELECT nazwa
  FROM gracz
 WHERE id_gracza IN (
 SELECT id_gracza
   FROM kontroluje
  GROUP BY id_gracza);
--   zagnieżdżenie skorelowane
SELECT nazwa from gracz G
WHERE NOT EXISTS (
  SELECT * FROM kontroluje K
    WHERE G.id_gracza = K.id_gracza
) ORDER BY nazwa;


-- Sprawdzanie warunku NULL.
SELECT nazwa_jednostki from jednostka 
where typ_pancerza ISNULL;

SELECT nazwa from gracz 
where dywizja NOTNULL;

-- Zapytania negatywne, Co najmniej w dwu wersjach.
SELECT nazwa from gracz  
WHERE id_gracza NOT IN (
    SELECT id_gracza FROM kontroluje
    WHERE gracz.id_gracza = kontroluje.id_gracza
) ORDER BY nazwa;

SELECT nazwa from gracz  
LEFT JOIN kontroluje  ON
gracz.id_gracza = kontroluje.id_gracza
WHERE kontroluje ISNULL;


SELECT * FROM gracz LEFT JOIN kontroluje on gracz.id_gracza = kontroluje.id_gracza WHERE kontroluje.id_frakcji !=2;

-- Wyświetlanie wyniku operacji arytmetycznych na liczbach oraz na datach.

SELECT frakcja.nazwa, SUM(jednostka.koszt_jednostki) laczny_koszt_jednostek
from frakcja, jednostka WHERE jednostka.id_frakcji=frakcja.id_frakcji
GROUP By frakcja.nazwa;


-- Użycie widoku (perspektywy, view). 

CREATE VIEW Bohaterowie_nocnych_elfów AS
SELECT bohater.nazwa_bohatera, frakcja.nazwa
FROM bohater,frakcja WHERE bohater.id_frakcji = 2 and frakcja.nazwa = 'Nocne Elfy';

-- Usuwanie z tabeli.
DELETE FROM jednostka WHERE typ_pancerza ISNULL;


-- Aktualizacja wierszy w tabeli. 
UPDATE jednostka set koszt_jednostki = FLOOR(random()*(80)+100)  
WHERE koszt_jednostki < 170;





