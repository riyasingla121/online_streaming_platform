#-------------------------->
create database streaming_platform;
use streaming_platform;
create table users (user_id int primary key,name varchar(50) not null,
email varchar(100) ,country varchar(20),signup_date date,
constraint uni_email unique(email));
create table subscription (sub_id int primary key,user_id int,
plan_type varchar(20),price decimal(6,2),
start_date date ,end_date date,
constraint fk_user foreign key (user_id)
references users (user_id));
create table movies (movie_id int primary key,title varchar(100),
genre varchar(50),release_year int,duration int);
create table watch_history (watch_id int primary key,user_id int,movie_id int,
watch_date date,watch_time int,
constraint fk_8 foreign key (user_id)
references users (user_id),
constraint fk9 foreign key (movie_id)
references movies (movie_id));
create table ratings (rating_id int primary key,user_id int,
movie_id int,rating int ,review_date date,
constraint fk_1 foreign key(user_id)
references users (user_id),
constraint fk_2 foreign key(movie_id)
references movies (movie_id),
constraint check_rating check (rating between 1 and 5));
INSERT INTO Users VALUES
(1,"kapil joshi","kapil@gmail.com","usa","2023-05-05"),
(2,'Meera Patel','meera@gmail.com','India','2024-01-08'),
(3,'James Wilson','james@gmail.com','USA','2024-01-10'),
(4,'Olivia Brown','olivia@gmail.com','UK','2024-01-12'),
(5,'Harsh Gupta','harsh@gmail.com','India','2024-01-15'),
(6,'Simran Kaur','simran@gmail.com','India','2024-01-18'),
(7,'Kevin Lee','kevin@gmail.com','Singapore','2024-01-20'),
(8,'Fatima Khan','fatima@gmail.com','UAE','2024-01-22'),
(9,'Ryan Cooper','ryan@gmail.com','Canada','2024-01-25'),
(10,'Aditi Sharma','aditi@gmail.com','India','2024-01-28'),
(11,'Karan Malhotra','karan@gmail.com','India','2023-11-05'),
(12,'Anjali Verma','anjali@gmail.com','India','2023-11-10'),
(13,'Michael Scott','michael@gmail.com','USA','2023-11-15'),
(14,'Jessica Smith','jessica@gmail.com','UK','2023-11-20'),
(15,'Ravi Kumar','ravi@gmail.com','India','2023-11-25'),
(16,'Pooja Sharma','pooja@gmail.com  ','India','2023-12-01'),
(17,'Daniel Lee','daniel@gmail.com','Singapore','2023-12-05'),
(18,'Sara Ali','saraali@gmail.com','UAE','2023-12-10'),
(19,'Chris Evans','chris@gmail.com','Canada','2023-12-15'),
(20,'Nikita Kapoor','nikita@gmail.com','India','2023-12-20');
INSERT INTO Subscription VALUES
(1,1,'Basic',199,'2024-01-01','2024-02-01'),
(2,2,'Premium',499,'2024-01-03','2024-02-03'),
(3,3,'Standard',299,'2024-01-05','2024-02-05'),
(4,4,'Premium',499,'2024-01-07','2024-02-07'),
(5,5,'Basic',199,'2024-01-09','2024-02-09'),
(6,6,'Standard',299,'2024-01-11','2024-02-11'),
(7,7,'Premium',499,'2024-01-13','2024-02-13'),
(8,8,'Basic',199,'2024-01-15','2024-02-15'),
(9,9,'Standard',299,'2024-01-17','2024-02-17'),
(10,10,'Premium',499,'2024-01-19','2024-02-19'),
(11,11,'Basic',199,'2024-02-01','2024-03-01'),
(12,12,'Premium',499,'2024-02-03','2024-03-03'),
(13,13,'Standard',299,'2024-02-05','2024-03-05'),
(14,14,'Premium',499,'2024-02-07','2024-03-07'),
(15,15,'Basic',199,'2024-02-09','2024-03-09'),
(16,16,'Standard',299,'2024-02-11','2024-03-11'),
(17,17,'Premium',499,'2024-02-13','2024-03-13'),
(18,18,'Basic',199,'2024-02-15','2024-03-15'),
(19,19,'Standard',299,'2024-02-17','2024-03-17'),
(20,20,'Premium',499,'2024-02-19','2024-03-19');
INSERT INTO Movies VALUES
(1,'Ocean Mystery','Thriller',2024,128),
(2,'Galaxy War','Sci-Fi',2024,142),
(3,'Broken Hearts','Romance',2023,118),
(4,'The Jungle King','Adventure',2022,125),
(5,'Dark Shadows','Horror',2024,105),
(6,'Laugh Out Loud','Comedy',2023,95),
(7,'Hidden Truth','Crime',2024,130),
(8,'Dream Journey','Drama',2022,115),
(9,'Final Battle','Action',2024,150),
(10,'Silent Night','Mystery',2023,120),
(11,'Cyber City','Sci-Fi',2024,145),
(12,'The Lost Treasure','Adventure',2023,130),
(13,'Heart Beats','Romance',2024,115),
(14,'Deadly Escape','Thriller',2023,125),
(15,'Ghost Mansion','Horror',2024,105),
(16,'Fun Unlimited','Comedy',2023,98),
(17,'Justice League','Action',2024,150),
(18,'Life Journey','Drama',2023,120),
(19,'Secret Agent','Crime',2024,135),
(20,'Moon Mission','Sci-Fi',2025,140);
INSERT INTO Watch_History VALUES
(11,11,11,'2024-02-10',120),
(12,12,12,'2024-02-11',135),
(13,13,13,'2024-02-12',110),
(14,14,14,'2024-02-13',125),
(15,15,15,'2024-02-14',100),
(21,16,16,'2024-02-15',95),
(22,17,17,'2024-02-16',120),
(23,18,18,'2024-02-17',110),
(24,19,19,'2024-02-18',145),
(25,20,20,'2024-02-19',115),
(26,11,11,'2024-02-20',140),
(27,12,12,'2024-02-21',125),
(28,13,13,'2024-02-22',100),
(29,14,14,'2024-02-23',120),
(30,15,15,'2024-02-24',90),
(31,16,16,'2024-02-25',85),
(32,17,17,'2024-02-26',150),
(33,18,18,'2024-02-27',110),
(34,19,19,'2024-02-28',130),
(35,10,20,'2024-02-29',135),
(36,8,11,'2024-03-01',140),
(37,2,12,'2024-03-02',125),
(38,3,13,'2024-03-03',110),
(39,4,14,'2024-03-04',120),
(40,5,15,'2024-03-05',100);
INSERT INTO Ratings VALUES
(21,11,11,5,'2024-02-20'),
(22,12,12,4,'2024-02-21'),
(23,13,13,3,'2024-02-22'),
(24,14,14,5,'2024-02-23'),
(25,15,15,4,'2024-02-24'),
(26,16,16,5,'2024-02-25'),
(27,17,17,4,'2024-02-26'),
(28,18,18,3,'2024-02-27'),
(29,19,19,5,'2024-02-28'),
(30,20,20,4,'2024-02-29'),
(31,1,20,5,'2024-03-01'),
(32,2,12,4,'2024-03-02'),
(33,3,12,3,'2024-03-03'),
(34,4,14,5,'2024-03-04'),
(35,5,15,4,'2024-03-05'),
(36,6,16,5,'2024-03-06'),
(37,7,17,4,'2024-03-07'),
(38,8,8,3,'2024-03-08'),
(39,9,9,5,'2024-03-09'),
(40,10,10,4,'2024-03-10');
use streaming_platform;
#part 2:
#display all users from india
select * from users
where country="india";
#list all movies released after 2020
select * from movies
where release_year>2020;
#show user who have premimu plan 
select u.name,p.plan_type
from users u
join subscription p 
on u.user_id=p.user_id
where plan_type="premium";
#find movies with duration greater than 120 min
select * from movies
where duration>120;
#display top 10 latest movie
select * from movies
order by release_year desc limit 10;
#part 3
#count no of user per country 
select country,count(*) from users
group by country;
#total revenue genrated from subscription
select sum(price) as total_revenue from subscription;
#calculate average movie duration per genre
select genre,avg(duration) from movies
group by genre;
#find total watch time per user 
select u.name,sum(w.watch_time)
from users u 
join watch_history w 
on u.user_id=w.user_id
group by u.name;
#5 most watched movie
#Part 4
#display user nme,movie title,and watch_date
select u.name,t.title,w.watch_date
from users u 
join watch_history w
on u.user_id=w.user_id
join movies t
on w.movie_id=t.movie_id;
#show movies watch by user from india 
select distinct t.title
from users c
join watch_history w 
on c.user_id=w.user_id
join movies t
on w.movie_id=t.movie_id
where country="india";
#display users and their subscription plan 
select u.name,s.plan_type
from users u
join subscription s
on u.user_id=s.user_id;
#find average rating for each movie 
select t.title,avg(r.rating)
from movies t
join ratings r 
on t.movie_id=r.movie_id
group by t.title; 
#show movie with rating greater than 4:
select t.title,r.rating
from movies t
join ratings r 
on t.movie_id=r.movie_id
where rating>4; 
#part 5
#find movies with rating higher than average ratings:
select title from movies where movie_id in (select movie_id
from ratings group by movie_id having avg(rating)>
(select avg(rating) from ratings));
#find user who watched more movies than the average user:
select user_id,count(*) as watch_count
from watch_history
group by user_id
having count(*)>(select avg(movie_count)from
(select count(*)as movie_count)) ;
#find most watched genre 
select m.genre,count(*) as watch_count
from movies m 
join watch_history w 
on m.movie_id=w.movie_id
group by genre 
order by watch_count desc
limit 1;
#find movie watched by more tha 5 user 
select m.title,count(distinct w.user_id)as watch_count
from movies m
join watch_history w 
on m.movie_id=w.movie_id
group by m.title
having count(distinct w.user_id)>5;
#part 6
#rank movie based on avg ratings 
select m.movie_id,m.title,avg(r.rating),
rank() over(order by avg(r.rating)desc)
from movies m
join ratings r
on m.movie_id=r.movie_id
group by m.movie_id,m.title;
#find top movie per genre :
#calculate running tottal of revenue by subscription date:
select start_date,price,sum(price) over (order by start_date) as total
from subscription;
#part 7:
delimiter //
create  procedure prc_84 (in P_genre varchar(50))
begin
select * from movies 
where genre=P_genre;
end//
delimiter ;
call prc_84 ("action");
#display user name,movie title,rating:
delimiter //
create procedure prc_46 ()
begin
select u.name,m.title,r.rating
from users u 
join ratings r 
on u.user_id=r.user_id
join movies m
on r.movie_id=m.movie_id;
end//
delimiter ;
call prc_46();
#show user who watched movies but did not rate them
delimiter //
create procedure pr_96()
begin
select distinct u.name
from users u
join watch_history w
on u.user_id=w.user_id
left join ratings r
on w.user_id=r.user_id
and w.movie_id=r.movie_id
where r.rating_id is null;
end//
delimiter ;
call pr_96();
#find movies that have never been watched:
delimiter //
create procedure prc_90()
begin
select title from movies 
where movie_id not in (select movie_id from watch_history);
end //
delimiter ;
call prc_90();

#display user name,subscription plan and price 
delimiter //
create procedure display()
begin
select u.name,p.plan_type,p.price
from users u
join subscription p 
on u.user_id=p.user_id;
end//
delimiter ;
call display();
# show top 5 Susers who watched the most movie 
delimiter //
create procedure top5watchers()
begin
select u.name,count(*) as total_movies
from users u 
join watch_history w
on u.user_id=w.user_id
group by u.user_id,u.name
order by total_movies desc
limit 5;
end//
delimiter ;
call top5watchers();
#analyticall queries:
#find the most popular genre based on watch_count:
select g.genre,count(*)as watch_count
from movies g 
join watch_history w 
on g.movie_id=w.movie_id
group by g.genre
order by watch_count desc
limit 1 ;
#show top 3 movies with highest total watch time:
select t.title,sum(w.watch_time) as total_watch
from movies t
join watch_history w 
on t.movie_id=w.movie_id
group by t.title
order by total_watch desc
limit 3;
#find the  user who genrated the highest subscription revenue :
select u.name,sum(s.price) as total_revenue
from users u
join subscription s
on u.user_id=s.user_id
group by u.name
order by total_revenue desc
limit 1;
#calculate percentage of movies that recived ratings :
select 
(count(distinct movie_id)*100.0)/
(select count(*) from movies)
as percentage_rated
from ratings;
#find movies watched in more than one country:
select t.title
from movies t
join watch_history w
on t.movie_id=w.movie_id
join users u
on w.user_id=u.user_id
group by t.title
having count(distinct u.country)>1;
select * from streaming_platform.project;