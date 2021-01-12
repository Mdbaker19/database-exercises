use codeup_test_db;

select name AS 'Pink floyd albums'
from albums where artist = 'Pink Floyd';

select release_date AS 'the year sgt. peppers''s lonely hearts club band was released'
from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre AS 'the genre of nevermind'
from albums where name = 'Nevermind';

select name as 'the albums released in the 90s'
from albums where release_date between 1990 and 1999;

select NAME AS 'the albums with less than 20 mil sales'
from albums where sales < 20;

select name as 'the albums with genre of rock'
from albums where genre = 'Rock';