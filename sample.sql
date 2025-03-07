/*-Pobiera ID użytkownika (user_id), jego nazwę (user_name), ID zamówienia (order_id) i kwotę zamówienia (total_amount). */
SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    o.id AS order_id, 
    o.total_amount 
FROM users u
JOIN orders o ON u.id = o.user_id;
/* drugi sql Pobiera tylko zamówienia oczekujące
SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    u.email AS user_email, 
    o.id AS order_id, 
    o.total_amount, 
    o.status 
FROM users u
JOIN orders o ON u.id = o.user_id
WHERE o.status = 'pending';  

/* trzeci sql Pobiera tylko zamówienia zrealizowane
SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    o.id AS order_id, 
    o.total_amount, 
    p.payment_method, 
    p.payment_status, 
    p.payment_date
FROM users u
JOIN orders o ON u.id = o.user_id
JOIN payments p ON o.id = p.order_id
WHERE o.status = 'completed';
