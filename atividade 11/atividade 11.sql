SELECT 
    e.estado,
    COUNT(DISTINCT u.id) AS total_usuarios
FROM usuarios u
JOIN enderecos e ON e.usuario_id = u.id
GROUP BY e.estado
ORDER BY total_usuarios DESC;
