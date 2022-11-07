

use join_test_db;

SELECT u.id as user_id, u.name as user_name, email, r.id as role FROM users as u
    JOIN roles as r ON u.role_id = r.id;