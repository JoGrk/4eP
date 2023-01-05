-- 1. Biblioteka potrzebuje informacji o wypożyczeniach książek. Proszę podać autorów, tytuły książek i oraz daty ich wypożyczeń. 
SELECT Autor_Nazwisko, tytul, data_wypozyczenia 
FROM ksiazka INNER JOIN wypozyczenia ON ksiazka.sygnatura = wypozyczenia.ksiazka_sygnatura
-- 2. Dodaj nową książkę, aby mieć pewność, że są takie, które nigdy nie były wypożyczone. Wyświetl książki, które nigdy nie zostały wypożyczone.
INSERT INTO ksiazka
(sygnatura,tytul,Autor_Nazwisko)
VALUES
(598,'zbrodnia i kara','Dostojewski');

SELECT Autor_Nazwisko, tytul, data_wypozyczenia 
FROM ksiazka LEFT JOIN wypozyczenia ON ksiazka.sygnatura = wypozyczenia.ksiazka_sygnatura
WHERE data_wypozyczenia IS NULL;

-- 3. Utwórz zestawienie pokazujące ile razy zostały wypożyczone książki (tytuł, autor, ilość wypożyczeń). W zestawieniu uwzględnij także te książki, które nigdy nie były wypożyczone.

SELECT tytul, Autor_Nazwisko, COUNT(*)
FROM ksiazka LEFT JOIN wypozyczenia ON ksiazka.sygnatura = wypozyczenia.ksiazka_sygnatura
GROUP BY ksiazka_sygnatura;

-- 4. Które osoby figurujące w bazie jako czytelnicy, nie wypożyczyły ani razu choćby jednej książki?

SELECT czytelnik_nazwisko
FROM czytelnik left JOIN wypozyczenia on wypozyczenia.czytelnik_id= czytelnik.id
where data_wypozyczenia is NULL;
-- 5.  Jacy czytelnicy nie są przypisani do żadnego wydziału

-- 6. Wyświetl ranking czytelników pokazujący wszystkich z informacja, ile razy wypożyczyli cokolwiek (lista ma zawierać wszystkich czytelników – nawet tych, którzy nic nie wypożyczyli)