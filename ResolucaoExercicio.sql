--1° Exercício
SELECT Nome,Ano FROM Filmes

--2° Exercício
SELECT Nome,Ano FROM Filmes
ORDER BY Ano ASC

--3° Exercício
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

--4° Exercício
SELECT * FROM Filmes
WHERE Ano = 1997

--5° Exercício
SELECT * FROM Filmes
WHERE Ano > 2000

--6° Exercício 
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7° Exercício
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano ORDER BY Quantidade DESC, Ano DESC;

--8° Exercício
SELECT * FROM Atores
WHERE Genero = 'M'

--9° Exercício
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC 

--10° Exercício
SELECT Filmes.Nome, Generos.Genero FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11° Exercício
SELECT Filmes.Nome, Generos.Genero FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
WHERE Genero = 'Mistério'

--12° Exercício
SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
