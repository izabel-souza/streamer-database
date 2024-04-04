-- CONSULTA 1: Dado uma empresa, identificar quais 
-- são canais patrocinados e os valores de patrocínio pagos

SELECT e.nome AS 'Empresa',
       p.nome_canal AS 'Canal', 
       p.valor_patrocinio AS 'Valor do patrocinio'
FROM patrocinio AS p
INNER JOIN empresa AS e ON p.n_sequencial_empresa = e.n_sequencial;



-- CONSULTA 2: Dado um usuário, descobrir de quantos canais ele 
-- é membro e a soma do valor desembolsado pelo usuário por mês. 

SELECT m.nick AS 'Nick',
       COUNT(m.nome_canal) AS 'Quantidade de canais',
       SUM(n.valor_mensal) AS 'Valor desembolsado'
FROM membros_inscritos AS m
INNER JOIN nivel AS n ON m.nome_canal = n.nome_canal
GROUP BY m.nick;




-- CONSULTA 3: Listar e ordenar os canais que já receberam doações (quantidade de doações, não é a soma dos valores)

SELECT d.nome_canal AS 'Canal', 
       COUNT(d.n_doação) AS 'Quantidade de doações'
FROM doação AS d
GROUP BY d.nome_canal
ORDER BY COUNT(d.n_doação) DESC;

+-----------------+-------------------------+
| Canal           | Quantidade de doações   |
+-----------------+-------------------------+
| MakeUpJaxa      |                       2 |
| Comedia God     |                       2 |
| TudoSobreSoccer |                       1 |
| Cosplay Maniac  |                       1 |
| FitnessHero     |                       1 |
| ChefChef        |                       1 |
| Hardware Guru   |                       1 |
| Otaku World     |                       1 |
+-----------------+-------------------------+



-- CONSULTA 4:  Dado um vídeo, liste a soma das doações geradas pelos comentários que foram lidos.
SELECT pt.nome AS 'Plataforma',
       c.video_titulo AS 'Titulo do vídeo',
       SUM(p.valor) AS 'Soma das doações'
FROM pagamento AS p
INNER JOIN doação AS d ON p.n_doação = d.n_doação
INNER JOIN comentario AS c ON d.video_titulo = c.video_titulo 
INNER JOIN plataforma AS pt ON c.n_sequencial_plataforma = pt.n_sequencial
WHERE d.status = 'lido'
GROUP BY pt.nome, c.video_titulo, c.data_hora_video;

+---------------+-----------------------------------+--------------------+
| Plataforma    | Titulo do vídeo                   | Soma das doações   |
+---------------+-----------------------------------+--------------------+
| Vlmeo         | Shingeki No Kyojin - Eren cosplay |   66.8499984741211 |
| USTREAM       | Joguei ovo no meu amigo!!         |                 20 |
| Dacast        | Como fazer arroz soltinho         |                 25 |
| Facebook Live | Novos fones da Samsung            |                 55 |
| Facebook Live | O melhor manga de esportes        |                100 |
+---------------+-----------------------------------+--------------------+




-- CONSULTA 5: Listar e ordenar os canais que mais recebem patrocínio e os valores recebidos
SELECT p.nome_canal AS 'Canal',
       COUNT(p.nome_canal) AS 'Quantidade de patrocinios',
       SUM(p.valor_patrocinio) 'Valor total'
FROM patrocinio AS p
GROUP BY p.nome_canal
ORDER BY COUNT(p.nome_canal) DESC;



-- CONSULTA 6:  Listar e ordenar os canais que mais recebem aportes de membros e os valores recebidos.

SELECT m.nome_canal AS 'Canal',
       COUNT(m.nome_canal) AS 'Quantidade de membros',
       SUM(n.valor_mensal) AS 'Total recebido'
FROM membros_inscritos AS m
INNER JOIN nivel AS n ON m.nome_canal = n.nome_canal
       AND m.nivel = n.nivel
       AND m.n_sequencial_plataforma = n.n_sequencial_plataforma
GROUP BY m.nome_canal
ORDER BY SUM(n.valor_mensal) DESC;

+---------------------+-----------------------+----------------+
| Canal               | Quantidade de membros | Total recebido |
+---------------------+-----------------------+----------------+
| Luisa Good Gamer    |                     3 |             55 |
| TudoSobreSoccer     |                     2 |             45 |
| English Know-It-All |                     2 |             45 |
| MakeUpJaxa          |                     2 |             30 |
| Cosplay Maniac      |                     2 |             25 |
| ChefChef            |                     2 |             25 |
| Hardware Guru       |                     1 |             25 |
| FitnessHero         |                     1 |             25 |
| Comedia God         |                     3 |             15 |
| Otaku World         |                     1 |             15 |
+---------------------+-----------------------+----------------+


-- CONSULTA 7:  Listar e ordenar os canais que mais receberam doações considerando todos os vídeos. 

SELECT d.nome_canal AS 'Canal', 
       COUNT(d.n_doação) AS 'Quantidade de doações'
FROM doação AS d
GROUP BY d.nome_canal
ORDER BY COUNT(d.n_doação) DESC;

+-----------------+-------------------------+
| Canal           | Quantidade de doações   |
+-----------------+-------------------------+
| MakeUpJaxa      |                       2 |
| Comedia God     |                       2 |
| TudoSobreSoccer |                       1 |
| Cosplay Maniac  |                       1 |
| FitnessHero     |                       1 |
| ChefChef        |                       1 |
| Hardware Guru   |                       1 |
| Otaku World     |                       1 |
+-----------------+-------------------------+


-- CONSULTA 9: Listar os canais que mais faturam considerando as três fontes de receita: patrocínio, membros inscritos e doações

SELECT pt.nome AS 'Plataforma',
       f.canal AS 'Canal', 
       ROUND(SUM(valor), 2) as 'Valor'
FROM (
       (SELECT n_sequencial_plataforma as n_plataforma,
               nome_canal as canal,
               SUM(valor_patrocinio) as valor
       FROM patrocinio
       GROUP BY n_sequencial_plataforma, nome_canal)

       UNION ALL

       (SELECT n.n_sequencial_plataforma as n_plataforma,
               n.nome_canal as canal,
               sum(n.valor_mensal) as valor
       FROM nivel as n
       INNER JOIN membros_inscritos as mi ON mi.nivel = n.nivel 
       AND mi.n_sequencial_plataforma = n.n_sequencial_plataforma
       AND mi.nome_canal = n.nome_canal
       GROUP BY n.nome_canal, n.n_sequencial_plataforma)

       UNION ALL
       
       (SELECT n_sequencial_plataforma as n_plataforma,
               nome_canal as canal,
               SUM(valor) as valor
       FROM pagamento
       GROUP BY n_sequencial_plataforma, nome_canal)) AS f

INNER JOIN plataforma AS pt ON f.n_plataforma = pt.n_sequencial 
GROUP BY pt.nome, f.canal
ORDER BY SUM(f.valor) DESC;
