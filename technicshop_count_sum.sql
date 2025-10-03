SELECT 
    u.name AS user_name,
    COALESCE(SUM(p.price * oi.count), 0) AS total_sum
FROM User u
LEFT JOIN `Order` o ON u.id = o.u_id
LEFT JOIN OrderItem oi ON o.id = oi.ord_id
LEFT JOIN Product p ON oi.prod_id = p.id
WHERE u.id = 1
GROUP BY u.id, u.name;
