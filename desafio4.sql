SELECT u.usuario as usuario, 
IF(YEAR(max(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo')
AS condicao_usuario
FROM usuario u
JOIN historico as h
ON u.usuario_id = h.usuario_id
group by u.usuario_id
order by u.usuario;