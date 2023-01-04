-- 1. Tabela Klienci. 

-- A. ID całkowite, autoinkrementacja, klucz podstawowy
-- B. Imie - tekst do 30 znaków, pole nie może być puste
-- C. Nazwisko - tekst do 50 znaków, pole nie może być puste
-- D. e-mail - tekst do 50 znaków, wartości w polu nie mogą się powtarzać, w środku musi wystąpić znak @

create table Klienci(
    idklienta INT AUTO_INCREMENT PRIMARY KEY,
    imie varchar(30) NOT NULL,
    nazwisko varchar(50) NOT NULL,
    email varchar(50) UNIQUE,
    CHECK (email LIKE '%@%')
);


-- 2. Tabela Uslugi

-- A. ID całkowite, autoinkrementacja, klucz podstawowy
-- B. nazwa - tekst do 50 znaków, 
-- C. opis - teksty do 512 znaków
-- D. cena - stałoprzecinkowy typ: ceny do 7 znaków przed przecinkiem i 2 znaków po przecinku,

CREATE TABLE Uslugi
(
    ID int PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(50),
    opis varchar(512),
    cena DECIMAL(9,2)
);


-- 3. Do tabeli Usługi dodaj więzy integralności: 

-- A. do pola nazwa: wartości w polu nie mogą się powtarzać, pole nie może być puste
-- B. do pola cena: wpisywane wartości muszą być większe od 10

ALTER TABLE Uslugi
MODIFY nazwa varchar(50) NOT NULL UNIQUE,
ADD CONSTRAINT ch_cena CHECK(cena>10);



-- 4. Połącz obie tabele:

-- A. określ typ związku i sposób przejścia do postaci relacyjnej
-- B. dodaj potrzebne pole i/lub tabele, pokaż projekt na zrzucie
-- C. dodaj więzy integralności referencyjnej

CREATE TABLE UslugiKlientow(
    ID int,
    idklienta int,
    PRIMARY KEY(ID, idklienta),
    FOREIGN KEY(ID) REFERENCES Uslugi(ID),
    FOREIGN KEY(idklienta) REFERENCES Klienci(idklienta)
);

-- 5. Wprowadź dane dwóch klientów i dwie usługi
    INSERT INTO Klienci
    (imie,nazwisko,email)
    VALUES
    ('Kajtek','Kowalski','kajtekkowalski@gmail.com'),
    ('Jan', 'Nowak', 'jannowak@gmail.com');

    INSERT INTO Uslugi
    (nazwa,cena)
    VALUES 
    ('sprzatanie',60), ('mycie', 70);





-- 6. Upewnij się, że działają więzy integralności (nie puste, wartości się nie powtarzają, check)

-- A. w tabeli Klienci
INSERT INTO Klienci
    (imie,nazwisko,email)
    VALUES
    ('Sebix','Kowalski','kajtekkowalski@gmail.com')
-- B. w tabeli Uslugi
INSERT INTO Uslugi
    (nazwa,cena)
    VALUES 
    ('naprawa',7);

INSERT INTO Uslugi
    (cena)
    VALUES 
    (75);

-- 7. Zamów i wyprowadź do bazy danych wykonanie usług: 
-- A. pierwszy klient zamawia pierwszą usługę, przy wprowadzaniu danych posługuj się nazwami usług

INSERT INTO UslugiKlientow
(ID, idklienta)
VALUES
(1,1);

-- B. Drugi klient zamawia obie usługi, przy wprowadzaniu danych posługuj się nazwami usług
INSERT INTO UslugiKlientow
(ID, idklienta)
VALUES
(1,2),
(2,2);


-- 8. Upewnij się, że działają więzy integralności referencyjnej

-- A. usuń dane pierwszego klienta z tabeli klienci,
DELETE FROM Klienci
WHERE idklienta=1;

--  B. z tabeli klienci usuń dane pierwszego klienta stosując podejście wywżone

--  nie wyjdzie, bo pole wchodzi w skład klucza podstawowego

-- C. z tabeli klienci usuń dane drugiego klienta stosując podejście kaskadowe usuwanie powiązanych pól

DELETE FROM UslugiKlientow
WHERE idklienta=2;

DELETE FROM Klienci
WHERE idklienta=2;

