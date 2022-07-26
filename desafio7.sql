SELECT 
    a.artista, al.album, COUNT(se.seguindo_artistas) as seguidores
FROM
    artista a
        JOIN
    album AS al ON a.artista_id = al.artista_id
        JOIN
    seguindo_artistas AS se ON a.artista_id = se.seguindo_artistas
    group by a.artista, al.album
    order by seguidores desc, artista, album