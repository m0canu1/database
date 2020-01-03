select city
from s
where status >= 10
group by city;

select city, status, count(snum)
from s
where status >= 10
group by city, status;


select city, status, snum, count(snum)
from s
where status >= 10
group by city, status, snum;


--ricava i codici dei prodotti che pesano più di 16 kg E che sono forniti dal fornitore S2
select pnum
from sp
where snum = 'S2'
intersect
select pnum
from p
where weight >= 16;

--ricava i codici dei prodotti che pesano più di 16 kg ma che sono forniti dal fornitore S2
select pnum
from p
where weight > 16
    except
select pnum
from sp
where snum = 'S2';

-- trovare codici dei fornitori che hanno fornito almeno un prodotto di colore rosso e uno di colore verde
select snum
from sp
         join p on sp.pnum = p.pnum
where color = 'Green'
intersect
select snum
from sp
         join p on sp.pnum = p.pnum
where color = 'Red';


select distinct SP1.SNum
from SP SP1
         join P P1 on SP1.PNum = P1.PNum,
     SP SP2
         join P P2 on SP2.PNum = P2.PNum
where SP1.SNum = SP2.SNum
  AND P1.color = 'Red'
  AND P2.color = 'Green';

-- ricavare i codici dei fornitori che NON hanno il valore di status più grande
select snum
from s
where status < any (select status from s);
--quindi seleziono i fornitori che hanno lo status minore di ALMENO UN ALTRO fornitore

--ricavare i codici dei fornitori che hanno dato la fornitura con la più grande quantità di parti
select snum
from sp
where qty >= all (select qty
                  from sp);
--oppure
select snum
from sp
where qty = (select max(qty)
             from sp);

--elencare i fornitori che NON hanno fornito parti blu
select distinct snum
from s
where snum not in (
    select snum --trovo fornitori che hanno venduto parti blu
    from sp
    where pnum in ( --numeri delle parti blu
        select pnum
        from p
        where color = 'Blue'));

--elencare per ogni fornitore tutti i dati anagrafici e la quantità massima fornita
select s.*, coalesce(qty, 0)
from s
         left join sp on s.snum = sp.snum
where sp.snum is null
   or (s.snum, qty) in (
    select snum, max(qty)
    from sp
    group by snum);

--elencare il nome del fornitore e la quantità massima da lui fornita
select sname, maxqty
from s
         left join (
    select snum,
           max(qty) as maxqty --seleziono il massimo per ogni fornitore
    from sp
    group by snum)
    as smax
                   on s.snum = smax.snum;
--oppure
with smax as (select snum, max(qty) as maxqty
              from sp
              group by snum)
select sname, maxqty
from s
         left join smax on s.snum = smax.snum;


--elencare i fornitori e il numero totale di parti fornite
select sname, s.snum, sum(qty)
from s
         left join sp on s.snum = sp.snum
group by sname, s.snum;
--oppure
select snum, (select sum(qty) from sp where sp.snum = s.snum) totqty
from s;