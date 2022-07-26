SELECT c.cancoes as cancao, count(h.cancoes_id) as reproducoes
FROM historico h
JOIN cancoes as c
on c.cancoes_id = h.cancoes_id
group by h.cancoes_id , c.cancoes_id
order by reproducoes desc , cancoes asc limit 2