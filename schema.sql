-- -- Create table competition
CREATE TABLE competition
(
    id       BIGINT       NOT NULL AUTO_INCREMENT,
    name     varchar(255) NOT NULL,
    location varchar(255) NOT NULL,
    date     date         NOT NULL,
    PRIMARY KEY (id)
);

-- Create table competitor
CREATE TABLE competitor
(
    id         BIGINT       NOT NULL AUTO_INCREMENT,
    name       varchar(255) NOT NULL,
    club       varchar(255) NOT NULL,
    birth_date date         NOT NULL,
    PRIMARY KEY (id)
);

-- Create table leaderboard
CREATE TABLE leaderboard
(
    id             BIGINT NOT NULL AUTO_INCREMENT,
    competition_id BIGINT NOT NULL,
    competitor_id  BIGINT NOT NULL,
    placement      int    NOT NULL,
    PRIMARY KEY (id),
    foreign key (competition_id) references competition (id) on delete cascade on update cascade,
    foreign key (competitor_id) references competitor (id) on delete cascade on update cascade
);

-- Create table users
CREATE TABLE users
(
    id       BIGINT       NOT NULL AUTO_INCREMENT,
    role     varchar(255) NOT NULL,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY (id)
);