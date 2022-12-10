CREATE TABLE studenci(
    idStudenta int AUTO_INCREMENT PRIMARY KEY,
    Nazwisko varchar(250)
);
DROP TABLE Przedmioty;
CREATE TABLE Przedmioty(
    IdPrzedmiotu int AUTO_INCREMENT PRIMARY KEY,
    Nazwa varchar(50)
);
CREATE TABLE Oceny(
    IdOceny int AUTO_INCREMENT PRIMARY KEY,
    ocena int,
    IdPrzedmiotu int REFERENCES Przedmioty (IdPrzedmiotu),
    idStudenta int  REFERENCES studenci (idStudenta)
);
