<h1>modelagem de um Banco de dados</h1>

<h2>Requisitos do projeto:</h2>
<p>Deseja-se projetar uma base de dados para catalogar informações sobre streamers de jogos
online para responder questões sobre o alcance de público, quantidade de propagandas
realizadas, arrecadação direta (doações), arrecadação indireta (membros inscritos), número de
interações diretas (comentários online) e número de interações (comentários online + offline). </p>

<p>A base de dados deve incluir plataforma de streaming (ex., Youtube e Twitch), que são
identificadas por um número sequencial único e possuem um nome, uma empresa fundadora,
uma empresa responsável, uma data de fundação e uma quantidade de usuários.
Além disso, a base de dados deve incluir streamers, identificados por um único nick, número de
usuário (que pode ser diferente em cada plataforma), endereço de email, data de nascimento e
endereço postal, número de passaporte e país de passaporte. A base de dados também deve
conter informações de usuários, identificados por um único nick, endereço de email, data de
nascimento, um telefone para validação em duas vias, um endereço postal e um país de
residência.</p>

<p>Cada país deve ser identificado por um número (DDI) e possuir um nome e uma moeda. Além
disso, para cada moeda deve estar associada uma fator de conversão em dólar padrão (USD -
dólares americanos) para conversão do valor da moeda estrangeira para dólares americanos.
Um ou mais canais estão associados a cada streamers em diferentes plataformas. Cada canal é
identificado por seu nome único, data de início, descrição, quantidade de vídeos postados e tipo
do canal que deve ser um entre {privado, público ou misto}. Um canal pode ser patrocinado por
uma empresa, que é identificada um número sequencial único, um nome, um identificador
nacional (ex: CNPJ), país de origem e um nome fantasia. Cada patrocínio tem um valor (em
dólares americanos) e o sistema não armazena o histórico de patrocínios, ou seja, apenas os patrocinadores com patrocínios vigentes devem aparecer nos sistema. Um canal pode ter vários
membros inscritos. Cada membro inscrito contribui com um valor mensal que depende do seu
nível de membro.</p>

<p>Existem cinco níveis de membros e os nomes e os valores de cada nível são
definidos para cada canal e para cada nível existe um arquivo de imagem .gif associado. O
sistema não armazena o histórico de membros, ou seja, apenas os membros vigentes devem
aparecer no sistema.</p>

<p>Um vídeo postado é identificado por seu título e data/hora de postagem. Cada vídeo tem uma
duração e está associado a um único canal, mas pode ter a participação de mais streamers do que
apenas o dono do canal. Cada vídeo tem um tema, uma quantidade máxima de visualizações
simultâneas e a quantidade total de visualizações. Cada vídeo pode ter comentários online e
offline. Cada comentário tem um número sequencial que depende do vídeo e tem um usuário
(que fez o comentário) associado. Cada comentário tem uma data/hora e pode trazer consigo uma
doação ou não. Cada doação é identificada por um número sequencial que depende do vídeo, do
usuário e do comentário. A doação pode ser feita de quatro formas: cartão de crédito, paypal,
bitcoin ou mecanismo próprio da plataforma (ex.: Google SuperChat).</p>

<p>
No caso da doação em bitcoin deve ser armazenada também a TxID (um código hash), além do
valor associado à doação. Para doações via PayPal, deve-se armazenar o IDPayPal de
pagamento, além do valor associado à doação. No caso de cartão de crédito, deve ser
armazenado o número do cartão, a bandeira do cartão e a data e hora. Nos casos de mecanismo
próprio da plataforma, deve-se ser associado um número sequencial que depende do usuário, do
comentário e da plataforma, além do valor da doação. Para cada doação é necessário armazenar o
status que só pode ser um dos três {recusado, recebido ou lido}.</p>
