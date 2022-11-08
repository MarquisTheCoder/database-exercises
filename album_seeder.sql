use codeup_test_db;


--Don't have many albums because there is no longer a certified
--sales column only a 'Certified Copies' column and we were instructed
--not to use the 'Claimed Sales' column.
truncate albums;
insert into albums (artist, name, sales, release_date, genre) values
        ('Michael Jackson', 'Thriller', 50.2, '1982', 'Pop'),
        ('AC/DC', 'Back in Black', 30.1, '1980 ', 'Hard rock'),
        ('Whitney Houston', 'The Bodyguard', 45 , '1992', 'R&B'),
        ('Pink Floyd', 'The Dark Side of the Moon', 45 , '1973', 'Progressive rock'),
        ('Eagles', 'Their Greatest Hits', 41.2, '1976', 'Country rock'),
        ('Eagles', 'Hotel California', 31.8, '1976', 'Soft rock'),
        ('Shania Twain', 'Come On Over', 30.4, '1997', 'Country'),
        ('Fleetwood Mac', 'Rumours', 40 , '1977', 'Soft rock'),
        ('Bee Gees', 'Saturday Night Fever', 40 , '1977', 'Disco'),
        ('Led Zeppelin', 'Led Zeppelin IV', 30.4, '1971', 'Hard rock'),
        ('Michael Jackson', 'Bad', 21.1, '1987', ' rhythm and blues'),
        ('Meat Loaf', 'Bat Out of Hell', 34, '1977', 'Hard rock'),
        ('Alanis Morissette', 'Jagged Little Pill', 33, '1995', 'Alternative rock'),
        ('Celine Dion', 'Falling into You', 32 , '1977', 'Pop'),
        ('Adele', '21', 27.1, '2011', 'Pop'),
        ('The Beatles', '1', 34000000, '1977'),
        ('Metallica', 'Metallica', 31 , '1991', 'Heavy metal'),
        ('Celine Dion', 'Let''s Talk About Love', 31, '1997', 'Pop'),
        ('Bob Marley', 'Legend: The Best of Bob Marley & The Wailers', 30 , '1984', 'Reggae'),
        ('Guns N'' Roses', 'Appetite for Destruction', 30, '1987', 'Hard rock'),
        ('Bruce Springsteen', 'Born in the U.S.A.', 30 , '1984', 'Hard rock'),
        ('ABBA', 'Gold: Greatest Hits', 30 , '1992', 'Pop'),
        ('Dire Straits', 'Brothers in Arms', 30 , '1985', 'Roots rock'),
        ('Santana', 'Supernatural', 30 , '1999 ', 'Latin rock'),
        ('Madonna', 'The Immaculate Collection', 30 , '1984', 'Pop'),
        ('Pink Floyd', 'The Wall', 30 , '1979', 'Progressive rock'),
        ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 30 , '1967', 'Pop'),
        ('Michael Jackson', 'Dangerous', 30 , '1991', 'New jack swing'),
        ('The Beatles', 'Abbey Road', 30 , '1969 ', 'Rock')