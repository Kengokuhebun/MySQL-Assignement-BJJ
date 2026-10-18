CREATE TABLE gym (
    GymID    INT          NOT NULL AUTO_INCREMENT,
    Name     VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    PRIMARY KEY (GymID)
) ENGINE = InnoDB;

CREATE TABLE fighter (
    FighterID   INT         NOT NULL AUTO_INCREMENT,
    FirstName   VARCHAR(50) NOT NULL,
    LastName    VARCHAR(50) NOT NULL,
    Nationality VARCHAR(50) NOT NULL,
    BeltRank    VARCHAR(20) NOT NULL,
    GymID       INT         NOT NULL,
    PRIMARY KEY (FighterID),
    CONSTRAINT fk_fighter_gym
        FOREIGN KEY (GymID) REFERENCES gym (GymID)
) ENGINE = InnoDB;

CREATE TABLE `match` (
    MatchID   INT  NOT NULL AUTO_INCREMENT,
    EventDate DATE NOT NULL,
    TypeID    INT  NOT NULL,
    PRIMARY KEY (MatchID),
    CONSTRAINT fk_match_victorytype
        FOREIGN KEY (TypeID) REFERENCES victorytype (TypeID)
) ENGINE = InnoDB;

CREATE TABLE victorytype (
    TypeID     INT         NOT NULL AUTO_INCREMENT,
    MethodName VARCHAR(50) NOT NULL,
    PRIMARY KEY (TypeID)
) ENGINE = InnoDB;
