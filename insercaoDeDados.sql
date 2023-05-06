INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 0, 'Rocinha', 'Malhado', 'Feira Guai', 100 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 1, 'São Pedro', 'Malhado', 'Feira', 99 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 2, 'São Pedro', 'Malhado', 'Feira', 98 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 3, 'São Pedro', 'Malhado', 'Feira', 97 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 4, 'São Pedro', 'Malhado', 'Feira', 96 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 5, 'São Pedro', 'Malhado', 'Feira', 95 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 6, 'São Pedro', 'Malhado', 'Feira', 94 );
INSERT INTO Endereco( id , rua, bairro, cidade , numero  ) VALUES( 7, 'Cristovão', 'Barra do Itaipe', 'Feira', 15 );

INSERT INTO Quadras( id , nome, club_id, tipo_id, endereco_id  ) VALUES( 1, 'Bela Vista', 1, 1, 7);
INSERT INTO Quadras( id , nome, club_id, tipo_id, endereco_id  ) VALUES( 2, 'Bela', 1, 2, 7);
INSERT INTO Quadras( id , nome, club_id, tipo_id, endereco_id  ) VALUES( 3, 'Vista', 1, 3, 7);
INSERT INTO Quadras( id , nome, club_id, tipo_id, endereco_id  ) VALUES( 4, 'Vista Bela', 1, 4, 7);
INSERT INTO Quadras( id , nome, club_id, tipo_id, endereco_id  ) VALUES( 5, 'Bela Não Vista', 1, 5, 7);
INSERT INTO Quadras( id , nome, club_id, tipo_id, endereco_id  ) VALUES( 6, 'Bela Quase Vista', 1, 6, 7);

INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 1, 'Basquete', 1 );
INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 2, 'Baisibool', 2 );
INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 3, 'Volei', 3 );
INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 4, 'Tenis', 4 );
INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 5, 'Fotebool', 5 );
INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 6, 'Fotesal', 6 );
INSERT INTO Aulas( id, esporte, professor_id  ) VALUES( 7, 'PingPong', 6 );

INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (1,4,5),
  (2,79,6),
  (3,11,2),
  (4,31,6),
  (5,17,5),
  (6,76,7),
  (7,3,3),
  (8,58,2),
  (9,78,5),
  (10,61,5);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (11,97,2),
  (12,3,3),
  (13,22,7),
  (14,100,1),
  (15,53,2),
  (16,17,3),
  (17,93,3),
  (18,64,6),
  (19,40,6),
  (20,83,7);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (21,100,6),
  (22,61,7),
  (23,59,3),
  (24,37,2),
  (25,83,5),
  (26,66,2),
  (27,46,2),
  (28,41,3),
  (29,45,4),
  (30,5,6);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (31,51,2),
  (32,53,5),
  (33,46,5),
  (34,52,6),
  (35,41,6),
  (36,78,5),
  (37,63,5),
  (38,11,3),
  (39,95,5),
  (40,9,6);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (41,75,2),
  (42,51,3),
  (43,55,6),
  (44,27,2),
  (45,97,1),
  (46,38,4),
  (47,36,5),
  (48,91,1),
  (49,2,2),
  (50,93,2);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (51,7,3),
  (52,88,6),
  (53,94,4),
  (54,15,6),
  (55,70,5),
  (56,66,3),
  (57,34,3),
  (58,61,7),
  (59,52,5),
  (60,61,6);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (61,41,3),
  (62,70,2),
  (63,29,7),
  (64,93,1),
  (65,63,4),
  (66,17,6),
  (67,63,3),
  (68,34,2),
  (69,82,5),
  (70,27,6);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (71,41,3),
  (72,92,5),
  (73,46,5),
  (74,92,2),
  (75,90,3),
  (76,8,4),
  (77,54,5),
  (78,59,6),
  (79,19,1),
  (80,27,3);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (81,30,4),
  (82,1,7),
  (83,61,2),
  (84,63,5),
  (85,68,5),
  (86,52,3),
  (87,7,3),
  (88,61,6),
  (89,90,4),
  (90,90,1);
INSERT INTO AlunoAula (id,aluno_id,aula_id)
VALUES
  (91,13,2),
  (92,20,3),
  (93,76,5),
  (94,10,1),
  (95,54,4),
  (96,81,3),
  (97,64,4),
  (98,13,3),
  (99,98,5),
  (100,5,3);


INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (1,2,'Jolie Cardenas','1998-06-25',75,'A',0),
  (2,3,'Wing Morgan','2000-04-01',119,'A',4),
  (3,2,'Mufutau Cherry','2003-05-23',89,'B',1),
  (4,1,'Thor Meyer','2003-04-11',78,'B',5),
  (5,7,'Lacy Dennis','2002-01-05',68,'A-',1),
  (6,3,'Iliana Foreman','1999-07-08',94,'A-',2),
  (7,10,'Wendy Moore','2003-11-21',64,'B-',3),
  (8,4,'Bertha Bauer','1996-11-14',65,'B-',2),
  (9,7,'Desiree Navarro','1992-03-14',96,'AB',1),
  (10,5,'Ethan Galloway','2003-03-06',119,'AB',6);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (11,4,'Rae Good','1992-10-11',89,'AB-',3),
  (12,5,'Alyssa Elliott','1993-08-22',54,'AB-',2),
  (13,8,'Kim Craig','1992-10-19',87,'O',5),
  (14,6,'Tanisha Sawyer','1999-08-23',97,'O',6),
  (15,4,'Mason Rivers','2004-12-27',98,'A',1),
  (16,7,'Peter Downs','1993-01-13',84,'A',2),
  (17,7,'Ori Sanders','2003-01-26',90,'B',0),
  (18,2,'Bruce Lara','1993-04-02',103,'B',5),
  (19,5,'Alden Valdez','1998-08-08',117,'A-',3),
  (20,6,'Erica Campos','2003-09-10',109,'A-',2);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (21,7,'Clementine Finley','1991-07-05',75,'B-',2),
  (22,10,'Chancellor Hutchinson','2001-04-06',93,'B-',1),
  (23,4,'Nyssa Mcfarland','1993-12-28',61,'AB',3),
  (24,8,'Jeremy Haynes','2000-07-10',92,'AB',0),
  (25,6,'Maya Christensen','2005-03-17',92,'AB-',0),
  (26,5,'Kirk Browning','1992-01-29',114,'AB-',6),
  (27,9,'Yuri Burton','2003-03-26',104,'O',3),
  (28,10,'Amber Benson','1997-09-07',104,'O',6),
  (29,6,'Stacey Holmes','1996-08-12',108,'A',6),
  (30,5,'Isaiah Wyatt','2003-08-08',51,'A',2);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (31,7,'Oprah Drake','1996-06-16',59,'B',7),
  (32,5,'Brennan Holt','2002-02-04',96,'B',0),
  (33,4,'Kimberley Franks','1994-04-17',70,'A-',7),
  (34,2,'Zane Duncan','2004-03-13',78,'A-',4),
  (35,7,'August Kirby','2004-12-27',89,'B-',3),
  (36,8,'Colby Dominguez','1998-10-15',62,'B-',5),
  (37,3,'Melinda Potts','1998-04-07',62,'AB',5),
  (38,6,'Unity Goodman','1992-12-05',72,'AB',2),
  (39,8,'Kyla Ashley','2003-01-05',50,'AB-',4),
  (40,3,'Amelia Silva','2004-11-22',112,'AB-',6);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (41,1,'Palmer Nolan','1997-07-22',118,'O',5),
  (42,1,'Quinn Dotson','1995-09-26',118,'O',5),
  (43,9,'Thomas England','1995-04-21',78,'A',5),
  (44,9,'Kitra Carlson','1994-01-03',68,'A',2),
  (45,4,'Claire Stone','1990-11-03',69,'B',5),
  (46,7,'Abdul Whitehead','2003-07-26',107,'B',5),
  (47,6,'Regina Kramer','2000-12-15',70,'A-',3),
  (48,3,'Dana Decker','1998-08-13',97,'A-',1),
  (49,1,'Troy Huffman','1995-06-04',81,'B-',5),
  (50,9,'Neil Irwin','2001-06-27',77,'B-',7);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (51,2,'Damian West','1994-09-23',74,'AB',2),
  (52,7,'Lacota Henson','1995-06-12',120,'AB',4),
  (53,9,'Paul Coffey','2001-02-18',64,'AB-',6),
  (54,4,'Leonard Evans','1999-06-10',116,'AB-',2),
  (55,8,'Brynn Herman','1996-04-25',109,'O',4),
  (56,6,'Glenna Craig','1998-06-05',52,'O',3),
  (57,5,'Molly Chang','1998-01-09',97,'A',3),
  (58,4,'Ferris Bauer','1999-07-26',57,'A',4),
  (59,2,'Tucker Hurst','1996-08-11',74,'B',3),
  (60,1,'Aimee Stark','2003-05-23',100,'B',1);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (61,6,'Summer Clements','1993-08-04',57,'A-',7),
  (62,0,'Ria Austin','1993-06-14',55,'A-',2),
  (63,3,'Noah Coffey','2005-01-01',80,'B-',6),
  (64,4,'Heather Sloan','2000-10-26',69,'B-',4),
  (65,4,'Tamara Mann','1996-10-05',80,'AB',2),
  (66,2,'Steven Brown','1999-02-03',60,'AB',6),
  (67,4,'Dolan Solis','1995-06-12',98,'AB-',6),
  (68,3,'Jennifer Stein','1994-11-01',61,'AB-',1),
  (69,7,'Joshua Nguyen','2000-04-22',72,'O',0),
  (70,5,'Yolanda Ballard','1993-11-08',119,'O',3);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (71,7,'Lila Bradshaw','1995-07-24',65,'A',6),
  (72,8,'Arthur Terrell','2002-03-09',105,'A',1),
  (73,3,'Caesar Skinner','1991-12-25',51,'B',6),
  (74,2,'Isaac Briggs','2002-06-16',94,'B',1),
  (75,5,'Hedda Barnett','1998-03-11',72,'A-',0),
  (76,3,'Vernon Beck','1991-05-20',96,'A-',7),
  (77,5,'Rina Robinson','2000-03-22',117,'B-',1),
  (78,1,'Barclay Warner','1992-08-04',76,'B-',5),
  (79,2,'Ezra Weeks','1991-05-29',87,'AB',4),
  (80,2,'Cassandra Berg','1992-02-28',69,'AB',3);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (81,3,'Hilel Horton','2003-12-12',88,'AB-',5),
  (82,1,'Adria Gentry','2000-01-29',55,'AB-',3),
  (83,9,'Norman Munoz','1993-08-05',79,'O',4),
  (84,1,'Honorato Hays','1994-07-24',86,'O',0),
  (85,3,'Cade Barnes','1993-06-12',87,'A',6),
  (86,8,'Brooke Foreman','1992-03-26',100,'A',4),
  (87,5,'Solomon Shields','1993-09-30',58,'B',5),
  (88,9,'Nash Pickett','1995-03-06',119,'B',2),
  (89,8,'Omar Simpson','1993-08-02',118,'A-',5),
  (90,4,'Autumn Brock','1997-12-22',112,'A-',0);
INSERT INTO Alunos (id,cliente_id,nome,nascimento,peso,tipoSangue,edereco_id)
VALUES
  (91,10,'Rowan Ramsey','1999-09-26',98,'B-',6),
  (92,1,'Grady Juarez','1994-02-27',104,'B-',3),
  (93,7,'Tanner Hebert','2001-07-06',56,'AB',5),
  (94,7,'Rowan Perez','2003-08-12',108,'AB',4),
  (95,2,'Acton Elliott','1996-12-31',69,'AB-',4),
  (96,4,'Marny Keller','1993-10-01',62,'AB-',1),
  (97,10,'Shay Bradshaw','1991-10-20',105,'O',0),
  (98,10,'Orson Blankenship','1993-06-03',107,'O',3),
  (99,8,'Orlando Moses','1994-06-16',79,'A',2),
  (100,2,'Ashton Dillon','1993-06-01',100,'A',1);


INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 1, 1, 1, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 1, 1, 2, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 1, 1, 3, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 2, 2, 1, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 2, 2, 2, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 2, 2, 3, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 4, 3, 1, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 4, 3, 2, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 4, 3, 3, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 5, 4, 1, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 5, 4, 2, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 5, 4, 3, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 6, 5, 1, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 6, 5, 2, true );
INSERT INTO HorariosQuadras( aula_id, quadra_id, Horario_id, ocupado ) VALUES( 6, 5, 3, true );

INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 1, '2023-04-10', '05:00:00', '07:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 2, '2023-04-10', '07:00:00', '09:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 3, '2023-04-10', '09:00:00', '11:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 4, '2023-04-10', '13:00:00', '15:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 5, '2023-04-10', '15:00:00', '17:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 6, '2023-04-10', '17:00:00', '19:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 7, '2023-04-10', '19:00:00', '21:00:00', true );
INSERT INTO Horarios( id , data , horaInicial , horaFinal , ocupado  ) VALUES( 8, '2023-04-10', '21:00:00', '23:00:00', true );

INSERT INTO Professor( id , nome , descricao, nascimento, aultura, peso, endereco_id  ) VALUES( 1, 'Wanderlei Kali Linux', 'O Mito', '1990-01-01', 2.00, 100.0, 7 );
INSERT INTO Professor( id , nome , descricao, nascimento, aultura, peso, endereco_id  ) VALUES( 2, 'Kali Linux', 'O Loco', '1990-01-01', 1.80, 100.0, 7 );
INSERT INTO Professor( id , nome , descricao, nascimento, aultura, peso, endereco_id  ) VALUES( 3, 'Wanderlei Linux', 'O Brabo', '1990-01-01', 1.70, 70.0, 5 );
INSERT INTO Professor( id , nome , descricao, nascimento, aultura, peso, endereco_id  ) VALUES( 4, 'Wanderlei Kali', 'O Lorde', '1990-01-01', 2.00, 100.0, 7 );
INSERT INTO Professor( id , nome , descricao, nascimento, aultura, peso, endereco_id  ) VALUES( 5, 'Linux kali', 'A Lenda', '1990-01-01', 1.59, 50.0, 1 );
INSERT INTO Professor( id , nome , descricao, nascimento, aultura, peso, endereco_id  ) VALUES( 6, 'Linux Wanderlei', 'A Supermaquina', '1990-01-01', 2.10, 120.0, 4 );

INSERT INTO TipoQuadra( id, nome, descricao)  VALUES( 1, 'Basquete', 'Quadra de basquete' );
INSERT INTO TipoQuadra( id, nome, descricao)  VALUES( 2, 'Baisibool', 'Quadra de baisibol' );
INSERT INTO TipoQuadra( id, nome, descricao)  VALUES( 3, 'Tenis', 'Quadra de tenis' );
INSERT INTO TipoQuadra( id, nome, descricao)  VALUES( 4, 'Futebool', 'Quadra de futebool' );
INSERT INTO TipoQuadra( id, nome, descricao)  VALUES( 5, 'Futesal', 'Quadra de futesal' );
INSERT INTO TipoQuadra( id, nome, descricao)  VALUES( 6, 'Volei', 'Quadra de volei' );

INSERT INTO Club( id, nome ) VALUES( 1, 'Corinthas' );
INSERT INTO Club( id, nome ) VALUES( 2, 'Bhaia' );
INSERT INTO Club( id, nome ) VALUES( 3, 'Palmeras');
INSERT INTO Club( id, nome ) VALUES( 4, 'Vitoria');
INSERT INTO Club( id, nome ) VALUES( 5, 'Flamengo' );
INSERT INTO Club( id, nome ) VALUES( 6, 'Santos' );
INSERT INTO Club( id, nome ) VALUES( 7, 'Cruzeiro' );

INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 0, 'Milian Nigro', 1 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 1, 'Thiago Nigro', 1 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 2, 'Nigro Firgo', 2 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 3, 'Th Santana', 3 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 4, 'Miliam', 4 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 5, 'São Rafael', 5 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 6, 'TTHH Jesuel', 6 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 7, 'CICI Jesuel', 6 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 8, 'Paula Rafael', 5 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 9, 'CICI Jesuel', 1 );
INSERT INTO Cliente( id, nome, endereco_id ) VALUES( 10, 'CICI Jesuel', 2 );

INSERT INTO Pagamento( id, quadra_id, cliente_id, data, valor, statusPagamento ) VALUES( 1, 1, 1, '2023-10-01', 1250.55, 'Kitado' );