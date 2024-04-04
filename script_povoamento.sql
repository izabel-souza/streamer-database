USE projeto_bd;


INSERT INTO moeda (nome, conversao_dolar)
    VALUES
    ("Real", 4.93), 
    ("Dólar Americano", 1), 
    ("Dólar Australiano", 5.52),
    ("Won", 1.31), 
    ("Euro", 0.93), 
    ("Peso Mexicano", 17.35),
    ("Libra", 0.8), 
    ("Peso Argentino", 363.76), 
    ("Libra Egipcia", 30.9),
    ("Iene", 144.86);



INSERT INTO pais (DDI, nome, nome_moeda)
    VALUES 
    (55, "Brasil", "Real"),
    (1, "Estados Unidos", "Dólar Americano"),
    (61, "Austrália", "Dólar Australiano"),
    (82, "Coreia do Sul", "Won"),
    (351, "Portugal", "Euro"),
    (52, "Mexico", "Peso Mexicano"),
    (44, "Inglaterra", "Libra"),
    (54, "Argentina", "Peso Argentino"),
    (20, "Egito", "Libra Egipcia"),
    (81, "Japao", "Iene");
    




INSERT INTO Empresa (n_sequencial, id_nacional, nome, DDI, nome_fantasia)
    VALUES 
    (1, "00.280.273/0002-18", "Samsung", 82, "Samsung"),
    (2, "00.623.904/0001-73", "Apple", 1, "Apple"),
    (3, "13.347.016/0001-17", "Facebook", 1, "Facebook"),
    (4, "07.005.330/0001-19", "Ternium", 54, "Ternium"),
    (5, "20.177.173/0001-97", "Rockstar", 1, "Rockstar"),
    (6, "05.570.714/0001-59", "KaBum", 55, "KaBum"),
    (7, "52.748.096/0001-74 ", "Youtube", 1, "Youtube"),
    (8, "15.831.168/0001-16", "Nike", 1, "Nike"),
    (9, "66.681.974/0001-96", "Nintendo", 81, "Nintendo"),
    (10, "59.104.760/0001-91", "Amazon", 1, "Amazon");




INSERT INTO plataforma (n_sequencial, nome, Data_fundação, Empresa_fundadora, Empresa_responsavel, qtd_usuarios)
    VALUES
    (1, "Twitch", '2011-03-15', 10, 10, 20000000),
    (2,"Vlmeo", '2004-08-22', 9, 10, 1000000),
    (3, "Youtube Live", '2011-11-05', 7, 7, 500000000),
    (4, "Facebook Live", '2015-06-18', 3, 3, 35000000),
    (5, "Zoeplay", '2022-02-09', 6, 6, 100000),
    (6, "Periscope", '2015-09-30', 4, 1, 150000),
    (7, "YouNow", '2011-07-14', 8, 10, 360000),
    (8, "USTREAM", '2007-04-03', 5, 5, 580000),
    (9, "Dacast", '2007-12-09', 1, 1, 740000),
    (10, "Livestream", '2010-09-21', 2, 9, 1000000);




INSERT INTO pessoa (nick, email, data_nascimento, endereço_postal, telefone)
    VALUES
    ("ronaldinho", "ronaldinho@example.com", '1982-04-15', "Praça dos Desejos, 1010 - Cidade dos Desconhecidos - CEP: 21000-001", NULL),

    ("pedrinho_02", "pedrinho_02@gmail.com", '1990-08-27', "Rua Flores, 123 - Cidade Maria José - CEP: 98000-000", "98 21098-7654"),

    ("mudwater", "mudwater@yahoo.com", '1985-12-03', "456 Elm Avenue, Suite 7, Townsville, State 67890, USA", "415 555-5678"),

    ("luisa_gg", "luisa_gg@hotmail.com", '1988-06-21', "789 Oak Lane, Unit 12, Villagetown, State 23456, USA", NULL),

    ("gameroz", "gameroz@outlook.com", '1995-09-14', "Rua Kangaroo, 123 - Sydney, NSW - Código Postal: 2000 - Austrália", "2 8765 4321"),

    ("supermain", "supermain@protonmail.com", '1981-11-08', "Rua das Flores, 123 - Cidade Fictícia - CEP: 70000-000 - Estado Santa Catarina", NULL),

    ("mono", "mono@live.com", '1987-02-19', "Avenida Principal, 456 - Cidade São Pedro - CEP: 11000-000", "11 98765-4321"),

    ("coringa-_", "coringa-@gmail.com", '2000-03-30', "Praça Central, 789 - Cidade dos Sonhos - CEP: 21000-000", "21 91234-5678"),

    ("hello_kitty", "hello_kitty@yahoo.com", '1992-07-10', "Travessa da Esperança, 101 - Cidade Irreal - CEP: 31000-000", "31 87654-3210"),

    ("bts_army", "bts_army@hotmail.com", '1984-09-25', "Alameda dos Sonhos, 222 - Cidade das Maravilhas - CEP: 41000-000", "41 89012-3456"),

    ("carlinhos123", "carlinhos123@gmail.com", '2005-12-12', "Rua da Fantasia, 333 - Cidade Encantada - CEP: 47000-000", "47 56789-0123"),

    ("walmaria", "walmaria@gmail.com", '2008-01-02', "Avenida del Sol, 456 - Cidade Del Canto - CP: 12345 - México", "55 1234 5678"),

    ("olivia_palito", "olivia_palito@yahoo.com", '1998-06-05', "Caminho da Ilusão, 444 - Cidade dos Contos - CEP: 51000-000", "51 76543-2109"),

    ("charle_pato", "charle_pato@hotmail.com", '1983-10-18', "Avenida das Estrelas, 101 - São Paulo - CEP: 01000-000 - Estado Sao Paulo", NULL),

    ("jason_mac", "jason_mac@outlook.com", '2003-04-07', "Avenida dos Sonhos, 789 - Lisboa - Código Postal: 1000-001 - Portugal", NULL),

    ("jaxaina", "jaxaina@live.com", '1994-08-23', "Rua das Palmeiras, 789 - Rio de Janeiro - CEP: 20000-000 - RJ", NULL),

    ("adrian", "adrian@live.com", '1986-01-31', "123 Main Street - London - SW1A 1AA - United Kingdom", "20 7123 4567"),

    ("harleyquinn", "harleyquinn@gmail.com", '1989-11-16', "Avenida Imaginária, 555 - Cidade dos Enigmas - CEP: 62000-000", "62 10987-6543"),

    ("pikachu", "pikachu@yahoo.com", '1997-05-09', "Tokyo Street, 456 - Tokyo - Código Postal: 100-0001 - Japão", NULL),

    ("hahazel", "hahazel_email@outlook.com", '2009-09-28', "Estrada das Maravilhas, 666 - Cidade dos Enigmas - CEP: 71000-000", "71 23456-7890"),

    ("papoTorres", "papoTorres@gmail.com", '1980-07-14', "Rodovia dos Sonhos, 777 - Cidade das Aventuras - CEP: 81000-000", "81 54321-0987"),

    ("elojas", "elojas@yahoo.com", '1991-02-26', "Calle Imaginaria, 789 - Córdoba - CP: 5000 - Argentina", "11 2345-6789"),

    ("marciomarcio", "marciomarcio@outlook.com", '1999-10-11', "Avenida de los Sueños, 456 - Buenos Aires - CP: 1000 - Argentina", "11 2345-6789"),

    ("grisalhas", "grisalhas@gmail.com", '2006-08-04', "Rua dos Segredos, 888 - Cidade dos Mistérios - CEP: 91000-000", "91 67890-1234"),
    
    ("deusa123", "deusa123@yahoo.com", '1980-12-01', "Avenida das Ilusões, 999 - Cidade dos Encontros - CEP: 14000-000", "14 21098-7654"),

    ("della", "della@outlook.com", '2001-11-20', "Rua das Pirâmides, 123 - Cairo - Código Postal: 11511 - Egito", NULL),

    ("motosung", "motosung@gmail.com", '1982-05-22', "Seoul Street, 789 - Seoul - Código Postal: 04513 - Coreia do Sul", NULL),

    ("domanda", "domanda@yahoo.com", '1996-03-17', "Rua das Ilusões, 456 - Lisboa - Código Postal: 1500-001 - Portugal", NULL),

    ("avemaria", "avemaria@outlook.com", '2004-07-08', "Rua das Fantasias, 111 - Cidade dos Encantos - CEP: 85000-000", "85 87654-3210"),

    ("cheiadegraca", "cheiadegraca@gmail.com", '2007-04-29', "Alameda dos Sonhos, 222 - Cidade Mágica - CEP: 27000-000", "27 54321-0987");



INSERT INTO registra (nick, n_sequencial_plataforma) VALUES
    ("ronaldinho", 1),
    ("pedrinho_02", 4),
    ("mudwater", 3),
    ("luisa_gg", 5),
    ("gameroz", 5),
    ("supermain", 10),
    ("mono", 5),
    ("coringa-_", 10),
    ("hello_kitty", 4),
    ("bts_army", 4),
    ("carlinhos123", 1),
    ("walmaria", 2),
    ("olivia_palito", 2),
    ("charle_pato", 8),
    ("jason_mac", 2),
    ("jaxaina", 4),
    ("adrian", 3),
    ("harleyquinn", 2),
    ("pikachu", 4),
    ("hahazel", 8),
    ("papoTorres", 5),
    ("elojas", 4),
    ("marciomarcio", 1),
    ("grisalhas", 9),
    ("deusa123", 9),
    ("della", 3),
    ("motosung", 4),
    ("domanda", 9),
    ("avemaria", 8),
    ("cheiadegraca", 8);




INSERT INTO Streamer (nick_streamer, n_passaporte, pais_passaporte)
    VALUES 
    ("ronaldinho", 123456, 55),
    ("luisa_gg", 12345678, 1),
    ("supermain", 789012, 55),
    ("jason_mac", 98765432, 351),
    ("jaxaina", 345678, 55),
    ("pikachu", 7538691, 81),
    ("della", 96385274, 20),
    ("motosung", 4725836, 82),
    ("domanda", 12345678, 351),
    ("charle_pato", 901234, 55);




INSERT INTO Streamer_na_plataforma (nick_streamer, n_sequencial_plataforma, numero_de_usuario)
    VALUES 
    ("ronaldinho", 1, 955),
    ("luisa_gg", 5, 155),
    ("supermain", 10, 124),
    ("jason_mac", 2, 342),
    ("jaxaina", 4, 1475),
    ("pikachu", 4, 259),
    ("della", 3, 759),
    ("motosung", 4, 626),
    ("domanda", 9, 10),
    ("charle_pato", 8, 99);




INSERT INTO Usuario (nick, pais_residencia)
    VALUES 
    ("pedrinho_02", 55),
    ("mudwater", 1),
    ("gameroz",  61),
    ("mono", 55),
    ("coringa-_", 55),
    ("hello_kitty", 55),
    ("bts_army", 55),
    ("carlinhos123", 55),
    ("walmaria", 52),
    ("olivia_palito", 55),
    ("adrian", 44),
    ("harleyquinn", 55),
    ("hahazel", 55),
    ("papoTorres", 55),
    ("elojas", 54),
    ("marciomarcio", 54),
    ("grisalhas", 55),
    ("deusa123", 55),
    ("avemaria", 55),
    ("cheiadegraca", 55);







INSERT INTO canal (nome, data_inicio, descrição, tipo, nick_streamer, qtd_video, n_sequencial_plataforma)
    VALUES 
    ("TudoSobreSoccer", '2013-09-08', "Para saber tudo sobre o mundo do futebol", "publico", "ronaldinho", 32, 1),

    ("Luisa Good Gamer", '2022-09-15', "A melhor jogadora de Lol que o mundo vai conhecer", "publico", "luisa_gg", 98, 5),

    ("FitnessHero", '2010-03-27', "Quer ser fitness? Entra aqui", "misto", "supermain", 27, 10),

    ("Cosplay Maniac", '2006-08-15', "Informacoes sobre cosplays da cultura pop", "privado", "jason_mac", 13, 2),

    ("MakeUpJaxa", '2018-11-03', "Aprenda a se maquiar e reviews sobre as mais novas tendencias do mundo da beleza", "misto", "jaxaina", 64, 4),

    ("Otaku World", '2019-07-23', "Tudo sobre mais diversos mangas e animes", "publico", "pikachu", 125, 4),

    ("English Know-It-All", '2021-01-05', "Ensino ingles de maneira facil", "privado", "della", 111, 3),

    ("Hardware Guru", '2018-05-19', "Reviews sobre componentes de hardware de computadores", "misto", "motosung", 96, 4),

    ("ChefChef", '2015-11-02', "A master chef da Dacast", "publico", "domanda", 45, 9),

    ("Comedia God", '2008-12-10', "Um canal para rir e se divertir", "misto", "charle_pato", 87, 8);




INSERT INTO patrocinio (nome_canal, n_sequencial_plataforma, n_sequencial_empresa, valor_patrocinio, nick_streamer)
    VALUES
    ("Hardware Guru", 4, 1, 5600, "motosung"),
    ("Hardware Guru", 4, 6, 6000, "motosung"),
    ("English Know-It-All", 3, 2, 8750, "della"),
    ("Comedia God", 8, 7, 5000, "charle_pato"),
    ("Luisa Good Gamer", 5, 9, 3000, "luisa_gg"),
    ("Luisa Good Gamer", 5, 5, 5000, "luisa_gg"),
    ("Otaku World", 4, 8, 7540, "pikachu"),
    ("MakeUpJaxa", 4, 3, 4500, "jaxaina"),
    ("FitnessHero", 10, 8, 3000, "supermain"),
    ("Otaku World", 4, 9, 5000, "pikachu");




INSERT INTO nivel (nivel, nome_nivel, nome_canal, n_sequencial_plataforma, gif, valor_mensal)
    VALUES 
    ('1', "goleiro", "TudoSobreSoccer", 1, "goleiro", 5),
    ('2', "zagueiro", "TudoSobreSoccer", 1, "zagueiro", 10),
    ('3', "libero", "TudoSobreSoccer", 1, "libero", 15),
    ('4', "lateral", "TudoSobreSoccer", 1, "lateral", 20),
    ('5', "atacante", "TudoSobreSoccer", 1, "atacante", 25),

    ('1', "mid", "Luisa Good Gamer", 5, "sylas", 5),
    ('2', "top", "Luisa Good Gamer", 5, "ornn", 10),
    ('3', "adc", "Luisa Good Gamer", 5, "tristana", 15),
    ('4', "sup", "Luisa Good Gamer", 5, "lulu", 20),
    ('5', "acer", "Luisa Good Gamer", 5, "miss fortune", 25),
    
    ('1', "rato", "FitnessHero", 10, "mickey mouse", 5),
    ('2', "magrelo", "FitnessHero", 10, "salsicha", 10),
    ('3', "fortinho", "FitnessHero", 10, "taz", 15),
    ('4', "fortao", "FitnessHero", 10, "leo santana", 20),
    ('5', "maromba", "FitnessHero", 10, "leo stronda", 25),

    ('1', "cospobre", "Cosplay Maniac", 2, "goku do dragonball evolution", 5),
    ('2', "coscriativo", "Cosplay Maniac", 2, "chihiro desenhada na mao", 10),
    ('3', "cosseno", "Cosplay Maniac", 2, "macacao do pikachu", 15),
    ('4', "cosmito", "Cosplay Maniac", 2, "cosplay do batman", 20),
    ('5', "cosmilionario", "Cosplay Maniac", 2, "armadura de diamente de papelao", 25),

    ('1', "koloss", "MakeUpJaxa", 4, "koloss batom", 5),
    ('2', "avon", "MakeUpJaxa", 4, "avon rimel", 10),
    ('3', "ruby rose", "MakeUpJaxa", 4, "ruby rose base", 15),
    ('4', "l'oreal", "MakeUpJaxa", 4, "l'oreal delineado", 20),
    ('5', "chanel", "MakeUpJaxa", 4, "chanel po de arroz", 25),
    
    ('1', "pirata falido", "Otaku World", 4, "luffy chorando", 5),
    ('2', "ninja coitado", "Otaku World", 4, "tururu naruto", 10),
    ('3', "parente do sukuna", "Otaku World", 4, "sukuna rindo", 15),
    ('4', "hashira brabo", "Otaku World", 4, "gyomei", 20),
    ('5', "slam dunk pro", "Otaku World", 4, "sakuragi tensai", 25),

    ('1', "begginer", "English Know-It-All", 3, "baby", 5),
    ('2', "a little better than a begginer", "English Know-It-All", 3, "kid", 10),
    ('3', "intermediate", "English Know-It-All", 3, "teenager", 15),
    ('4', "hm not bad", "English Know-It-All", 3, "adult", 20),
    ('5', "expert", "English Know-It-All", 3, "wise old person", 25),

    ('1', "coitado", "Hardware Guru", 4, "windows carregando infinatamente", 5),
    ('2', "hd", "Hardware Guru", 4, "ssd socando hd", 10),
    ('3', "intel i5", "Hardware Guru", 4, "processador", 15),
    ('4', "roda red dead", "Hardware Guru", 4, "pc pegando fogo", 20),
    ('5', "pc da nasa", "Hardware Guru", 4, "foguete", 25),

    ('1', "batata frita", "ChefChef", 9, "batatinha simples", 5),
    ('2', "frango", "ChefChef", 9, "frango kfc", 10),
    ('3', "hamburguer artesanal", "ChefChef", 9, "hamburguer bonitao", 15),
    ('4', "churrasco", "ChefChef", 9, "churrasco", 20),
    ('5', "banquete", "ChefChef", 9, "banquete", 25),

    ('1', "fora daqui", "Comedia God", 8, "choro", 5),
    ('2', "sem graca", "Comedia God", 8, "serio", 10),
    ('3', "da pro gasto", "Comedia God", 8, "sorriso fraco", 15),
    ('4', "engracado", "Comedia God", 8, "rindo", 20),
    ('5', "palhaco", "Comedia God", 8, "chorando de rir", 25);




INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("pedrinho_02", "3", "Otaku World", 4);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("mudwater", "5", "English Know-It-All", 3);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("gameroz", "2", "Luisa Good Gamer", 5);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("mono", "4", "Luisa Good Gamer", 5);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("coringa-_", "5", "FitnessHero", 10);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("hello_kitty", "5", "MakeUpJaxa", 4);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("bts_army", "1", "MakeUpJaxa", 4);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("carlinhos123", "5", "TudoSobreSoccer", 1);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("walmaria", "2", "Cosplay Maniac", 2);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("olivia_palito", "3", "Cosplay Maniac", 2);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("adrian", "4", "English Know-It-All", 3);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("harleyquinn", "3", "Cosplay Manic", 2);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("hahazel", "1", "Comedia God", 8);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("papoTorres", "5", "Luisa Good Gamer", 5);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("elojas", "5", "Hardware Guru", 4);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("marciomarcio", "4", "TudoSobreSoccer", 1);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("grisalhas", "3", "ChefChef", 9);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("deusa123", "2", "ChefChef", 9);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("avemaria", "1", "Comedia God", 8);
INSERT INTO membros_inscritos (nick, nivel, nome_canal, n_sequencial_plataforma) VALUE ("cheiadegraca", "1", "Comedia God", 8);




INSERT INTO video (titulo, data_hora, duração, nome_canal, tema, max_visualizacao_simultanea, total_visualizacao, n_sequencial_plataforma)
    VALUES
    ("Como driblar", '2019-11-25 12:00:00', "15:20", "TudoSobreSoccer", "futebol", 20000, 355000, 1),
    ("Chute ao Gol Imparavel", '2016-09-08 18:45:00', "10:00", "TudoSobreSoccer", "futebol", 15000, 451000, 1),
    ("Seja o proximo Pele", '2014-05-20 15:30:00', "08:00", "TudoSobreSoccer", "futebol", 50000, 649000, 1),

    ("Ranked com Braum", '2023-04-10 09:15:00', "45:27", "Luisa Good Gamer", "league of legends", "230000", "1200000", 5),
    ("Ace jungle", '2022-11-30 20:30:00', "50:33", "Luisa Good Gamer", "league of legends", 120000, 850000, 5),

    ("Treino de abdomem", '2012-08-15 14:45:00', "20:00", "FitnessHero", "abdomem trincado",125000, 600000, 10),

    ("Naruto - Gaara cosplay", '2008-03-21 10:30:00', "05:20", "Cosplay Maniac",  "cosplay naruto", 50000, 320000, 2),
    ("Capa do Batman", '2008-03-21 10:30:00', "13:57", "Cosplay Maniac", "cosplay batman", 27000, 100000, 2),
    ("Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "09:54", "Cosplay Maniac", "cosplay snk", 65000, 462000, 2),

    ("Base nova da Virginia", '2019-05-10 20:15:00', "21:53", "MakeUpJaxa", "teste de maquiagem", 520000, 17000000, 4),

    ("O melhor manga de esportes", '2020-02-15 12:30:00', "10:05", "Otaku World", "manga de basquete", 34000, 147000, 4),
    ("Esse e o melhor filme adaptado", '2023-09-08 16:45:00', "22:10", "Otaku World", "anime de basquete", 82000, 367000, 4),

    ("Have had e had had explicado", '2021-07-15 08:00:00', "14:06", "English Know-It-All", "aprendizado ingles", 100000, 5000000, 3),
    ("thought, though, tough, through", '2022-04-22 14:30:00', "19:23", "English Know-It-All", "aprendizado ingles", 260000, 4200000, 3),

    ("Processador Novo da Intel", '2019-02-10 16:45:00', "30:00", "Hardware Guru", "processador intel", "69000", "895000", 4),
    ("Novo Teclado RGB", '2020-09-25 11:30:00', "05:00", "Hardware Guru", "teclado rgb", 264000, 968000, 4),
    ("Novos fones da Samsung", '2022-03-08 18:15:00', "15:00", "Hardware Guru", "fones bluetooth", 150000, 997000, 4),

    ("Como fazer arroz soltinho", '2016-04-20 09:30:00', "11:52", "ChefChef", "comida caseira", 345000, 2000000, 9),
    
    ("Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "04:51", "Comedia God", "pegadinha", 130000, 547000, 8);





INSERT INTO participação_especial (nick_streamer, video_titulo, data_hora_video, nome_canal, n_sequencial_plataforma)
    VALUES
    ("supermain", "Como driblar", '2019-11-25 12:00:00', "TudoSobreSoccer", 1),

    ("jason_mac", "Ace jungle", '2022-11-30 20:30:00', "Luisa Good Gamer", 5),

    ("luisa_gg", "Base nova da Virginia", '2019-05-10 20:15:00', "MakeUpJaxa", 4),

    ("ronaldinho", "Treino de abdomem", '2012-08-15 14:45:00', "FitnessHero", 10),

    ("pikachu", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "Cosplay Maniac", 2),

    ("jason_mac", "O melhor manga de esportes", '2020-02-15 12:30:00', "Otaku World", 4),

    ("jaxaina", "Como fazer arroz soltinho", '2016-04-20 09:30:00', "ChefChef", 9),

    ("motosung", "Have had e had had explicado", '2021-07-15 08:00:00', "English Know-It-All", 3),

    ("supermain", "Esse e o melhor filme adaptado", '2023-09-08 16:45:00', "Otaku World", 4),

    ("supermain", "Seja o proximo Pele", '2014-05-20 15:30:00', "TudoSobreSoccer", 1);




INSERT INTO comentario (n_sequencial, data_hora, tipo, nick, video_titulo, data_hora_video, texto, nome_canal, n_sequencial_plataforma)
    VALUES 
    (1, '2016-09-08 20:47:00', "online", "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "mais uma do grande ronaldinho!! otimo video como sempre!!", "TudoSobreSoccer", 1),

    (2, '2016-05-02 09:07:08', "offline", "harleyquinn", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "que cosplay perfeitoooo", "Cosplay Maniac", 2),

    (3, '2021-05-10 20:15:00', "online", "bts_army", "Base nova da Virginia", '2019-05-10 20:15:00', "pessima base, meu deus do ceu", "MakeUpJaxa", 4),

    (4, '2019-08-24 17:35:00', "online", "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', "otimo treino para comecar o dia", "FitnessHero", 10),

    (5, '2013-08-15 22:45:00', "online", "avemaria", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "kkkkk ja fiz isso com minha amiga", "Comedia God", 8),
    
    (6, '2020-05-10 23:57:00', "online", "hello_kitty", "Base nova da Virginia", '2019-05-10 20:15:00', "decadente que uma base tao cara seja tao ruim assim", "MakeUpJaxa", 4),

    (7, '2018-04-20 09:30:00', "offline", "grisalhas", "Como fazer arroz soltinho", '2016-04-20 09:30:00', "deu certo!! nao aguentava mais comer arroz papado ou queimado", "ChefChef", 9),

    (8, '2023-03-08 18:15:00', "offline", "elojas", "Novos fones da Samsung", '2022-03-08 18:15:00', "curti muito os fones, a samsung se superou", "Hardware Guru", 4),

    (9, '2013-08-15 19:45:00', "online", "cheiadegraca", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "horrivel sofrer isso e ter que ir embora fedendo", "Comedia God", 8),

    (10, '2022-02-15 12:30:00', "offline", "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "simplesmente o melhor manga ja escrito", "Otaku World", 4);




INSERT INTO doação (n_doação, n_sequencial_com, nick, video_titulo, data_hora_video, status, nome_canal, n_sequencial_plataforma)
    VALUES 
    (1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "recebido", "TudoSobreSoccer", 1),

    (2, 2, "harleyquinn", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "lido", "Cosplay Maniac", 2),

    (3, 3, "bts_army", "Base nova da Virginia", '2019-05-10 20:15:00', "recusado", "MakeUpJaxa", 4),

    (4, 4, "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', "recebido", "FitnessHero", 10),

    (5, 5, "avemaria", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "lido", "Comedia God", 8),

    (6, 6, "hello_kitty", "Base nova da Virginia", '2019-05-10 20:15:00', "recebido", "MakeUpJaxa", 4),

    (7, 7, "grisalhas", "Como fazer arroz soltinho", '2016-04-20 09:30:00', "lido", "ChefChef", 9),

    (8, 8, "elojas", "Novos fones da Samsung", '2022-03-08 18:15:00', "lido", "Hardware Guru", 4),

    (9, 9, "cheiadegraca", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "recusado", "Comedia God", 8),

    (10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "lido", "Otaku World", 4);




INSERT INTO pagamento (n_pagamento, n_doação, n_sequencial_com, nick, video_titulo, data_hora_video, valor, nome_canal, n_sequencial_plataforma) VALUES
    (27, 1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', 155, "TudoSobreSoccer", 1),

    (39, 2, 2, "harleyquinn", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', 66.85, "Cosplay Maniac", 2),

    (284, 3, 3, "bts_army", "Base nova da Virginia", '2019-05-10 20:15:00', 5, "MakeUpJaxa", 4),

    (361, 4, 4, "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', 95, "FitnessHero", 10),

    (176, 5, 5, "avemaria", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', 20, "Comedia God", 8),

    (30, 6, 6, "hello_kitty", "Base nova da Virginia", '2019-05-10 20:15:00', 76.31, "MakeUpJaxa", 4),

    (999, 7, 7, "grisalhas", "Como fazer arroz soltinho", '2016-04-20 09:30:00', 25, "ChefChef", 9),

    (66, 8, 8, "elojas", "Novos fones da Samsung", '2022-03-08 18:15:00', 55, "Hardware Guru", 4),

    (3971, 9, 9, "cheiadegraca", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', 62, "Comedia God", 8),

    (3051, 10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', 100, "Otaku World", 4);




INSERT INTO pagamento_PayPal (IDPayPal, n_pagamento, n_doação, n_sequencial_com, nick, video_titulo, data_hora_video, nome_canal, n_sequencial_plataforma)
    VALUES
    (37841, 27, 1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "TudoSobreSoccer", 1),

    (64598, 39, 2, 2, "harleyquinn", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "Cosplay Maniac", 2),

    (32467, 284, 3, 3, "bts_army", "Base nova da Virginia", '2019-05-10 20:15:00', "MakeUpJaxa", 4),

    (95751, 361, 4, 4, "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', "FitnessHero", 10),

    (94161, 176, 5, 5, "avemaria", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "Comedia God", 8),

    (12473, 30, 6, 6, "hello_kitty", "Base nova da Virginia", '2019-05-10 20:15:00', "MakeUpJaxa", 4),

    (82174, 66, 8, 8, "elojas", "Novos fones da Samsung", '2022-03-08 18:15:00', "Hardware Guru", 4),

    (39713, 3971, 9, 9, "cheiadegraca", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "Comedia God", 8),

    (42987, 3051, 10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "Otaku World", 4),

    (85177, 3051, 10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "Otaku World", 4);




INSERT INTO pagamento_bitcoin (TxID, n_pagamento, n_doação, n_sequencial_com, nick, video_titulo, data_hora_video, nome_canal, n_sequencial_plataforma)
    VALUES
    ("45178", 27, 1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "TudoSobreSoccer", 1),

    ("52174", 27, 1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "TudoSobreSoccer", 1),

    ("97154", 39, 2, 2, "harleyquinn", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "Cosplay Maniac", 2),

    ("68971", 361, 4, 4, "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', "FitnessHero", 10),

    ("31715", 176, 5, 5, "avemaria", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "Comedia God", 8),

    ("84942", 30, 6, 6, "hello_kitty", "Base nova da Virginia", '2019-05-10 20:15:00', "MakeUpJaxa", 4),

    ("36481", 999, 7, 7, "grisalhas", "Como fazer arroz soltinho", '2016-04-20 09:30:00', "ChefChef", 9),

    ("71462", 66, 8, 8, "elojas", "Novos fones da Samsung", '2022-03-08 18:15:00', "Hardware Guru", 4),

    ("12588", 3971, 9, 9, "cheiadegraca", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "Comedia God", 8),

    ("62844", 3051, 10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "Otaku World", 4);


INSERT INTO pagamento_cartão_de_credito (n_cartao, bandeira_cartao, data_compra, n_pagamento, n_doação, n_sequencial_com, nick, video_titulo, data_hora_video, nome_canal, n_sequencial_plataforma)
    VALUES
    (45127877, "Visa", '2016-09-08 20:47:00', 27, 1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "TudoSobreSoccer", 1),

    (51148922, "Mastercard", '2016-09-08 20:47:00', 27, 1, 1, "marciomarcio", "Chute ao Gol Imparavel", '2016-09-08 18:45:00', "TudoSobreSoccer", 1),

    (21144258, "Visa", '2016-05-02 09:07:08', 39, 2, 2, "harleyquinn", "Shingeki No Kyojin - Eren cosplay", '2013-05-02 14:00:00', "Cosplay Maniac", 2),
    
    (12147205, "Mastercard",'2019-08-24 17:35:00', 361, 4, 4, "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', "FitnessHero", 10),

    (36248741, "Mastercard",'2019-08-24 17:35:00', 361, 4, 4, "coringa-_", "Treino de abdomem", '2012-08-15 14:45:00', "FitnessHero", 10),

    (98751132, "Visa", '2020-05-10 23:57:00', 30, 6, 6, "hello_kitty", "Base nova da Virginia", '2019-05-10 20:15:00', "MakeUpJaxa", 4),

    (92915817, "Mastercard", '2023-03-08 18:15:00', 66, 8, 8, "elojas", "Novos fones da Samsung", '2022-03-08 18:15:00', "Hardware Guru", 4),

    (11648511, "Visa", '2013-08-15 19:45:00', 3971, 9, 9, "cheiadegraca", "Joguei ovo no meu amigo!!", '2009-08-15 14:45:00', "Comedia God", 8),

    (88552711, "Mastercard",  '2022-02-15 12:30:00', 3051, 10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "Otaku World", 4),

    (79851426, "Visa",  '2022-02-15 12:30:00', 3051, 10, 10, "pedrinho_02", "O melhor manga de esportes", '2020-02-15 12:30:00', "Otaku World", 4);