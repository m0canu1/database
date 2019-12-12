--Estrarre la quantità totale di parti rosse fornite da ciascun fornitore escludendo i
--fornitori che non forniscono parti rosse (mostrare nome del fornitore e quantità totale di parti)
SELECT sname, sum(qty)
from s
         join sp on s.snum = sp.snum
         join p on p.pnum = sp.pnum
where p.color = 'Red'
group by sname;

--Estrarre la quantità totale di parti rosse fornite da ciascun fornitore compresi i fornitori che non forniscono
--nessuna parte, per i quali dovete mostrare 0 (mostrare nome del fornitore e quantità totale di parti).
SELECT sname, coalesce(sum(qty), 0) quantità_parti_rosse
from s
         left join sp on s.snum = sp.snum
         left join p on p.pnum = sp.pnum
where color = 'Red'
   or color is null
group by sname;

/*Estrarre la quantità totale di parti rosse fornite da ciascun fornitore compresi i fornitori che non forniscono
 nessuna parte rossa (mostrare nome del fornitore e quantità totale di parti)
 (suggerimento: sfruttare la condizione del join).
*/ --QUERY ANNIDATA PIÙ EASY


/*Considerando solo forniture di oltre 100 parti, estrarre le città in cui i fornitori,
considerati insieme, forniscono in totale almeno 1000 parti (mostrare la città e la quantità totale di parti).
*/
select city, sum(qty)
from s
         join sp on s.snum = sp.snum
where qty > 100
group by city
having sum(qty) >= 1000;

/* Estrarre le città in cui ci sono almeno due fornitori che hanno fornito ognuno almeno due prodotti di diverso colore
(suggerimento: scrivere prima la query che estrae le informazioni sulle coppie di parti di diverso colore fornite dallo stesso fornitore)
*/
--Suggerimento: coppie di parti diverso colore stesso fornitore==>usare la self join prima

select p1.pnum, p1.color, p2.pnum, p2.color, sp1.snum
from p p1
         join sp sp1 on p1.pnum = sp1.pnum
         join sp sp2 on sp1.snum = sp2.snum
         join p p2 on p2.pnum = sp2.pnum
where p1.color < p2.color;

select s.city, count(distinct s.sname) numero_fornitori_che_hanno_fornito_2_prod_di_diverso_colore
from p p1
         join sp sp1 on p1.pnum = sp1.pnum
         join sp sp2 on sp1.snum = sp2.snum
         join p p2 on p2.pnum = sp2.pnum
         join s on sp1.snum = s.snum
where p1.color < p2.color
group by s.city
having count(distinct s.sname) >= 2
