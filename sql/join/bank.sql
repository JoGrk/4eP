-- 1.Imię i nazwisko pracownika oraz region, w którym pracuje.


-- dane wybierz z tabel: Pracownicy oraz Oddziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały

SELECT imie , nazwisko , region
FROM PRACOWNICY
    INNER JOIN ODDZIALY ON pracownicy.NrRozliczOddz=oddzialy.NrRozlicz;

-- 2.Imię i nazwisko pracownika, nazwa i ilość sprzedanych produktów.
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)

SELECT imie , nazwisko , nazwaproduktu ,ilosc
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.Nr=sprzedaz.Nrpracownika;
-- 3.Imię i nazwisko pracownika, nazwa i punktacja produktu oraz ilość sprzedanych produktów.


SELECT imie, nazwisko,nazwa,punktacja,ilosc
FROM pracownicy
 INNER JOIN sprzedaz ON pracownicy.Nr=sprzedaz.Nrpracownika
 INNER JOIN produkty ON sprzedaz.nazwaproduktu=produkty.nazwa; 

-- 4.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu.

SELECT imie, nazwisko, nazwa, ilosc*punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.NrPracownika
    INNER JOIN produkty ON sprzedaz.nazwaproduktu = produkty.nazwa;

-- 5.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu – tylko dla pracowników z oddziału w Warszawie
    SELECT imie, nazwisko, nazwa, ilosc*punktacja, miejscowosc
    FROM pracownicy
        INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.NrPracownika
        INNER JOIN produkty ON sprzedaz.nazwaproduktu = produkty.nazwa
        INNER JOIN Oddzialy ON pracownicy.NrRozliczOddz=oddzialy.NrRozlicz
    WHERE miejscowosc="Warszawa";


-- 6.Imiona, nazwiska i numery pracowników wyróżnionych w zeszłym okresie.

SELECT imie, nazwisko, nr
FROM PRACOWNICY 
INNER JOIN wyroznieni ON PRACOWNICY.NR=wyroznieni.Nrpracownika
