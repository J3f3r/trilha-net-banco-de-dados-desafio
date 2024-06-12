
--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT * 
FROM Filmes 
ORDER BY Ano

--3
SELECT * 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT * FROM Filmes WHERE Ano = 1997

--5
SELECT * 
FROM Filmes 
WHERE Ano > 2000

--6
SELECT * 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7 neste caso não foi ensinado que OB precise de uma função agregada
-- e a coluna Duracao não foi aceita no SELECT
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) desc

--8
SELECT *
FROM Atores
WHERE Genero = 'M'

--9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--12
SELECT
	Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	EF.Papel
FROM Filmes
INNER JOIN ElencoFilme EF ON Filmes.Id = EF.IdFilme
INNER JOIN Atores ON EF.IdAtor = Atores.Id

