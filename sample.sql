/*-Pobiera ID użytkownika (user_id), jego nazwę (user_name), ID zamówienia (order_id) i kwotę zamówienia (total_amount). */
SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    o.id AS order_id, 
    o.total_amount 
FROM users u
JOIN orders o ON u.id = o.user_id;