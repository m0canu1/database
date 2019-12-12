--Elencare tutti i fornitori con Status superiore a 20 e la quantità delle parti eventualmente fornite.
SELECT sname, sum(qty)
FROM s
         join sp on s.snum = sp.snum
WHERE status >= 20
group by sname;

--Elencare i nomi di tutte le parti di colore verde e le città dei loro eventuali fornitori
SELECT pname, s.city
FROM s
         join sp on s.snum = sp.snum
         join p on sp.pnum = p.pnum
WHERE color = 'Green'
group by s.city, pname;


/*Elencare tutti i fornitori che hanno forniture minori di 200 parti (e quindi anche i fornitori 
che non hanno fornito nulla). Il risultato deve comprendere il nome del fornitore e la quantità delle parti eventualmente fornite*/
SELECT DISTINCT S.SName, --senza DISTINCT viene due volte il nome del fornitore
                COALESCE(SP.QTY, 0) 
FROM S
         LEFT JOIN SP ON S.SNum = SP.SNum
WHERE QTY < 200
   OR QTY IS NULL;

--Elencare tutte le coppie di parti disponibili nella stessa città ma di colore diverso (mostrare codice delle parti e nome della città).
SELECT p1.pnum parte1, p2.pnum parte2, p1.city
FROM p p1
         join p p2 on p1.city = p2.city
WHERE p1.color < p2.color;
-- NON != perché viene ripetuta la coppia ma invertita.

--Elencare tutte le coppie di parti fornite dallo stesso fornitore (mostrare nome del fornitore, codice e nome delle parti).
SELECT s.sname, p1.pname nome1, sp1.pnum codice1, sp2.pnum codice2, p2.pname nome2
FROM sp sp1
         join sp sp2 on sp1.snum = sp2.snum
         join s on sp1.snum = s.snum
         join p p1 on sp1.pnum = p1.pnum
         join p p2 on sp2.pnum = p2.pnum
WHERE sp1.pnum < sp2.pnum;






/*Estrarre la quantità totale di parti rosse fornite da ciascun fornitore compresi i fornitori che non forniscono
 nessuna parte rossa (mostrare nome del fornitore e quantità totale di parti) 
 (suggerimento: sfruttare la condizione del join).
*/
--QUERY ANNIDATA PIÙ EASY
SELECT S.SName, COALESCE(sum(SP.QTY),0)
FROM SP JOIN P ON (SP.PNum=P.PNum AND P.Color='Red') --illegale per l'esame usare questo costrutto 
   RIGHT JOIN S ON (S.SNum=SP.SNum)
Group by S.SNum,S.SName;