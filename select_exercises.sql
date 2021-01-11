use codeup_test_db;

select 'Pink floyd albums' as '';
select name from albums where artist = 'Pink Floyd';

select 'the year sgt. peppers''s lonely hearts club band was released' as '';
select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'the genre of nevermind' as '';
select genre from albums where name = 'Nevermind';

select 'the albums released in the 90s' as '';
select * from albums where release_date between 1990 and 1999;

select 'the albums with less than 20 mil sales' as '';
select * from albums where sales < 20;

select 'the albums with genre of rock' as '';
select * from albums where genre = 'rock';