create table players (
	Id	serial primary key,
	Year int,
	Team varchar(60),
	NAME varchar(60),
	Number int,
	Position varchar(20),
	Heignt float,
	Weight_in_lbs int,
	Age	int,
	Exp_in_years int,
	College	varchar(60),
	FirstName varchar(60),
	LastName varchar(60)
)

select * from players

copy players from 'D:\SQL\players_data_copy.csv' DELIMITER ',' csv header

select * from players

alter table players rename column Heignt to Height
 
--Query1 to Sort average age by team where age is greater than 25
select team, avg(age) as average_age
from players
where age > 25
group by team
having avg(age) > 30

	
--Query2 For total weight by position where weight is more than 200 lbs
select position, sum(weight_in_lbs) as total_weight
from players
where weight_in_lbs > 200
group by position
having sum(weight_in_lbs) > 1000

	
--Query3 For maximum height by team where height is greater than 6.0 feet
select team, max(heignt) as max_height
from players
where heignt > 6.0
group by team
having max(heignt) > 6.5;


--Query4 For average experience by position where experience is more than 2 years
select position, avg(exp_in_years) as average_experience
from players
where exp_in_years > 2
group by position
having avg(exp_in_years) > 5;


--Query5 for number of players by college where the number of players is more than 5
select college, count(id) as player_count
from players
group by college
having count(id) > 5;


--Query6 For sum of player numbers by team where player number is more than 10
select team, sum(number) as total_numbers
from players
where number > 10
group by team
having sum(number) > 50;


--Query7 For minimum age by position where age is less than 30
select position, min(age) as min_age
from players
where age < 30
group by position
having min(age) < 25;


--Query8 For total weight by team where weight is above 180 lbs
select team, sum(weight_in_lbs) as total_weight
from players
where weight_in_lbs > 180
group by team
having sum(weight_in_lbs) > 2000

	
--Query9 For average height by college where height is hreater than 5.8 feet
select college, avg(height) as average_height
from players
where height > 5.8
group by college
having avg(height) > 6.0

	
--Query10 For Number of players by year where number of players is greater than 10
select year, count(id) as player_count
from players
group by year
having count(id) > 10



