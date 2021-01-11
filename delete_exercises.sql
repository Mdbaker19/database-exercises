use codeup_test_db;

select 'albums released after 1991 to be deleted' as '';
select * from albums where release_date > 1991;
DELETE from albums where release_date > 1991;

select 'albums genre disco to be deleted' as '';
SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

select 'albums by Nirvana to be deleted' as '';
SELECT * FROM albums WHERE artist = 'Nirvana';
DELETE FROM albums WHERE artist = 'Nirvana';

SELECT 'albums with deletes applied';
SELECT * FROM albums;