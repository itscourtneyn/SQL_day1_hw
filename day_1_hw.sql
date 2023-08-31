-- 1 How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'Wahlberg'
-- There are 2 actors with last name Wahlberg


--2 How many payments were made between $3.99 and $5.99?
select customer_id, amount
from payment 
where amount between 3.99 and 5.99
-- There are 2 payments between 3.99 and 5.99


--3 What film does the store have the most of? (search in inventory)
select film_id, count(film_id) 
from inventory 
group by film_id
order by count(film_id) desc 
-- There are 72 films that the store has 8 copies of.


--4 How many customers have the last name ‘William’?
select first_name, last_name 
from customer
where last_name  like 'William'

select first_name, last_name
from customers
where last_name  like 'William'
-- There are no customers with the last name William


--5 What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id)
from rental
group by staff_id 
order by count(staff_id);
-- Staff_id number 1 (Mike) sold th emost at 8,040.


--6 How many different district names are there?
select count(distinct district)
from address;
-- There are 378 different districts 


--7 What film has the most actors in it? (use film_actor table and get film_id)
select count(distinct actor_id), film_id
from film_actor 
group by film_id 
order by count(actor_id) desc;
-- film_id 508 "Lambs Cincinatti" has the most actors in it with 15 different actors.


--8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select store_id, last_name 
from customer c 
where last_name like '%es'
order by store_id
-- There are 13 customers with last name ending in 'es' at store 1


--9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids 
-- between 380 and 430? (use group by and having > 250)
select count(amount), amount, customer_id
from payment 
where customer_id between 380 and 430
group by amount, customer_id 
having count(amount) > 250
-- There are none


--10 Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(distinct rating)
from film f 
-- There are 5 different rating categories

select rating, count(rating)
from film f
group by rating 
order by count (rating) desc
-- PG-13 has the highest amount of films at 224.