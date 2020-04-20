-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema rmail
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `test` ;

-- -----------------------------------------------------
-- Schema rmail
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 ;
USE `test` ;

-- -----------------------------------------------------
-- Table `rmail`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `employee_register_events` ;

CREATE TABLE `employee_register_events` (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    salary INT
) ENGINE = InnoDB;
