

/*For a given ad, what is the email address of the user that created it?*/
SELECT email FROM users
        JOIN link_users_ads AS ua_link
        ON ua_link.user_id = users.user_id
    WHERE ua_link.ad_id = @AdID

/*For a given ad, what category, or categories, does it belong to?*/
SELECT cats.category FROM ads
        JOIN link_ads_cats AS ac_link
        ON ac_link.ad_id = ads.ad_id
        JOIN categories AS cats
        ON cats.cat_id = ac_link.cat_id
    WHERE ads.ad_id = @ad_id;

    SELECT 'category' FROM categories WHERE cat_id IN
        (SELECT cat_id FROM link_ads_cats WHERE ad_id = @ad_id)

/*For a given category, show all the ads that are in that category.*/
select ads.title from categories AS cats
        JOIN link_ads_cats AS ac_link
        ON ac_link.cat_id = cats.cat_id
        JOIN ads ON ads.ad_id = ac_link.ad_id
    WHERE cats.cat_id IN ANY(
                SELECT cat_id FROM categories WHERE
                category = @Category title
            );

/*For a given user, show all the ads they have posted.*/