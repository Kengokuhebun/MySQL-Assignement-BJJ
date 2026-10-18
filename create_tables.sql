CREATE TABLE gym (
    GymID    INT          NOT NULL AUTO_INCREMENT,
    Name     VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    PRIMARY KEY (GymID)
) ENGINE = InnoDB;

CREATE TABLE victorytype (
    TypeID     INT         NOT NULL AUTO_INCREMENT,
    MethodName VARCHAR(50) NOT NULL,
    PRIMARY KEY (TypeID)
) ENGINE = InnoDB;
