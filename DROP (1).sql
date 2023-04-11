DROP VIEW if EXISTS  Bohaterowie_nocnych_elfów ;
 DROP TRIGGER IF EXISTS usun_graczy ON kontroluje;
 DROP FUNCTION IF EXISTS usun_graczy();
 DROP TABLE IF EXISTS  kontroluje, gracz, bohater, budynek, jednostka, "bierze_udział", mecz,druzyna,frakcja ;