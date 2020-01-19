CREATE DATABASE qreserve;
USE qreserve;

CREATE TABLE utilisateur(
	id INT NOT NULL,
	nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    mail VARCHAR(255) NOT NULL,
    telephone VARCHAR(50) NOT NULL,
    statut BOOL NOT NULL,
    
    CONSTRAINT PK_UTI PRIMARY KEY(id)
);

CREATE TABLE salle(
	id INT NOT NULL,
	numero INT NOT NULL,
    nom VARCHAR(50) NULL,
    
    CONSTRAINT PK_SAL PRIMARY KEY(id)
);

CREATE TABLE reservation(
	id INT NOT NULL,
	nom VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    dateDebut DATETIME NOT NULL,
    dateFin DATETIME NOT NULL,
    participants TEXT NOT NULL,
    utilisateur_id INT NOT NULL,
    salle_id INT NOT NULL,
    
    CONSTRAINT PK_RES PRIMARY KEY(id)
);

ALTER TABLE reservation ADD CONSTRAINT FK_RES_UTI FOREIGN KEY (utilisateur_id) REFERENCES utilisateur (id);
ALTER TABLE reservation ADD CONSTRAINT FK_RES_SAL FOREIGN KEY (salle_id) REFERENCES salle (id);

INSERT INTO utilisateur(id, nom, prenom, mail, telephone, statut) VALUES (1, 'admin', 'admin', 'admin@admin.fr', '0102030405', true);
INSERT INTO utilisateur(id, nom, prenom, mail, telephone, statut) VALUES (2, 'user', 'user', 'user@user.fr', '0102030405', false);

INSERT INTO salle(id, numero, nom) VALUES (1, 1, 'salle 1');
INSERT INTO salle(id, numero, nom) VALUES (2, 2, 'salle 2');

INSERT INTO reservation(id, nom, description, dateDebut, dateFin, participants, utilisateur_id, salle_id) VALUES (1, 'cours', 'cours de maths', '2019-10-12 10:00:00', '2019-10-12 11:00:00', 'eleve@eleve.fr', 1, 1);
INSERT INTO reservation(id, nom, description, dateDebut, dateFin, participants, utilisateur_id, salle_id) VALUES (2, 'reunion', 'reunion du personnel', '2019-10-12 11:00:00', '2019-10-12 12:00:00', 'admin@admin.fr', 2, 2);