SELECT artist_id, name
FROM artists
WHERE death_year IS NOT NULL
AND artist_id NOT IN (SELECT DISTINCT artist_id
                      FROM artworks_artists
                      WHERE artist_id IN (SELECT DISTINCT artist_id
                                          FROM artists
                                          WHERE death_year IS NOT NULL))