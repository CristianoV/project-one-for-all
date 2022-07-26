SELECT 
    MIN(p.valor_plano) AS faturamento_minimo,
    MAX(p.valor_plano) AS faturamento_maximo,
    round(AVG(p.valor_plano), 2) AS faturamento_medio,
    round(SUM(p.valor_plano), 2) AS faturamento_total
FROM
    plano p
JOIN usuario as u
    ON p.plano_id = u.plano_id