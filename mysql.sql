CREATE DATABASE eshop;

CREATE TABLE 'customer' (
    id int NOT NULL AUTO_INCREMENT,
    forename varchar(255) NOT NULL,
    surname varchar(255) NOT NULL,
    birthdate int NOT NULL,
    telnumber int NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(8) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE 'order' (
    id int NOT NULL AUTO_INCREMENT,
    creationdate int NOT NULL,
    description text NOT NULL,
    item_id int NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(id),
    PRIMARY KEY (id)
);


CREATE TABLE 'item' (
    id int NOT NULL AUTO_INCREMENT,
    creationdate int NOT NULL,
    shortdescription tinytext NOT NULL,
    longdescription longtext NOT NULL,
    nodphcost int NOT NULL,
    dphcost int NOT NULL,
    
    PRIMARY KEY (id)
);


CREATE DATABASE webhosting;