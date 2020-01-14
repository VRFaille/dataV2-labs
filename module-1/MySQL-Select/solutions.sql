use publications;

select a.au_id as "Author ID", au_lname as "Last Name", au_fname as "First Name", count(title) as "Count Title", pub_name as "Publisher Name"
from authors a
left join titleauthor ta 
on a.au_id = ta.au_id
left join titles t
on ta.title_id = t.title_id
left join publishers pu
on t.pub_id  = pu.pub_id
group by a.au_id, pu.pub_id
order by 4 desc;

select *
from sales;

select a.au_id as "Author ID", au_lname as "Last name", au_fname as "First name", sum(qty) as "Quantity"
from authors a 
left join titleauthor as ta 
on a.au_id = ta.au_id
left join titles as t
on ta.title_id = t.title_id
left join sales sa 
on t.title_id = sa.title_id
group by a.au_id
order by 4 desc
limit 3
