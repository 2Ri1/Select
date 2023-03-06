--1. Название и год выхода альбомов, вышедших в 2018 году.

SELECT album_title, album_year FROM Album
WHERE album_year >= '01.01.2018';

--2. Название и продолжительность самого длительного трека.

SELECT song_title, song_length FROM Song
ORDER BY song_length DESC
LIMIT 1;

--3. Название треков, продолжительность которых не менее 3,5 минут.

SELECT song_title, song_length FROM Song
WHERE song_length >= 3.5;

--4. Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT compilation_title, compilation_year FROM Compilation
WHERE compilation_year BETWEEN '01.01.2018' AND '31.12.2020'

--5. Исполнители, чьё имя состоит из одного слова.

SELECT singer_name FROM Singer
WHERE singer_name LIKE '%'

--6. Название треков, которые содержат слово «мой» или «my».

SELECT song_title, song_length FROM Song
WHERE song_title LIKE '%мой%' 
      OR song_title LIKE '%моё%' 
      OR song_title LIKE '%my%' 
