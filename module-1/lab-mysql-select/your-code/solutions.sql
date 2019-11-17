-- CHALLENGE 1
select authors.au_id as author_id, 
authors.au_lname as last_name, 
authors.au_fname as first_name, 
titles.title,
publishers.pub_name as publisher
from titles
JOIN titleauthor
on titles.title_id = titleauthor.title_id
JOIN authors
on authors.au_id = titleauthor.au_id
JOIN publishers
on publishers.pub_id = titles.pub_id;

-- CHALLENGE 2

select authors.au_id as author_id, 
authors.au_lname as last_name, 
authors.au_fname as first_name, 
count(titles.title) as title_count,
publishers.pub_name as publisher
from titles
JOIN titleauthor
on titles.title_id = titleauthor.title_id
JOIN authors
on authors.au_id = titleauthor.au_id
JOIN publishers
on publishers.pub_id = titles.pub_id
GROUP BY author_id, publisher
ORDER BY authors.au_id DESC;

-- CHALLENGE 3

select authors.au_id as author_id, 
authors.au_lname as last_name, 
authors.au_fname as first_name, 
sum(sales.qty) as total
from sales
JOIN titles
ON sales.title_id = titles.title_id
JOIN titleauthor
on titles.title_id = titleauthor.title_id
JOIN authors
on authors.au_id = titleauthor.au_id
GROUP BY authors.au_id
ORDER BY total DESC
LIMIT 3;

-- CHALLENGE 4

select authors.au_id as author_id, 
authors.au_lname as last_name, 
authors.au_fname as first_name, 
COALESCE(sum(sales.qty),0) as total
from authors
LEFT JOIN titleauthor
on authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
LEFT JOIN sales
on sales.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY total DESC;






