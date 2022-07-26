SELECT 
    artista AS artista, al.album
FROM
    artista a
        JOIN
    album AS al ON a.artista_id = al.artista_id
WHERE
    artista = 'Walter Phoenix'
    order by album