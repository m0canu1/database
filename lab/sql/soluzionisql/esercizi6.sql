-- 1. Elencare tutti i fornitori il cui nome contiene una h. 
select * 
from s
where sname like '%h%' or sname like '%H%';
-- 2. Elencare tutti i fornitori il cui nome contiene una s. 
select * 
from s
where sname like '%s%' or sname like '%S%';
-- 3. Elencare tutti i fornitori che hanno nel nome una a e terminano con una s.
select * 
from s
where sname like '%a%s';
-- 4. Elencare tutti i fornitori il cui nome contiene sia una a che una e.
select * 
from s
where sname like '%a%' and sname like '%s%';
-- 5. Elencare tutti i fornitori il cui nome contiene tutte le vocali. 
select * 
from s
where sname like '%a%' and sname like '%e%' and sname like '%i%' and sname like '%o%' and sname like '%u%';
-- 6. Elencare tutti i fornitori il cui nome coincide con il nome di una parte. 
select * 
from s,p
where sname = pname;
-- 7. Elencare tutte le parti con un nome lungo almeno 4 caratteri.
select *
from p
where pname like '%____%';