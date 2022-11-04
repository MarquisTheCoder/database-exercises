use codeup_test_db;

drop table albums;

create table albums(
                id int unsigned not null auto_increment,
                artist text, name text, release_date timestamp,
                sales float, genre text, primary key(id)
                );



