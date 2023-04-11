CREATE or REPLACE FUNCTION usun_graczy()
   RETURNS TRIGGER 
AS $$
BEGIN
DELETE FROM gracz WHERE id_gracza NOT IN (
    SELECT id_gracza FROM kontroluje
    WHERE gracz.id_gracza = kontroluje.id_gracza);
    RETURN NULL;
END
$$
LANGUAGE PLPGSQL
;

CREATE TRIGGER usun_graczy
    AFTER INSERT ON kontroluje
    FOR EACH ROW
    EXECUTE PROCEDURE usun_graczy();