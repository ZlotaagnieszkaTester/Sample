/*-Pobiera ID użytkownika (user_id), jego nazwę (user_name), ID zamówienia (order_id) i kwotę zamówienia (total_amount). */
SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    o.id AS order_id, 
    o.total_amount 
FROM users u
JOIN orders o ON u.id = o.user_id;
/* drugi sql
SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    u.email AS user_email, 
    o.id AS order_id, 
    o.total_amount, 
    o.status 
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.status = 'pending';  -- Pobiera tylko zamówienia oczekujące