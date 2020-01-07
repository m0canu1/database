CREATE TABLE UTENTE
(
    NomeUtente varchar(32) PRIMARY KEY,
    Nome       varchar(32),
    Cognome    varchar(32),
    Email      varchar(32)  NOT NULL,
    Password   varchar(256) NOT NULL,
    Foto       varchar(256),
    Biografia  text,
    Tipo       int          NOT NULL
);

CREATE TABLE SEGUACE
(
    Cuoco    varchar(32) REFERENCES UTENTE (NomeUtente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    Follower varchar(32) REFERENCES UTENTE (NomeUtente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (Cuoco, Follower)
);


CREATE TABLE INGREDIENTE
(
    icod serial PRIMARY KEY,
    Nome varchar(32) NOT NULL
);


CREATE TABLE DIETA
(
    dcod serial PRIMARY KEY,
    Nome varchar(32) NOT NULL
);

CREATE TABLE RICETTA
(
    RID           int PRIMARY KEY,
    NomeUtente    varchar(32) REFERENCES UTENTE (NomeUtente)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL,
    Titolo        varchar(64) NOT NULL,
    Descrizione   text        NOT NULL,
    Dosi          int         NOT NULL,
    Difficolta    int         NOT NULL,
    Costo         int         NOT NULL,
    Preparazione  int         NOT NULL,
    Cottura       int         NOT NULL,
    FotoCopertina varchar(256),
    Portata       varchar(32)
);

CREATE TABLE SALVATAGGIO
(
    NomeUtente varchar(32) REFERENCES utente (nomeutente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    RID        int REFERENCES RICETTA (RID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (NomeUtente, RID)
);

CREATE TABLE COMPOSIZIONE
(
    RID         int REFERENCES RICETTA (RID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    icod        int REFERENCES INGREDIENTE (icod)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    Quantita    varchar(32) NOT NULL,
    Annotazioni varchar(64),
    PRIMARY KEY (RID, icod)
);

CREATE TABLE COMMENTO
(
    CID        serial PRIMARY KEY,
    NomeUtente varchar(32) REFERENCES UTENTE (NomeUtente)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    RID        int REFERENCES RICETTA (RID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    Testo      varchar(512) NOT NULL,
    DataOra    date         NOT NULL
);

CREATE TABLE RISPOSTA
(
    CID        int REFERENCES COMMENTO (CID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    InRisposta int REFERENCES COMMENTO (CID)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    PRIMARY KEY (CID, InRisposta)
);

CREATE TABLE LISTASPESA
(
    NomeUtente varchar(32) REFERENCES UTENTE (NomeUtente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    icod       int REFERENCES INGREDIENTE (icod)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    Quantita   float,
    PRIMARY KEY (NomeUtente, icod)
);

CREATE TABLE APPARTENENZA
(
    RID  int REFERENCES RICETTA (RID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    dcod int REFERENCES DIETA (dcod)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (RID, dcod)
);

CREATE TABLE PUBBLICAZIONE
(
    NomeUtente varchar REFERENCES UTENTE (NomeUtente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    RID int REFERENCES RICETTA (RID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (NomeUtente, RID)
);
