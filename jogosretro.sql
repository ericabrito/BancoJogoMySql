CREATE TABLE grupos(
id_grupo INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
numero_membros INT
);

CREATE TABLE jogos(
id_jogo INT AUTO_INCREMENT PRIMARY KEY,
nome_jogo VARCHAR(100)
);

select * from jogos;
INSERT INTO jogos (id_jogo, nome_jogo) VALUES
(1, 'bomberman'),
(2, 'street fighter II'),
(3, 'super mario kart'),
(4, 'ultimate mortal kombat 3'),
(5, 'instinto assasino');


CREATE TABLE jogadores(
id_jogador INT AUTO_INCREMENT PRIMARY KEY,
id_grupo VARCHAR(100),
nome_jogador VARCHAR(100)
);

select * FROM jogadores;
INSERT INTO jogadores (id_jogador, id_grupo, nome_jogador) VALUES
(1, 1, 'Rafael'),
(2, 1, 'Gustavo de Lima'),
(3, 1, 'Gustavo Rodrigues'),
(4, 2, 'Lucas'),
(5, 2, 'Maria'),
(6, 2, 'Greg'),
(7, 3, 'Celicia'),
(8, 3, 'Eduarda'),
(9, 3, 'Erica'),
(10, 5, 'Richard'),
(11, 5, 'Gustavo Alex'),
(12, 5, 'Arthur'),
(13, 4, 'Vitoria'),
(14, 4, 'Livia'),
(15, 4, 'Gustavo');


CREATE TABLE resultados(
id_resultado INT AUTO_INCREMENT PRIMARY KEY,
id_jogador1 INT,
id_jogador2 INT,
id_jogo INT,
pontuacao_jogador1 INT,
pontuacao_jogador2 INT,
data_partida DATE
);

 select * from resultados;
 
INSERT INTO resultados (id_resultado, id_jogador1, id_jogador2, id_jogo, pontuacao_jogador1, pontuacao_jogador2, data_partida) VALUES
(1, 1, 5, 1, 175, 125, '2026-06-08'),
(2, 7, 10, 1, 0, 150, '2026-06-08'),
(3, 3, 15, 1, 150, 50, '2026-06-08'),
(4, 14, 12, 1, 0, 150, '2026-06-08'),
(5, 2, 11, 1, 175, 125, '2026-06-08'),
(6, 8, 13, 1, 125, 175, '2026-06-08'),
(7, 10, 4, 1, 150, 50, '2026-06-08'),
(8, 6, 15, 1, 100, 150, '2026-06-08'),
(9, 1, 9, 1, 150, 0, '2026-06-08'),
(10, 8, 5, 1, 150, 100, '2026-06-08'),
(11, 5, 1, 2, 0, 100, '2026-06-09'),
(12, 7, 11, 2, 0, 100, '2026-06-09'),
(13, 2, 14, 2, 50, 100, '2026-06-09'),
(14, 15, 12, 2, 0, 100, '2026-06-09'),
(15, 3, 10, 2, 100, 0, '2026-06-09'),
(16, 13, 9, 2, 100, 50, '2026-06-09'),
(17, 12, 4, 2, 100, 0, '2026-06-09'),
(18, 6, 14, 2, 0, 100, '2026-06-09'),
(19, 8, 1, 2, 100, 50, '2026-06-09'),
(20, 8, 5, 2, 50, 100, '2026-06-09'),
(21, 1, 4, 3, 50, 0, '2026-06-09'),
(22, 7, 12, 3, 0, 50, '2026-06-09'),
(23, 3, 13, 3, 0, 50, '2026-06-09'),
(24, 15, 12, 3, 0, 50, '2026-06-09'),
(25, 1, 10, 3, 50, 0, '2026-06-09'),
(26, 14, 9, 3, 50, 0, '2026-06-09'),
(27, 12, 6, 3, 0, 50, '2026-06-09'),
(28, 5, 15, 3, 0, 50, '2026-06-09'),
(29, 1, 8, 3, 50, 0, '2026-06-09'),
(30, 8, 4, 3, 0, 50, '2026-06-09'),
(31, 3, 6, 4, 100, 0, '2026-06-09'),
(32, 7, 11, 4, 50, 100, '2026-06-09'),
(33, 1, 14, 4, 0, 100, '2026-06-09'),
(34, 15, 10, 4, 100, 0, '2026-06-09'),
(35, 2, 11, 4, 50, 100, '2026-06-09'),
(36, 13, 9, 4, 100, 50, '2026-06-09'),
(37, 12, 5, 4, 100, 50, '2026-06-09'),
(38, 4, 14, 4, 50, 100, '2026-06-09'),
(39, 1, 8, 4, 125, 25, '2026-06-09'),
(40, 9, 6, 4, 0, 100, '2026-06-09'),
(41, 3, 5, 5, 100, 0, '2026-06-09'),
(42, 7, 12, 5, 50, 100, '2026-06-09'),
(43, 1, 14, 5, 50, 100, '2026-06-09'),
(44, 15, 10, 5, 100, 50, '2026-06-09'),
(45, 3, 11, 5, 100, 50, '2026-06-09'),
(46, 13, 9, 5, 100, 0, '2026-06-09'),
(47, 12, 6, 5, 50, 100, '2026-06-09'),
(48, 4, 14, 5, 100, 50, '2026-06-10'),
(49, 3, 7, 5, 100, 50, '2026-06-10'),
(50, 8, 5, 5, 50, 100, '2026-06-10');


INSERT INTO grupos (id_grupo, nome, numero_membros) VALUES
(1,'Us Guri', 3),
(2, 'tropa rumbar', 3),
(3, 'cyber queens', 3),
(4, 'olympus', 3),
(5, 'gamers of legends', 3);

-- ATIVIDADE 1
SELECT jogadores.nome_jogador, grupos.nome FROM jogadores,grupos
WHERE jogadores.id_grupo = grupos.id_grupo;

-- ATIVIDADE 2
 -- nomeJogo, nomeJ1, pontuacaoJ1, nomeJ2, pontuacaoJ2
SELECT j.nome_jogo, j1.nome_jogador, r.pontuacao_jogador1, j2.nome_jogador, r.pontuacao_jogador2
FROM resultados r, jogadores j1, jogadores j2, jogos j
where r.id_jogador1 = j1.id_jogador AND r.id_jogador2 = j2.id_jogador AND j.id_jogo = r.id_jogo;

-- ATVIVIDADE 3
SELECT g.nome AS nome_grupo, j.nome_jogador, SUM(r.pontuacao_jogador1) AS pontos_parciais
FROM grupos g, jogadores j, resultados r
WHERE j.id_grupo = g.id_grupo AND r.id_jogador1 = j.id_jogador
GROUP BY g.nome, j.nome_jogador;

-- --------------------------------------------------------------------

-- Atividade 4
SELECT jg.nome_jogo,j.nome_jogador,r1.pontuacao_jogador1 AS maior_pontuacao
FROM resultados r1,jogos jg,jogadores j
WHERE r1.id_jogo = jg.id_jogo AND r1.id_jogador1 = j.id_jogador AND r1.pontuacao_jogador1 = 
(SELECT MAX(r2.pontuacao_jogador1) 
FROM resultados r2 
WHERE r2.id_jogo = r1.id_jogo);

-- Atividade 5
SELECT grupos.nome,(SUM(resultados.pontuacao_jogador1) + SUM(resultados.pontuacao_jogador2))  AS media_jogadores
FROM grupos,jogadores,resultados
WHERE grupos.id_grupo = jogadores.id_grupo
AND (jogadores.id_jogador = resultados.id_jogador1 OR jogadores.id_jogador = resultados.id_jogador2)
GROUP BY grupos.id_grupo,grupos.nome;

-- Atividade 6
SELECT id_grupo,MIN(pontuacao_jogador2) AS menor,MAX(pontuacao_jogador2) AS maior
FROM resultados, jogadores
WHERE resultados.id_jogador2 = jogadores.id_jogador
GROUP BY id_grupo;

-- Atividade 7
SELECT id_grupo, SUM(pontuacao_jogador2) AS total_j2
FROM resultados, jogadores
WHERE resultados.id_jogador2 = jogadores.id_jogador
GROUP BY id_grupo;






