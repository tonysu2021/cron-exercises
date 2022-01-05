CREATE TABLE coffee  (
    coffee_id BIGINT NOT NULL NOT NULL AUTO_INCREMENT,
    brand VARCHAR(20),
    origin VARCHAR(20),
    characteristics VARCHAR(30),
    PRIMARY KEY (coffee_id)
) ENGINE=InnoDB;