INSERT INTO UTENTE (NomeUtente, Nome, Cognome, Email, Password, Foto, Biografia, Tipo)
VALUES ('MarioRossi22', 'Mario', 'Rossi', 'mariorossi22@gmail.com', 'rossi22', 'foto.jpg',
        '', 1),
       ('FrancoVerdi', 'Franco', 'Verdi', 'francoverdi72@gmail.com', '123456',
        'profilo.jpg', '', 1),
       ('MarcoEsposito88', 'Marco', 'Esposito', 'marcoespo@gmail.com', 'Espo88',
        'fotosito.jpg', '', 1),
       ('AndreaMarga', 'Andrea', 'Marga', 'marga1234@gmail.com', 'Marcotiamo',
        'fotoo.jpg', '', 1),
       ('VinceTorino', 'Vincenzo', 'Forte', 'Vince69@gmail.com', 'qwerty69',
        'fotoprofilo.jpg', '', 1),
       ('AnnaRicette', 'Anna', 'Spalto', 'annaspalto@gmail.com', 'annaspalto74',
        'foto.jpg', '', 1),
       ('Susi90', 'Susanna', 'Esposito', 'susannaesposito@gmail.com', 'susiesposito90',
        'photo.jpg', '', 1),
       ('mocanu', 'Alexandru', 'Mocanu', 'alexandru@mocanu.com', 'qwertyuiop',
        'fotoprofilo.jpg', '', 1),
       ('AleBag', 'Alessandro', 'Baglivo', 'Alebaglivo@gmail.com', 'Papere98',
        'fotodacaricare.jpg', '', 1),
       ('FedericoG', 'Federico', 'Giorgis', 'giorgis.16@gmail.com', 'FedeGiorgis+',
        'foto.jpg', '', 1),
       ('Perla98', 'Erica', 'Cameri', 'erica.perla.98@gmail.com', 'Cameriniperla',
        'foto12.jpeg', '', 1),
       ('AlessioGre', 'Alessio', 'Greco', 'alegreco98@gmail.com', 'Alessiomartina',
        'foto.jpg', '', 1),
       ('Matteo1234', 'Matteo', 'Porto', 'portomatteo@gmail.com', 'porto1209',
        'vfdvfsd.jpg', '', 1),
       ('CarloCracco', 'Carlo', 'Cracco', 'businessCracco@gmail.com', 'Sonoilmigliore',
        'fotografia.jpg', 'Carlo Cracco,
Giudice di MasterChef Italia e proprietario di 3 ristoranti', 1),
       ('EnricoBartolini', 'Enrico', 'Bartolini', 'EnricoBartolini@gmail.com',
        'MudecBartolini', 'Photo.jpeg', 'Enrico Bartolini,
Chef del ristorante del museo delle culture di Milano', 1),
       ('GiancarloPerbellini', 'Giancarlo', 'Perbellini', 'OfficialPerbellini@gmail.com',
        'CasaPerbellini', 'foto.jpg', 'Giancarlo
Perbellini, proprietario di Casa Perbellini e Colori di Cuoco', 1),
       ('La Redazione', '', '', 'redazione@giallozafferano.it', 'ur+/rijalf//89..', '',
        '', 3);


INSERT INTO SEGUACE(Cuoco, Follower)
VALUES ('GiancarloPerbellini', 'FedericoG'),
       ('GiancarloPerbellini', 'AlessioGre'),
       ('GiancarloPerbellini', 'mocanu'),
       ('GiancarloPerbellini', 'AnnaRicette'),
       ('GiancarloPerbellini', 'Susi90'),
       ('GiancarloPerbellini', 'FrancoVerdi'),
       ('CarloCracco', 'Perla98'),
       ('CarloCracco', 'AndreaMarga'),
       ('EnricoBartolini', 'FrancoVerdi'),
       ('EnricoBartolini', 'FedericoG'),
       ('EnricoBartolini', 'VinceTorino'),
       ('CarloCracco', 'mocanu'),
       ('GiancarloPerbellini', 'VinceTorino'),
       ('EnricoBartolini', 'AleBag'),
       ('EnricoBartolini', 'MarioRossi22'),
       ('CarloCracco', 'VinceTorino');

Insert into Ingrediente(Nome)
values ('spaghetti'),
       ('pomodoro'),
       ('guanciale'),
       ('pecorino'),
       ('bucatini'),
       ('sale grosso'),
       ('savoiardi'),
       ('uova'),
       ('mascarpone'),
       ('zucchero'),
       ('caffe'),
       ('cacao in polvere'),
       ('sale fino'),
       ('pepe nero'),
       ('quinoa'),
       ('fagioli'),
       ('zucchine'),
       ('ravanelli'),
       ('menta'),
       ('olio extravergine'),
       ('peperoncino'),
       ('riso'),
       ('acqua'),
       ('piselli'),
       ('prosciutto cotto'),
       ('cipollotto'),
       ('olio di semi'),
       ('salsa di soia'),
       ('branzino'),
       ('cipolle'),
       ('carote'),
       ('sedano'),
       ('salvia'),
       ('basilico'),
       ('prezzemolo'),
       ('aglio'),
       ('vino bianco'),
       ('biscotti'),
       ('burro'),
       ('nutella'),
       ('formaggio fresco'),
       ('granella di nocciole'),
       ('farina di mandorle'),
       ('zucchero a velo'),
       ('panna fresca'),
       ('cioccolato'),
       ('vaniglia'),
       ('zafferano'),
       ('caciocavallo'),
       ('vino rosso'),
       ('maiale macinato'),
       ('mozzarella'),
       ('pangrattato'),
       ('aglio'),
       ('farina 0');

INSERT INTO DIETA (Nome)
VALUES ('Vegetariano'),
       ('Vegano'),
       ('Crudista'),
       ('Gluten-free'),
       ('Fruttariano');

Insert into Ricetta(RID, NomeUtente, Titolo, Descrizione, Dosi, Difficolta, Costo,
                    Preparazione, Cottura, FotoCopertina,
                    Portata)
values (1, 'AnnaRicette', 'Pasta all ammatriciana',
        'Come cucinare una buonissima pasta all amatriciana!', 4, 1, 1, 10,
        25, 'amatriciana.png', 'primo piatto'),
       (2, 'mocanu', 'Tiramisu', 'Come cucinare il tiramisu', 8, 1, 1, '40', 0,
        'tiramisu.jpg', 'dolce'),
       (3, 'CarloCracco', 'Spaghetti alla carbonara',
        'Veloce preparazione degli spaghetti alla carbonara', 4, 1, 1, 15,
        10, 'carbonara.jpeg', 'primo piatto'),
       (4, 'VinceTorino', 'Insalata di quinoa',
        'Come cucinare l insalata di quinoa e mantenersi in forma', 4, 1, 1, 20,
        10, 'quinoa.png', 'primo piatto'),
       (5, 'AlessioGre', 'Riso alla cantonese',
        'Ottimo piatto per chi ama la cucina cinese!', 4, 1, 1, 10, '30',
        'cantonese.png', 'primo piatto'),
       (6, 'Susi90', 'Branzino al forno', 'Per gli amanti del pesce...', 1, 2, 2, 15, 45,
        'branzino.png',
        'secondo piatto'),
       (7, 'AleBag', 'Cheesecake alla nutella', 'Il dolce di cui tutti si innamoreranno',
        10, 1, 1, 15, 0,
        'cheesecakenutella.png', 'dolce'),
       (8, 'GiancarloPerbellini', 'Macarons', 'Sfizioso ed economico', 4, 3, 3, 40, 13,
        'Macarons.png', 'dolce'),
       (9, 'EnricoBartolini', 'Arancini di riso', 'Le bonta della cucina siciliana', 3, 2,
        2, 60, 45,
        'aranciniriso.png', 'antipasto'),
       (10, 'CarloCracco', 'Pizzelle fritte', 'Le montanare', 5, 3, 3, 40, 25,
        'pizzellefritte.png', 'antipasto');

INSERT INTO PUBBLICAZIONE (NomeUtente, RID)
VALUES ('AnnaRicette',1),
       ('mocanu', 2),
       ('CarloCracco', 3),
       ('VinceTorino', 4),
       ('AlessioGre', 5),
       ('Susi90', 6),
       ('AleBag', 7),
       ('GiancarloPerbellini', 8),
       ('EnricoBartolini', 9),
       ('CarloCracco', 10);

INSERT INTO SALVATAGGIO(nomeutente, rid)
VALUES ('mocanu', 1),
       ('mocanu', 3);

INSERT INTO COMPOSIZIONE(RID, icod, Quantita, Annotazioni)
VALUES (1, 1, '320 g', ''),
       (1, 2, '400 g', ''),
       (1, 3, '150 g', ''),
       (1, 4, '75 g', ''),
       (1, 13, 'un cucchiaio', ''),
       (1, 20, 'un cucchiaio',
        ''),
       (1, 21, '1', ''),
       (1, 37, '50 g', ''),
       (2, 7, '300 g', ''),
       (2, 8, '220 g', ''),
       (2, 9, '500 g', ''),
       (2, 10, '100g', ''),
       (2, 11, '300g',
        ''),
       (2, 12, 'quanto basta', 'per la superficie'),
       (3, 1, '320 g', ''),
       (3, 3, '150 g', ''),
       (3, 8, '6', 'solo tuorli'),
       (3, 4, '50 g',
        ''),
       (3, 13, 'quanto basta', ''),
       (3, 14, 'quanto basta', ''),
       (4, 15, '200 g', ''),
       (4, 16, '150 g', ''),
       (4, 17, '150 g', 'piccole'),
       (4, 2, '160 g', ''),
       (4, 18, '160 g', ''),
       (4, 19, 'quanto basta', ''),
       (4, 20, '20 g', ''),
       (4, 13, 'quanto basta', ''),
       (4, 14, 'quanto
           basta', ''),
       (5, 22, '250 g', ''),
       (5, 23, '500 g', ''),
       (5, 24, '250 g', ''),
       (5, 25, '125 g', ''),
       (5, 26, '100 g', ''),
       (5, 8, '3', ''),
       (5, 27,
        '6 cucchiai', ''),
       (5, 28, '3 cucchiai', ''),
       (5, 13, 'quanto basta', ''),
       (6, 29, '800 g', ''),
       (6, 30, '1', 'media'),
       (6, 31, '1', ''),
       (6, 32, '1 costa', ''),
       (6, 33, '2 foglie', ''),
       (6, 34, '4 foglie', ''),
       (6, 35, '2 cucchiai', 'da tritare'),
       (6, 20, '6 cucchiai',
        ''),
       (6, 36, '1 spicchio', ''),
       (6, 37, 'quanto basta', ''),
       (6, 2, '250 g', ''),
       (7, 38, '180 g', ''),
       (7, 39,
        '80 g', ''),
       (7, 40, '500 g', ''),
       (7, 41, '500 g', ''),
       (7, 42, '30 g', ''),
       (8, 43, '125g', 'a grana fine'),
       (8, 44, '125 g', ''),
       (8, 8,
        '87.5 g', 'temperatura di 20 gradi'),
       (8, 10, '135 g', ''),
       (8, 23, '32 g', ''),
       (8, 45, '90 g', ''),
       (8, 46, '180 g', ''),
       (8, 47, '1
           baccello', ''),
       (8, 39, '12 g', 'a pomata'),
       (9, 48, '1 bustina', ''),
       (9, 39, '30 g', ''),
       (9, 22, '500 g', ''),
       (9, 13, '1 pizzico', ''),
       (9, 49, '100 g', 'stagionato da grattugiare'),
       (9, 51, '100g', ''),
       (9, 14, 'quanto basta', ''),
       (9, 30, 'mezza cipolla', ''),
       (9, 20, 'quanto basta', ''),
       (9, 24, '80 g', ''),
       (9, 52, '60 g', ''),
       (10, 55, '700 g', ''),
       (10, 23, '500 ml', ''),
       (10, 2, '720 g', ''),
       (10, 34, '25 foglie', ''),
       (10, 13, 'quanto basta', ''),
       (10, 54, '1 spicchio', ''),
       (10, 20, 'quanto basta',
        '');

INSERT INTO COMMENTO (CID, NomeUtente, Testo, DataOra)
VALUES (1, 'Susi90', 'Grazie mille ricetta utilissima!', '2012-12-21 10:30:46'),
       (2, 'Susi90', 'Posso usare i Pavesini al posto dei savoiardi?',
        ' 2012-12-21 10:54:01'),
       (3, 'Susi90', 'Ho provato a rifarla ma non mi e uscita cosi bene',
        ' 2013-01-01 17:10:23'),
       (4, 'mocanu',
        'In realta per quella tradizionale bastano i seguenti ingredienti: pasta, uova, panna,
prosciutto e funghi! :P', '2017-05-23 22:22:23'),
       (5, 'mocanu',
        'Dovrei preparare gli esami ma invece perdo tempo a guardare ricette su internet,
dottore cos ho che non va? ', '2019-05-29 19:47:00'),
       (6, 'AleBag', 'GRAZIE ROMAA! Forza MAGGICA x sempre', '2019-03-12 00:23:21'),
       (7, 'Perla98',
        'Io sono a dieta, non c e una variante con meno grassi o zuccheri? =)',
        '2019-04-29
09:57:11'),
       (8, 'AlessioGre', 'Posso farla anche se non ho la quinoa o linsalata ??',
        '2019-04-03 08:27:55'),
       (9, 'VinceTorino', 'Ma si dice arancino o arancina??', '2018-11-11 11:49:39'),
       (10, 'MarcoEsposito88', 'Ottima ricetta pero la pizza napoletana non si batte!',
        '2018-12-29
19:00:09'),
       (11, 'MarcoEsposito88', 'Meglio una bella pizza napoletana',
        '2018-12-29 19:14:33');


INSERT INTO COMMENTO (CID, NomeUtente, RID, Testo, DataOra)
VALUES (12, 'La Redazione', 2,
        'Certo, non sara la stessa cosa, ma il risultato e sorprendentemente simile',
        '2012-12-21 11:31:05'),
       (13, 'Susi90', 2,
        'Grazie mille per la risposta!! Confermo, li ho provati e il risultato e ottimo!',
        '2012-12-21
20:58:57'),
       (14, 'La Redazione', 3, 'L importante e provarci (;', '2013-01-02 09:12:24'),
       (15, 'La Redazione', 4, 'Ti sei dimenticato i carciofi! ;P',
        '2017-04-25 09:27:10'),
       (16, 'MarcoEsposito88', 5, 'Si St***z', '2019-06-28 23:23:45'),
       (17, 'AleBag', 7, 'Certo, ti basta solamente chiudere il computer immediatamente!',
        '2019-04-29
17:44:53'),
       (18, 'AlessioGre', 9, 'Si dice Arancin*', '2018-11-11 23:04:29');



INSERT INTO APPARTENENZA (RID, dcod)
VALUES (4, 2),
       (4, 4),
       (4, 3),
       (7, 1),
       (2, 1),
       (9, 1),
       (10, 1),
       (4, 1);

INSERT INTO LISTASPESA (NomeUtente, icod, Quantita)
values ('mocanu', 5, 3),
       ('mocanu', 43, 1),
       ('mocanu', 55, 1),
       ('mocanu', 25, 2),
       ('mocanu', 13, 3),
       ('AleBag', 28, 1),
       ('AleBag', 11, 1),
       ('AleBag', 36, 4),
       ('AleBag', 2, 10),
       ('VinceTorino', 17, 2),
       ('VinceTorino', 50, 7),
       ('MarcoEsposito88', 30, 1),
       ('MarcoEsposito88', 1, 10),
       ('MarcoEsposito88', 44, 3),
       ('Perla98', 49, 5),
       ('Perla98', 16, 2),
       ('Perla98', 51, 3),
       ('Perla98', 29, 1),
       ('Perla98', 33, 1),
       ('Matteo1234', 3, 1);