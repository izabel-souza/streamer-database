DROP DATABASE projeto_bd;
CREATE DATABASE IF NOT EXISTS projeto_bd;
USE projeto_bd;



-- -----------------------------------------------------
-- Tabela moeda
-- -----------------------------------------------------
DROP TABLE IF EXISTS `moeda` ;

CREATE TABLE IF NOT EXISTS `moeda` (
  `nome` VARCHAR(45) NOT NULL,
  `conversao_dolar` FLOAT NOT NULL,
  PRIMARY KEY (`nome`));


-- -----------------------------------------------------
-- Tabela pais
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pais` ;

CREATE TABLE IF NOT EXISTS `pais` (
  `DDI` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `nome_moeda` VARCHAR(45) NOT NULL,

  PRIMARY KEY (`DDI`),

  CONSTRAINT `fk_pais_moeda1`
    FOREIGN KEY (`nome_moeda`)
    REFERENCES `moeda` (`nome`));


-- -----------------------------------------------------
-- Tabela Empresa
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Empresa` ;

CREATE TABLE IF NOT EXISTS `Empresa` (
  `n_sequencial` INT NOT NULL,
  `id_nacional` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `DDI` INT NOT NULL,
  `nome_fantasia` VARCHAR(45) NOT NULL,

  PRIMARY KEY (`n_sequencial`),

  CONSTRAINT `fk_Empresa_pais1`
    FOREIGN KEY (`DDI`)
    REFERENCES `pais` (`DDI`));


-- -----------------------------------------------------
-- Tabela plataforma
-- -----------------------------------------------------
DROP TABLE IF EXISTS `plataforma` ;

CREATE TABLE IF NOT EXISTS `plataforma` (
  `n_sequencial` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `Data_fundação` DATE NOT NULL,
  `Empresa_fundadora` INT NOT NULL,
  `Empresa_responsavel` INT NOT NULL,
  `qtd_usuarios` INT NOT NULL,

  PRIMARY KEY (`n_sequencial`),

  CONSTRAINT `fk_plataforma_Empresa1`
    FOREIGN KEY (`Empresa_fundadora`)
    REFERENCES `Empresa` (`n_sequencial`),

  CONSTRAINT `fk_plataforma_Empresa2`
    FOREIGN KEY (`Empresa_responsavel`)
    REFERENCES `Empresa` (`n_sequencial`));


-- -----------------------------------------------------
-- Tabela pessoa
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pessoa` ;

CREATE TABLE IF NOT EXISTS `pessoa` (
  `nick` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `endereço_postal` VARCHAR(125) NOT NULL,
  `telefone` VARCHAR(15),

  PRIMARY KEY (`nick`));


-- -----------------------------------------------------
-- Tabela Usuario
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Usuario` ;

CREATE TABLE IF NOT EXISTS `Usuario` (
  `nick` VARCHAR(45) NOT NULL,
  `pais_residencia` INT NOT NULL,

  PRIMARY KEY (`nick`),

  CONSTRAINT `fk_Usuario_pessoa1`
    FOREIGN KEY (`nick`)
    REFERENCES `pessoa` (`nick`),

  CONSTRAINT `fk_Usuario_pais1`
    FOREIGN KEY (`pais_residencia`)
    REFERENCES `pais` (`DDI`));




-- -----------------------------------------------------
-- Tabela Registra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registra` (
  `nick` VARCHAR(45) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  CONSTRAINT `fk_registra_pessoa`
    FOREIGN KEY(`nick`)
    REFERENCES   `pessoa` (`nick`),

  CONSTRAINT `fk_registra_plat`
    FOREIGN KEY(`n_sequencial_plataforma`) 
    REFERENCES `plataforma` (`n_sequencial`)

);

-- -----------------------------------------------------
-- Tabela streamer
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Streamer` ;

CREATE TABLE IF NOT EXISTS `Streamer` (
  `nick_streamer` VARCHAR(45) NOT NULL,
  `n_passaporte` INT NOT NULL,
  `pais_passaporte` INT NOT NULL,

  PRIMARY KEY (`nick_streamer`),

  CONSTRAINT `fk_table1_pessoa1`
    FOREIGN KEY (`nick_streamer`)
    REFERENCES `pessoa` (`nick`),

  CONSTRAINT `fk_Streamer_pais1`
    FOREIGN KEY (`pais_passaporte`)
    REFERENCES `pais` (`DDI`));


-- -----------------------------------------------------
-- Tabela Streamer_na_plataforma
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Streamer_na_plataforma` ;

CREATE TABLE IF NOT EXISTS `Streamer_na_plataforma` (
  `nick_streamer` VARCHAR(45) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,
  `numero_de_usuario` INT NOT NULL,

  PRIMARY KEY (`nick_streamer`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_Streamer_na_plataforma_Streamer1`
    FOREIGN KEY (`nick_streamer`)
    REFERENCES `Streamer` (`nick_streamer`),

  CONSTRAINT `fk_Streamer_na_plataforma_plataforma1`
    FOREIGN KEY (`n_sequencial_plataforma`)
    REFERENCES `plataforma` (`n_sequencial`));



-- -----------------------------------------------------
-- Tabela canal
-- -----------------------------------------------------
DROP TABLE IF EXISTS `canal` ;

CREATE TABLE IF NOT EXISTS `canal` (
  `nome` VARCHAR(55) NOT NULL,
  `data_inicio` DATE NOT NULL,
  `descrição` TEXT NULL,
  `tipo` ENUM("privado", "publico", "misto") NOT NULL,
  `nick_streamer` VARCHAR(45) NOT NULL,
  `qtd_video` INT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`nome`, `n_sequencial_plataforma`, `nick_streamer`),

  CONSTRAINT `fk_canal_Streamer1`
    FOREIGN KEY (`nick_streamer`, `n_sequencial_plataforma`)
    REFERENCES `Streamer_na_plataforma` (`nick_streamer`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela patrocinio
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patrocinio` ;

CREATE TABLE IF NOT EXISTS `patrocinio` (
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,
  `n_sequencial_empresa` INT NOT NULL,
  `valor_patrocinio` FLOAT NOT NULL,
  `nick_streamer` VARCHAR(45) NOT NULL,

  PRIMARY KEY (`nome_canal`, `n_sequencial_plataforma`, `n_sequencial_empresa`, `nick_streamer`),

  CONSTRAINT `fk_patrocinio_canal`
    FOREIGN KEY (`nome_canal`, `n_sequencial_plataforma`, `nick_streamer`)
    REFERENCES `canal` (`nome`, `n_sequencial_plataforma`, `nick_streamer`),

  CONSTRAINT `fk_patrocionio_empresa`
    FOREIGN KEY (`n_sequencial_empresa`)
    REFERENCES `Empresa` (`n_sequencial`));


-- -----------------------------------------------------
-- Tabela nivel
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nivel` ;

CREATE TABLE IF NOT EXISTS `nivel` (
  `nivel` ENUM("1", "2", "3", "4", "5") NOT NULL,
  `nome_nivel` VARCHAR(45) NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,
  `gif` VARCHAR(45) NULL,
  `valor_mensal` FLOAT NOT NULL,

  INDEX `idx_nivel` (`nivel`, `n_sequencial_plataforma`),

  PRIMARY KEY (`nome_canal`, `nivel`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_niveis_membro_canal1`
    FOREIGN KEY (`nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `canal` (`nome`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela membros_inscritos
-- -----------------------------------------------------
DROP TABLE IF EXISTS `membros_inscritos` ;

CREATE TABLE IF NOT EXISTS `membros_inscritos` (
  `nick` VARCHAR(45) NOT NULL,
  `nivel` ENUM("1", "2", "3", "4", "5") NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`nick`, `nivel`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_membros_inscritos_Usuario1`
    FOREIGN KEY (`nick`)
    REFERENCES `Usuario` (`nick`),

  CONSTRAINT `fk_membros_inscritos_nivel`
    FOREIGN KEY (`nivel`, `n_sequencial_plataforma`, `nome_canal`)
    REFERENCES `nivel` (`nivel`, `n_sequencial_plataforma`, `nome_canal`));


-- -----------------------------------------------------
-- Tabela `video`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video` ;

CREATE TABLE IF NOT EXISTS `video` (
  `titulo` VARCHAR(45) NOT NULL,
  `data_hora` DATETIME NOT NULL,
  `duração` VARCHAR(45) NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `tema` VARCHAR(30) NULL,
  `max_visualizacao_simultanea` INT NULL,
  `total_visualizacao` INT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`titulo`, `data_hora`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_video_canal1`
    FOREIGN KEY (`nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `canal` (`nome`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela participação_especial
-- -----------------------------------------------------
DROP TABLE IF EXISTS `participação_especial` ;

CREATE TABLE IF NOT EXISTS `participação_especial` (
  `nick_streamer` VARCHAR(45) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`nick_streamer`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_participação_especial_Streamer1`
    FOREIGN KEY (`nick_streamer`)
    REFERENCES `Streamer` (`nick_streamer`),

  CONSTRAINT `fk_participação_especial_video1`
    FOREIGN KEY (`video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `video` (`titulo`, `data_hora`, `nome_canal`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela comentario
-- -----------------------------------------------------
DROP TABLE IF EXISTS `comentario` ;

CREATE TABLE IF NOT EXISTS `comentario` (
  `n_sequencial` INT NOT NULL,
  `data_hora` DATETIME NOT NULL,
  `tipo` ENUM("offline", "online") NOT NULL,
  `nick` VARCHAR(45) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `texto` TEXT NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`n_sequencial`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_comentario_Usuario1`
    FOREIGN KEY (`nick`)
    REFERENCES `Usuario` (`nick`),

  CONSTRAINT `fk_comentario_video1`
    FOREIGN KEY (`video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `video` (`titulo` , `data_hora`, `nome_canal`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela `doação`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doação` ;

CREATE TABLE IF NOT EXISTS `doação` (
  `n_doação` INT NOT NULL,
  `n_sequencial_com` INT NOT NULL,
  `nick` VARCHAR(45) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `status` ENUM("recusado", "recebido", "lido") NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`n_doação`, `n_sequencial_com`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),
  
  CONSTRAINT `fk_doação_comentario1`
    FOREIGN KEY (`n_sequencial_com` , `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `comentario` (`n_sequencial` , `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`));



-- -----------------------------------------------------
-- Tabela `pagamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pagamento` ;

CREATE TABLE IF NOT EXISTS `pagamento` (
  `n_pagamento`INT NOT NULL,
  `n_doação` INT NOT NULL,
  `n_sequencial_com` INT NOT NULL,
  `nick` VARCHAR(45) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `valor` FLOAT NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  INDEX `idx_pagamento` (`n_doação`, `n_sequencial_com`, `n_pagamento`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),

  PRIMARY KEY (`n_pagamento`, `n_doação`, `n_sequencial_com`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_pagamento_doacao`
    FOREIGN KEY (`n_doação`, `n_sequencial_com` , `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `doação` (`n_doação`, `n_sequencial_com` , `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`));




-- -----------------------------------------------------
-- Tabela pagamento_PayPal
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pagamento_PayPal` ;

CREATE TABLE IF NOT EXISTS `pagamento_PayPal` (
  `IDPayPal` INT NOT NULL, 
  `n_pagamento`INT NOT NULL,
  `n_doação` INT NOT NULL,
  `n_sequencial_com` INT NOT NULL,
  `nick` VARCHAR(15) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`IDPayPal`, `n_pagamento`, `n_doação`, `n_sequencial_com`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_pagamento_PayPal_pagamento`
    FOREIGN KEY (`n_doação`, `n_sequencial_com`, `n_pagamento`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `pagamento` (`n_doação` , `n_sequencial_com`, `n_pagamento`, `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela pagamento_bitcoin
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pagamento_bitcoin` ;

CREATE TABLE IF NOT EXISTS `pagamento_bitcoin` (
  `TxID` VARCHAR(45) NOT NULL,
  `n_pagamento` INT NOT NULL,
  `n_doação` INT NOT NULL,
  `n_sequencial_com` INT NOT NULL,
  `nick` VARCHAR(15) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY (`TxID`,  `n_pagamento`, `n_doação`, `n_sequencial_com`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`),

  CONSTRAINT `fk_pagamento_bitcoin_pagamento`
    FOREIGN KEY (`n_doação`, `n_sequencial_com`, `n_pagamento`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `pagamento` (`n_doação` , `n_sequencial_com`, `n_pagamento`, `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`));


-- -----------------------------------------------------
-- Tabela pagamento_cartão_de_credito
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pagamento_cartão_de_credito` ;

CREATE TABLE IF NOT EXISTS `pagamento_cartão_de_credito` (
  `n_cartao` INT NOT NULL,
  `bandeira_cartao` VARCHAR(45) NOT NULL,
  `data_compra` DATETIME NOT NULL,
  `n_pagamento` INT NOT NULL,
  `n_doação` INT NOT NULL,
  `n_sequencial_com` INT NOT NULL,
  `nick` VARCHAR(15) NOT NULL,
  `video_titulo` VARCHAR(45) NOT NULL,
  `data_hora_video` DATETIME NOT NULL,
  `nome_canal` VARCHAR(55) NOT NULL,
  `n_sequencial_plataforma` INT NOT NULL,

  PRIMARY KEY ( `n_cartao`, `n_doação`, `n_sequencial_com`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`, `n_pagamento`),

  CONSTRAINT `fk_pagamento_cartao_pagamento`
    FOREIGN KEY (`n_doação`, `n_sequencial_com`, `n_pagamento`, `nick`, `video_titulo`, `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`)
    REFERENCES `pagamento` (`n_doação` , `n_sequencial_com`, `n_pagamento`, `nick` , `video_titulo` , `data_hora_video`, `nome_canal`, `n_sequencial_plataforma`));
