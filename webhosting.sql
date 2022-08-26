CREATE DATABASE webhosting


CREATE TABLE website (
    id int NOT NULL,
    domain varchar(255) NOT NULL,
    creationdate int NOT NULL,
    description text NOT NULL,
    category_id int NOT NULL,
    
    FOREIGN KEY (category_id) REFERENCES category(id),
    PRIMARY KEY (id)
);

CREATE TABLE client (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description text NOT NULL,
    creationdate int NOT NULL,
    
    
    PRIMARY KEY (id)
);

CREATE TABLE client_website (
    client_id int NOT NULL,
    website_id int NOT NULL,
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (website_id) REFERENCES website(id)

);

INSERT INTO category
VALUES (1, 'informativni prohlizeci stranka', 'Vyhledavani, e-mail, novinky, mapy, zpravodajstvi, televize');
INSERT INTO category
VALUES (2, 'Skolni', 'Stranky skoly');
INSERT INTO category
VALUES (3, 'Spotrebice', 'Prodej pocitacu, a ruznych spotrebicu');


INSERT INTO website
VALUES (1, 'seznam.cz', 1996, 'stranka s novinkami a vlastnim emailem, s mapou a dalsimi funkcemi' , 1);
INSERT INTO website
VALUES (2, 'www.ossp.cz', 1999, 'stranka ohledne OSSP Kolin', 2);
INSERT INTO website
VALUES (3, 'Alza.cz', 1994, 'Prodej spotrebicu od Alzy' ,3);
INSERT INTO website
VALUES (4, 'uzlabina.cz', 1989, 'stranka ohledne SPSP Uzlabina' ,2);
INSERT INTO website
VALUES (5, 'CZC.cz', 1998, 'Prodej spotrebicu od CZC' ,3);

INSERT INTO client
VALUES (1, 'Ivo_Lukacovic', 'Spravce serveru seznam.cz' , 1975-8-22);
INSERT INTO client
VALUES (2, 'Barbora_Kulhankova', 'Spravce serveru ossp.cz' , 2021-4-12);
INSERT INTO client
VALUES (3, 'Josef_Matejkovy', 'Spravce serveru CZC.cz' , 2015-1-18);
INSERT INTO client
VALUES (4, 'Ales_Zavoral', 'Spravce serveru Alza.cz' , 2002-5-31);
INSERT INTO client
VALUES (5, 'Romana_Bukovska', 'Spravce serveru uzlabina.cz' , 2022-2-28);