select * from Filmes
Select * from Generos
Select * from Atores
Select * from FilmesGenero
Select * from ElencoFilme

-- 1 - Buscar o nome e ano dos filmes

Select
	Nome,
	Ano
From Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

Select
	Nome,
	Ano
From Filmes Order By Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

Select * from Filmes where Nome like '%Futuro'

-- 4 - Buscar os filmes lançados em 1997

Select * from Filmes where Ano like '%97'

-- 5 - Buscar os filmes lançados APÓS o ano 2000

Select * from Filmes where Ano like '20%'

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

Select * From Filmes
Where Duracao > 100 and Duracao < 150
Order by Duracao asc;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select Ano, count (*) as QuantidadedeFilmes
from Filmes
Group by Ano
Order by QuantidadedeFilmes desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

Select
	PrimeiroNome,
	UltimoNome,
	Genero
from Atores
Where Genero like 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

Select
	PrimeiroNome,
	UltimoNome,
	Genero
from Atores
Where Genero like 'F'
Order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

--SELECT Clientes.Nome, Pedidos.Valor
--FROM Clientes
--INNER JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID;

select Filmes.Nome, Generos.Genero
from Filmes
Inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
Inner join Generos on FilmesGenero.IdGenero = Generos.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

select Filmes.Nome, Generos.Genero
from Filmes
Inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
Inner join Generos on FilmesGenero.IdGenero = Generos.Id
Where Generos.Genero like 'Mistério%';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM 
    Filmes
INNER JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id;