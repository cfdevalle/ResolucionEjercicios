SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `dbEjercicios` ;
CREATE SCHEMA IF NOT EXISTS `dbEjercicios` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `dbEjercicios` ;

-- -----------------------------------------------------
-- Table `dbEjercicios`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dbEjercicios`.`Usuario` ;

CREATE  TABLE IF NOT EXISTS `dbEjercicios`.`Usuario` (
  `usuario` VARCHAR(30) NOT NULL ,
  `password` VARCHAR(10) NULL ,
  `apellido` VARCHAR(45) NULL ,
  `nombre` VARCHAR(45) NULL ,
  PRIMARY KEY (`usuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbEjercicios`.`Rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dbEjercicios`.`Rol` ;

CREATE  TABLE IF NOT EXISTS `dbEjercicios`.`Rol` (
  `idRol` INT NOT NULL ,
  `descripcionRol` VARCHAR(45) NULL ,
  PRIMARY KEY (`idRol`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbEjercicios`.`Usuario_Rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dbEjercicios`.`Usuario_Rol` ;

CREATE  TABLE IF NOT EXISTS `dbEjercicios`.`Usuario_Rol` (
  `Usuario_usuario` VARCHAR(30) NOT NULL ,
  `Rol_idRol` INT NOT NULL ,
  PRIMARY KEY (`Usuario_usuario`, `Rol_idRol`) ,
  INDEX `fk_Usuario_has_Rol_Rol1_idx` (`Rol_idRol` ASC) ,
  INDEX `fk_Usuario_has_Rol_Usuario_idx` (`Usuario_usuario` ASC) ,
  CONSTRAINT `fk_Usuario_has_Rol_Usuario`
    FOREIGN KEY (`Usuario_usuario` )
    REFERENCES `dbEjercicios`.`Usuario` (`usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Rol_Rol1`
    FOREIGN KEY (`Rol_idRol` )
    REFERENCES `dbEjercicios`.`Rol` (`idRol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `dbEjercicios` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
