use codeup_test_db;

/*all albums on the table*/
select * from albums;

/*moving albums*/
update albums set release_date = '1800' where release_date < 1980;
select release_date from albums;
/*updating michael jackson*/
update albums set artist = 'Peter Jackson'  where artist like '%Michael Jackson%'
select * from albums where artist like '%Peter Jackson%'
/*updating sales*/
update albums set sales = (sales * 10) artist is not null ;
select sales from albums;