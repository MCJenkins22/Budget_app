CREATE TABLE `budget_app`.`payee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `budget_app`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `budget_app`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `starting_bal` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `budget_app`.`transaction` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `memo` VARCHAR(100) NULL,
  `date` DATE NULL,
  `payee` INT NULL,
  `category` INT NULL,
  `account` INT NULL,
  `amount_in` INT NULL,
  `amount_out` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `payee_id_fk_idx` (`payee` ASC) VISIBLE,
  INDEX `category_id_fk_idx` (`category` ASC) VISIBLE,
  INDEX `account_id_fk_idx` (`account` ASC) VISIBLE,
  CONSTRAINT `payee_id_fk`
    FOREIGN KEY (`payee`)
    REFERENCES `budget_app`.`payee` (`id`)
    ON DELETE SET NULL
    ON UPDATE RESTRICT,
  CONSTRAINT `category_id_fk`
    FOREIGN KEY (`category`)
    REFERENCES `budget_app`.`category` (`id`)
    ON DELETE SET NULL
    ON UPDATE RESTRICT,
  CONSTRAINT `account_id_fk`
    FOREIGN KEY (`account`)
    REFERENCES `budget_app`.`account` (`id`)
    ON DELETE SET NULL
    ON UPDATE RESTRICT);

SHOW tables;
