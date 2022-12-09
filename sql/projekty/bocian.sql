-- 1.        Utwórz tabele:  Bocian (nr bociana, nazwa, miejscowość gniazdowania, kod pocztowy, data przylotu, pojemność żołądka) 

CREATE TABLE Bocian
(
    IDBociana int PRIMARY KEY AUTO_INCREMENT,
    Nazwa varchar(250),
    Miejscowosc varchar(250),
    kodPocztowy char(6),
    dataPrzylotu date,
    pojemnoscZoladka int
);


--  Żaba (nr żaby, nazwa, nr bociana który ją zjadł, data zjedzenia). Określ prawidłowo typy danych, klucze, dodaj więzy integralności klucza obcego

CREATE TABLE Zaba
(
    IDZaby int PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(250),
    IDBociana int,
    dataZjedzenia date,
    FOREIGN KEY (IDBociana) REFERENCES Bocian(IDBociana)

);

INSERT INTO Bocian
(nazwa,miejscowosc)
values
('Kajtek', 'Naklo');

INSERT INTO Zaba
(nazwa,IDBociana)
values
('Zabka', 1);

-- 2.

-- A. utwórz tabele:  Uczeń (IDUcznia, imie, nazwisko) oraz  Hobby(IDHobby, hobby) , określ prawidłowo typy danych oraz klucze.
CREATE TABLE Uczen
(
    IDUcznia int PRIMARY KEY AUTO_INCREMENT,
    imie varchar(50),
    nazwisko varchar(50)
);
CREATE TABLE Hobby(
    IDHobby int PRIMARY KEY AUTO_INCREMENT,
    Hobby varchar(100)
);

CREATE TABLE HobbyUcznia (
    IDUcznia int,
    IDHobby int,
    PRIMARY KEY (IDUcznia, IDHobby),
    FOREIGN KEY (IDUcznia) REFERENCES Uczen(IDUcznia),
    FOREIGN KEY (IDHobby) REFERENCES Hobby(IDHobby)
);

INSERT INTO Uczen 
VALUES(1, 'Kacper','Kowalski' );
INSERT INTO hobby
VALUES(1,'pilka nozna');
INSERT INTO HobbyUcznia
values
(1,1);
-- B. Wprowadź dane: dwóch uczniów, trzy różne hobby,
-- C. Dodaj więzy integralności klucza obcego. Wszystkie tabele powinny mieć prawidłowo określone klucze
-- E. Wprowadź dane: pierwszy uczeń ma dwa różne zainteresowania, drugi trzy. 