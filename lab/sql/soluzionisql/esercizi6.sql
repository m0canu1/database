-- Trovare i codici dei prodotti che hanno il peso massimo (come esercizio sulle query correlate,
-- scrivere una versione determinando il peso massimo come il peso non inferiore ai pesi di tutti gli altri prodotti
-- e un’altra versione con not exists)

select pnum
from p
where p.weight = (select max(weight) from p);

-- QUERY CON ALL
select pnum
from p
where weight >= all (select weight from p);

--QUERY CON NOT EXISTS
select pnum
from p
where not exists(select *
                 from p p1
                 where p1.pnum > p.pnum);


--Trovare i nomi dei fornitori che forniscono tutte le parti (senza utilizzare operatori aggregati)
--(suggerimento: scrivere prima una query che trovi le parti non fornite da S2 e poi generalizzare su ogni fornitore)

--Suggerimento
select *
from p
where pnum not in (select pnum
                   from sp
                   where sp.pnum = p.pnum
                     and sp.snum = 'S2');

--Finale
select s.sname
from s
where not exists(select *
                 from p
                 where pnum not in (select pnum
                                    from sp
                                    where sp.pnum = p.pnum
                                      and sp.snum = s.snum)
    );

--Elenca i nomi dei fornitori che forniscono il prodotto ‘P1’.
select s.sname
from s
where exists(select *
             from sp
             where s.snum = sp.snum
               and pnum = 'P1');


--Elenca i nomi dei fornitori che non forniscono il prodotto ‘P4’.
select s.sname
from s
where not exists(select *
                 from sp
                 where s.snum = sp.snum
                   and pnum = 'P4');

--Trovare i nomi dei fornitori che forniscono almeno tutti i prodotti forniti da S2 (senza utilizzare operatori aggregati)
--(suggerimento: scrivere prima una query che trovi i prodotti forniti da S2 ma non da S3 e poi generalizzare su ogni fornitore).

--Sugerrimento


select sp.pnum
from sp
where snum = 'S2'
    except
select sp.pnum
from sp
where snum = 'S3';

--FINALE
select s.sname, s.snum
from s
where not exists(select sp.pnum
                 from sp
                 where snum = 'S2'
                     except
                 select sp.pnum
                 from sp
                 where sp.snum = s.snum);

SELECT S.SName
FROM S
WHERE NOT EXISTS(
        SELECT *
        FROM SP
        WHERE SP.SNum = 'S2'
          AND SP.PNum NOT IN (SELECT SP1.PNum
                              FROM SP SP1
                              WHERE SP1.SNum = S.SNum));


