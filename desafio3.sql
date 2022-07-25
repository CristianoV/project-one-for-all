SELECT usuario.usuario as usuario, COUNT(historico.usuario_id) as qtde_musicas_ouvidas, round(sum(cancoes.duracao_segundos / 60), 2) as total_minutos
from usuario
JOIN historico
JOIN cancoes
on usuario.usuario_id = historico.usuario_id and historico.cancoes_id = cancoes.cancoes_id
group by usuario
order by usuario.usuario asc