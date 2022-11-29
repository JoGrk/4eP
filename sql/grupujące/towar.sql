-- 1. policz ilość wszystkich rekordów (zapisów) ;
SELECT COUNT(rodzaj)
FROM towar;

-- 2. z opisami - największą i najmniejsza CENĘ, oraz średnią arytmetyczną CENY ;
SELECT MAX(Cena), MIN(Cena), AVG(cena)
FROM towar;
-- 3. sumę wartości towarów, średnią arytmetyczną wartości (ILOSC * CENA) ;
SELECT SUM(ilosc * cena), AVG(ilosc * cena)
FROM towar; 
-- 4. policz średnią arytmetyczną ceny, a później policz ręcznie średnią arytmetyczną ceny = suma CENY / ilość rekordów. 
SELECT AVG(CENA), SUM(CENA) / COUNT(rodzaj)
FROM towar;

-- 5. Wyświetl średnią cenę wszystkich towarów o cenie pomiędzy 10 a 1000 zł
SELECT AVG(CENA) 
FROM towar
WHERE CENA BETWEEN 10 AND 1000;
-- 6. wyświetl sumę masy (ilosc * waga) , ale tylko dla rodzaju  GD i TR
SELECT SUM(ilosc*waga)
FROM towar 
WHERE rodzaj IN ('GD', 'TR'); 
-- 7. Wyświetl łączną ilość wszystkich zamówionych produktów,
SELECT COUNT(ZAMOW)
FROM towar
WHERE ZAMOW='PRAWDA';
-- 8. wyświetl największą wartość (ilosc * cena)  towarów wyprodukowanych w 1997 roku

SELECT MAX(ilosc*cena)
FROM towar
WHERE data_prod LIKE '1997-%-%';

-- 9. policz ile rekordów jest w każdym RODZAJU 
SELECT COUNT(*)
FROM towar
GROUP BY rodzaj;
-- 10. policz ile rekordów jest w każdym RODZAJU, posortuj malejąco wg RODZAJU;
SELECT COUNT(*), rodzaj
FROM towar
GROUP BY rodzaj
ORDER BY rodzaj DESC;
-- 11. policz sumę i średnią arytmetyczną wartości (ilość * cena) i minimalnej i maksymalnej masie (ilość * waga) dla każdego RODZAJU towaru ;
SELECT SUM(ilosc*cena), AVG(ilosc*cena),MIN(ilosc*cena),MAX(ilosc*cena)
FROM towar;

-- 12. policz ile rekordów jest w każdym RODZAJU - wyświetl ilości rekordów większe od 15 ;
SELECT rodzaj, COUNT(rodzaj)
FROM towar
GROUP BY rodzaj;
-- 13. policz średnią arytmetyczną ceny dla każdego RODZAJU - wyświetl średnie mniejsze od 500;
SELECT rodzaj, avg(cena)
FROM towar
GROUP BY rodzaj
HAVING AVG(cena)<500;

-- 14. dla każdego rodzaju towarów wyświetl ilość rekordów, średnią wagę, średnią ilość, maksymalną i minimalną cenę dla ilości rekordów w RODZAJU mniejszej od 15.
SELECT rodzaj, COUNT(*), AVG(waga), AVG(ilosc), MAX(cena), MIN(cena) 
FROM towar
GROUP BY rodzaj
HAVING COUNT(*)<15;

-- 15. dla każdego rodzaju towarów wyświetl maksymalną cenę dla ilości rekordów w RODZAJU większe od 10. Uwzględnij tylko towary zamówione.
SELECT rodzaj, max(cena)
FROM towar
where zamow='PRAWDA'
GROUP BY rodzaj
having COUNT(*)>10;

-- 16. Oblicz minimalną cenę towarów niezamówionych dla każdego rodzaju. 
SELECT rodzaj,  MIN(cena)
FROM towar
WHERE ZAMOW<>'PRAWDA'
GROUP BY RODZAJ;

-- 17. oblicz średnią cenę towarów zamówionych (zamow) i nie zamówionych

SELECT zamow, AVG(cena)
FROM towar
GROUP BY zamow;
-- 18. oblicz średnią cenę towarów wyprodukowanych w 1999 roku  dla poszczególnych rodzajów towaru
SELECT zamow, AVG(Cena)
FROM towar
WHERE data_prod LIKE '1999-%-%'
GROUP BY zamow;