CREATE DATABASE eshop;

CREATE TABLE customer (
    id int NOT NULL AUTO_INCREMENT,
    forename varchar(255) NOT NULL,
    surname varchar(255) NOT NULL,
    birthdate int NOT NULL,
    telnumber int NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(8) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE corder (
    id int NOT NULL AUTO_INCREMENT,
    variablechar char NOT NULL,
    creationdate int NOT NULL,
    description text NOT NULL,
    item_id int NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(id),
    PRIMARY KEY (id)
);


CREATE TABLE item (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    creationdate int NOT NULL,
    shortdescription tinytext NOT NULL,
    longdescription longtext NOT NULL,
    nodphcost int NOT NULL,
    dphcost int NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE corder_item (
    corder_id int NOT NULL,
    item_id int NOT NULL,
    FOREIGN KEY (corder_id) REFERENCES corder(id),
    FOREIGN KEY (item_id) REFERENCES item(id)

);


INSERT INTO customer
VALUES (1, 'Milos', 'Jirasek', 1975, 121245888, 'milos.jirasek@seznam.cz', 'jirasek2');
INSERT INTO customer
VALUES (2, 'Jan', 'Novak', 1985, 123456789, 'jan.novak@gmail.com', '12345678');
INSERT INTO customer
VALUES (3, 'Lukas', 'Prasek', 1964, 999888777, 'prasek.lukas@email.cz', 'heslo123');
INSERT INTO customer
VALUES (4, 'Tomas', 'Mlyn', 1997, 111222333, 'tomas.mlyn123@seznam.cz', 'password');
INSERT INTO customer
VALUES (5, 'Frantisek', 'Kuryl', 2000, 121245888, 'kuryl@seznam.cz', 'narodni2');


INSERT INTO item
VALUES (1,'stavebnice lega', 2002, 'stavebnice zalozena na legu, s hodne kostickami','Jsou de kvalitni stavebnice mnoha druhu, od aut po domy a mrakodrapy', 200, 242);
INSERT INTO item
VALUES (2,  'auticko', 2005, 'auticko, mame nekolik druhu' , 'auticko pro deti, sportovni, osobni, nakladni auto', 400, 484);
INSERT INTO item
VALUES (3, 'rychlovarna konvice', 2008, 'konvice, ktera muze rychle uvarit vodu', 'ma objem dvacet litru, je ticha, rychle ohreje vodu, prijima vysoke napeti a eletrinu', 1000, 1210);
INSERT INTO item
VALUES (4, 'pribory', 2004, 'noze, vydlicky a lzice', 'stribrne, kvalitni a nerezove pribory, ktere vam pomuzou', 352, 426);
INSERT INTO item
VALUES (5,  'ucebnice prirodopisu',2022, 'nova ucebnice prirodopisu', 'ucebnice prirodopisu, ktera obsahuje vyuku o rostlinach a zviratech', 525, 635);
INSERT INTO item
VALUES (6, 'sesit 424', 2021,'linkovany sesit s 20 stranami', ' veliky sesit A4 s mekym obalem a kvalitnim papirem', 40, 48);

INSERT INTO corder
VALUES (1, 'A', 2022, 'objednavka stavebnice a auticka', 1);
INSERT INTO corder
VALUES (2, 'B', 2022, 'objednavka priboru a konvice', 2);
INSERT INTO corder
VALUES (3, 'C', 2022, 'objednavka ucebnice a sesitu', 3);
INSERT INTO corder
VALUES (4, 'D', 2022, 'objednavka konvice a ucebnice', 4);
INSERT INTO corder
VALUES (5, 'E', 2022, 'objednavka stavebnice a sesitu', 5);


INSERT INTO corder_item
VALUES (1,1);
INSERT INTO corder_item
VALUES (1,2);
INSERT INTO corder_item
VALUES (2,3);
INSERT INTO corder_item
VALUES (2,4);
INSERT INTO corder_item
VALUES (3,5);
INSERT INTO corder_item
VALUES (3,6);
INSERT INTO corder_item
VALUES (4,3);
INSERT INTO corder_item
VALUES (4,5);
INSERT INTO corder_item
VALUES (5,1);
INSERT INTO corder_item
VALUES (5,6);

