-- 1 Exibindo o nome e ano dos filmes!
SELECT 
    Nome,
	Ano
FROM Filmes 


-- 2 BUscando o nome e ano dos filmes por ordem crescente!
SELECT 
    Nome, 
	Ano 
FROM Filmes
ORDER BY Ano ASC;  --order by para ordem

-- 3 Buscando pelo filme de volta para o futuro, trazendo seu nome, ano e a duração
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta Para o Futuro';

-- 4 BUscando os Filmes lançados em 1997
SELECT
    Nome,
    Duracao,
    Ano
FROM Filmes 
WHERE Ano = 1997;

-- 5 Buscando os filmes lançados APÓS o ano 2000
SELECT 
	Nome,
	Duracao,
	Ano
FROM FIlmes
WHERE Ano > 2000;

-- 6 Buscando os filmes com a duracao maior que 100 e menor que 150min, ordenando pela duracao em ordem crescente
SELECT 
	Nome,
	Duracao,
	Ano
FROM FIlmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 Buscando a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	--COUNT para contar quantidade lançada no ano, E (AS) é usado como um alias.
	Ano, COUNT(*) AS Quantidade, SUM(Duracao) AS DuracaoTotal
FROM FIlmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

-- 8 Buscando os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

-- 9 Buscando os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 Buscando o nome do filme e o gênero
SELECT 
    f.Nome AS NomeFilme,
    g.Genero AS Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id
ORDER BY 
    f.Nome;

-- 11 BuscaNDO o nome do filme e o gênero do tipo "Mistério"
SELECT 
    f.Nome AS NomeFilme,
    g.Genero AS Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id
WHERE 
    g.Genero = 'Mistério'
ORDER BY 
    f.Nome;

-- 12 Buscando o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel dentro do filme
SELECT 
    f.Nome AS NomeFilme,
    a.PrimeiroNome,
    a.UltimoNome,
    e.Papel
FROM 
    dbo.Filmes f
INNER JOIN 
    dbo.ElencoFilme e ON f.Id = e.IdFilme
INNER JOIN 
    dbo.Atores a ON e.IdAtor = a.Id
ORDER BY 
    f.Nome, a.UltimoNome, a.PrimeiroNome;



SELECT * FROM Filmes
SELECT * FROM Atores
SELECT * FROM FilmesGenero
SELECT * FROM Generos