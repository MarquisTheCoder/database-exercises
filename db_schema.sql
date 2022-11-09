CREATE DATABASE IF NOT EXISTS adlister;

    USE adlister;


    CREATE TABLE IF NOT EXISTS users
    (   user_id int unsigned not null auto_increment,
        email varchar(40) not null,
        password varchar(40),
        primary key(user_id)
    );

    CREATE TABLE IF NOT EXISTS ads
    (
        ad_id int unsigned not null auto_increment,
        title varchar(20) not null,
        description varchar(1000),
        primary key(ad_id)
    );

    CREATE TABLE IF NOT EXISTS categories
    (
        cat_id int unsigned not null auto_increment,
        category varchar(20) not null,
        primary key(cat_id)
    );

    /*Association table*/
    CREATE TABLE IF NOT EXISTS link_users_ads
    (
        user_ad_id int unsigned not null auto_increment,
        user_id int unsigned not null,
        ad_id int unsigned not null,
        creation_date timestamp,
        primary key(user_ad_id),
        foreign key(user_id) references users(user_id),
        foreign key(ad_id) references ads(ad_id)
    );

    /*Association table*/
    CREATE TABLE IF NOT EXISTS link_ads_cats
    (
        ad_cat_id int unsigned not null auto_increment,
        ad_id int unsigned not null,
        cat_id int unsigned not null,
        primary key(ad_cat_id),
        foreign key(ad_id) references ads(ad_id),
        foreign key(cat_id) references categories(cat_id)
    );

