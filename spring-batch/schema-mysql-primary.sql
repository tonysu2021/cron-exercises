CREATE TABLE coffee  (
    coffee_id BIGINT NOT NULL AUTO_INCREMENT,
    brand VARCHAR(20),
    origin VARCHAR(20),
    characteristics VARCHAR(30),
    PRIMARY KEY (coffee_id)
) ENGINE=InnoDB;

CREATE TABLE chat_message  (
    uuid VARCHAR(20)  NOT NULL PRIMARY KEY ,
    stream_action VARCHAR(20),
    login_type VARCHAR(20),
    message VARCHAR(128)
) ENGINE=InnoDB;
