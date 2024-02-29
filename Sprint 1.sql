# ejercicio 2
select company_name, email, country 
from company
order by company_name;
# ejercicio 3
select country 
from company
left join
transaction
on company.id= transaction.company_id
where amount >0
group by country;
# ejercicio 4
select count(distinct country)
from company
left join
transaction
on company.id= transaction.company_id
where amount >0;
# ejercicio 5
select country, company_name
from company
where id = 'b-2354';
#ejercicio 6
select company_name
from company
left join
transaction
on company.id=transaction.company_id
group by company_name
order by avg(amount) desc
limit 1;
# Nivel 2
# ejercicio 1
SELECT * FROM transactions.company;
select id, count(id)
from company
group by id
having count(id)>1;
# ejercicio 2
select date(timestamp), sum(amount)
from transaction
group by date(timestamp)
order by sum(amount) desc
limit 5;
# ejercicio 3
select date(timestamp), sum(amount)
from transaction
group by date(timestamp)
order by sum(amount) asc
limit 5;
#ejercicio 4
select country, avg(amount)
from company
join 
transaction
on company.id=transaction.company_id
group by country
order by avg(amount) desc;
#Nivel 3
# Ejercicio 1
select company_name, phone, country, sum(amount)
from company
join 
transaction
on company.id=transaction.company_id
where amount between 100 and 200
group by company_name, phone, country
order by sum(amount) desc;
#ejercicio 2
select company_name
from company
join 
transaction
on company.id=transaction.company_id
where date(timestamp) in ("2022-03-16","2022-02-28","2022-02-13")
group by company_name;



