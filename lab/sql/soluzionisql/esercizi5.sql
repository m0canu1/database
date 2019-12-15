--Elencare i fornitori che forniscono parti disponibili a Londra (sia con costrutto in/not in che con costrutto any/all)
select distinct snum
from sp
where snum in (select snum
               from sp
                        join p on sp.pnum = p.pnum
               where city = 'London');

select distinct snum
from sp
where snum = any (select snum
                  from sp
                           join p on sp.pnum = p.pnum
                  where city = 'London');


--Elencare le città in cui non vi sono fornitori con status minore della media (sia con costrutto in/not in che con costrutto any/all).

select distinct city
from s
where city not in (select city
                   from s
                   where status < (select avg(status) from s));

select distinct city
from s
where city <> all (select city
                   from s
                   where status < (select avg(status) from s));