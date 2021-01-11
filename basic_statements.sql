USE codeup_test_db;




Select name
from albums
where name = 'Falling into Place';

select 'first record added to albums' as '';
select artist, name
from albums
where id = 1;

update albums
set artist = 'a7x'
where artist = 'Avenged Sevenfold';

update albums
set sales = 1000
where artist = 'a7x';

-- write deletes as selects first
SELECT * from albums where id = 5;

delete from albums where id = 5;

-- delete every record in the table
truncate albums;