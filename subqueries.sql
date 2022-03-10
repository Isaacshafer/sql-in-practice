SELECT * FROM invoice 
WHERE invoice_id IN (
  SELECT invoice_id 
  FROM invoice_line
  WHERE unit_price > 1
  );

SELECT * FROM playlist_track
WHERE playlist_id IN (
  SELECT playlist_id FROM playlist
  WHERE name = 'Music'
  );

select name from track
where track_id in (
  select track_id
  from playlist_track 
  where playlist_id = 5
  );

select * from track
where genre_id in (
  select genre_id from genre
  where name = 'Comedy'
  );

select * from track
where album_id in (
  select album_id from album
  where name = 'Fireball'
  );

select * from track
where album_id in (
  select album_id from album
  where artist_id in (
    select artist_id from artist
    where name = 'Queen'
    )
  );