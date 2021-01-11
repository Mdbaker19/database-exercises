use codeup_test_db;

select 'all albums' as '';
select * from albums;
update albums
set sales = (sales * 10);
select 'all albums 10x popularity' as '';
select * from albums;

select 'albums released before 1980' as '';
select * from albums where release_date < 1980;

select 'albums released before 1980 now set to 1800s' as '';
update albums
set release_date = 1800
where release_date < 1980;
select * from albums where release_date < 1900;


select 'albums by michael jackson' as '';
select * from albums where artist = 'Michael Jackson';
select 'albums by michael jackson now named peter jackson' as '';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
select * from albums where artist = 'Peter Jackson';
