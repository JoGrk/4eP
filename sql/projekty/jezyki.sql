-- -----------------------------------------------------
-- Table `mydb`.`pracownicy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pracownicy` (
  `idpracownika` INT NOT NULL AUTO_INCREMENT,
  `imie` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  PRIMARY KEY (`idpracownika`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`programowania`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `programowania` (
  `idprogramowania` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(45) NULL,
  PRIMARY KEY (`idprogramowania`)
);


-- -----------------------------------------------------
-- Table `mydb`.`obce`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `obce` (
  `idobcego` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(45) NULL,
  PRIMARY KEY (`idobcego`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`obce_pracownika`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `obce_pracownika` (
  `idpracownika` INT NOT NULL,
  `idobcego` INT NOT NULL,
  PRIMARY KEY (`idpracownika`, `idobcego`),
  FOREIGN KEY (idpracownika) REFERENCES pracownicy(idpracownika),
  FOREIGN KEY (idobcego) REFERENCES obce(idobcego)
);


-- -----------------------------------------------------
-- Table `mydb`.`programowania_pracownika`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `programowania_pracownika` (
  `idpracownika` INT NOT NULL,
  `idprogramowania` INT NOT NULL,
  PRIMARY KEY (`idpracownika`, `idprogramowania`),
  FOREIGN KEY (idpracownika) REFERENCES pracownicy(idpracownika),
  FOREIGN KEY (idprogramowania) REFERENCES programowania(idprogramowania)
);


