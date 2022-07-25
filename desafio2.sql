SELECT
    count(*) as cancoes,
    (
        SELECT count(*)
        FROM SpotifyClone.artista
    ) AS artistas,
        (
        SELECT count(*)
        FROM SpotifyClone.album
    ) AS albuns
FROM SpotifyClone.cancoes