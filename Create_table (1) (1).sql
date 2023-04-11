CREATE TABLE Frakcja
(
  id_frakcji INT NOT NULL,
  nazwa VARCHAR(40) NOT NULL,
  PRIMARY KEY (id_frakcji)
);

CREATE TABLE Druzyna
(
  kolor VARCHAR(30) NOT NULL,
  id_druzyny INT NOT NULL,
  nazwa VARCHAR(30) NOT NULL,
  ilosc_graczy INT NOT NULL,
  PRIMARY KEY (id_druzyny)
);

CREATE TABLE Mecz
(
  id_meczu INT NOT NULL,
  wynik VARCHAR(50) NOT NULL,
  czas_trwania VARCHAR(30) NOT NULL,
  ilosc_graczy INT NOT NULL,
  PRIMARY KEY (id_meczu)
);

CREATE TABLE bierze_udział
(
  id_druzyny INT NOT NULL,
  id_meczu INT NOT NULL,
  PRIMARY KEY (id_druzyny, id_meczu),
  FOREIGN KEY (id_druzyny) REFERENCES Druzyna(id_druzyny),
  FOREIGN KEY (id_meczu) REFERENCES Mecz(id_meczu)
);

CREATE TABLE Jednostka
(
  id_jednostki INT NOT NULL,
  Rodzaj_ataku VARCHAR(30) NOT NULL,
  Punkty_Obrażeń INT NOT NULL,
  Punkty_życia INT NOT NULL,
  Typ VARCHAR(30) ,
  Typ_pancerza VARCHAR(30) ,
  nazwa_jednostki VARCHAR(30) NOT NULL,
  Koszt_jednostki INT ,
  id_frakcji INT NOT NULL,
  PRIMARY KEY (id_jednostki),
  FOREIGN KEY (id_frakcji) REFERENCES Frakcja(id_frakcji)
);

CREATE TABLE Budynek
(
  id_budynku INT NOT NULL,
  nazwa VARCHAR(50) NOT NULL,
  rodzaj VARCHAR(50) NOT NULL,
  punkty_zycia INT NOT NULL,
  koszt_budynku INT ,
  id_frakcji INT ,
  PRIMARY KEY (id_budynku),
  FOREIGN KEY (id_frakcji) REFERENCES Frakcja(id_frakcji)
);

CREATE TABLE Bohater
(
  id_bohatera INT NOT NULL,
  poziom INT NOT NULL,
  umiejętntość1 VARCHAR(50) NOT NULL,
  nazwa_bohatera VARCHAR(50) NOT NULL,
  umiejętność_2 VARCHAR(50) NOT NULL,
  punkty_życia INT NOT NULL,
  punkty_obrażeń INT NOT NULL,
  id_frakcji INT NOT NULL,
  PRIMARY KEY (id_bohatera),
  FOREIGN KEY (id_frakcji) REFERENCES Frakcja(id_frakcji)
);

CREATE TABLE Gracz
(
  nazwa VARCHAR(50) ,
  id_gracza INT NOT NULL,
  Dywizja VARCHAR(50) ,
  poziom INT ,
  id_druzyny INT NOT NULL,
  PRIMARY KEY (id_gracza),
  FOREIGN KEY (id_druzyny) REFERENCES Druzyna(id_druzyny)
);

CREATE TABLE kontroluje
(
  id_gracza INT ,
  id_frakcji INT ,
  FOREIGN KEY (id_gracza) REFERENCES Gracz(id_gracza),
  FOREIGN KEY (id_frakcji) REFERENCES Frakcja(id_frakcji)
);