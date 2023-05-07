CREATE TABLE Endereco( id integer UNIQUE, active date, rua varchar(20), bairro varchar(100), cidade varchar(100), numero integer, PRIMARY KEY(id) );

CREATE TABLE Quadras( id integer UNIQUE,active date, nome varchar(100) NOT NULL, club_id integer NOT NULL, tipo_id integer NOT NULL, endereco_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Aluguel( id integer UNIQUE, cliente_id integer NOT NULL, quadra_id integer NOT NULL, dataAluguel date NOT NULL);

CREATE TABLE Aulas( id integer UNIQUE, active date, esporte varchar(200), professor_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE AlunoAula( id integer UNIQUE, aluno_id integer NOT NULL, aula_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Alunos( id integer UNIQUE, cliente_id integer NOT NULL, CPF integer, nome varchar(200) NOT NULL, sobrenome varchar(100), nascimento date, altura float, peso float, tipoSangue varchar(20) NOT NULL, endereco_id integer NOT NULL, active date, PRIMARY KEY(id) );

CREATE TABLE HorariosQuadras( id integer UNIQUE, aula_id integer NOT NULL, quadra_id integer NOT NULL, Horario_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Horarios( id integer UNIQUE, data date NOT NULL, horaInicial time NOT NULL, horaFinal time NOT NULL, ocupado boolean NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Professor( id integer UNIQUE, active date, CNPJ integer, CPF integer, nome varchar(100), sobrenome varchar(100), descricao text, nascimento date, aultura float, peso float, endereco_id integer , PRIMARY KEY(id) );

CREATE TABLE TipoQuadra( id integer UNIQUE, nome varchar(200) NOT NULL, descricao text , PRIMARY KEY(id) );

CREATE TABLE Club( id integer UNIQUE,active date, nome varchar(100) NOT NULL, quantidadeMembros integer NOT NULL, descriacao text, cedeEndereco_id integer, PRIMARY KEY(id));

CREATE TABLE Cliente( id integer UNIQUE,active date, nome varchar(100) NOT NULL, sobrenome varchar(200) NOT NULL, CPF integer, CNPJ integer, endereco_id integer, PRIMARY KEY(id) );

CREATE TABLE Pagamento( id integer UNIQUE, aluguel_id integer NOT NULL, finaceiro_id integer NOT NULL, quadra_id integer NOT NULL, cliente_id integer NOT NULL, data date NOT NULL, valor float NOT NULL, statusPagamento varchar(100) NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Adm( id integer UNIQUE,active date, CPF integer NOT NULL, nome varchar(100) NOT NULL, sobrenome varchar(100) NOT NULL, endereco_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Saida( id integer UNIQUE, valorSaida money NOT NULL, DataSaida date NOT NULL, descricao text,  adm_Id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Financeiro( id integer UNIQUE, Pagamento_Saida_id integer NOT NULL, DataBalanco date NOT NULL, Pagamento_entrada_id integer NOT NULL, descricao text, PRIMARY KEY(id) );

CREATE TABLE Telefone( proprietario_id integer NOT NULL, id integer UNIQUE, DD integer NOT NULL, numero integer NOT NULL, tipo varchar(100), PRIMARY KEY(id) );

CREATE TABLE Email( proprietario_id integer NOT NULL, id integer UNIQUE, email varchar(200) NOT NULL, PRIMARY KEY(id) );

CREATE TABLE PrecoAluguel( id integer UNIQUE, horas float NOT NULL, valorHora float NOT NULL, tipoQuadra_id integer NOT NULL, dataDoPrecoVigente date NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Colaborador( id integer UNIQUE, club_id integer NOT NULL, CNPJ integer, CPF integer, nome varchar(100) NOT NULL, sobrenome varchar(100) NOT NULL, descricao text, nascimento date, endereco_id integer NOT NULL, PRIMARY KEY(id) );

INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 0, null, 'Malhado', 'Feira Guai', 100 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 1, null, 'São Pedro', 'Malhado', 'Feira', 99 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 2, null, 'São Pedro', 'Malhado', 'Feira', 98 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 3, null, 'São Pedro', 'Malhado', 'Feira', 97 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 4, null, 'São Pedro', 'Malhado', 'Feira', 96 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 5, null, 'São Pedro', 'Malhado', 'Feira', 95 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 6, null, 'São Pedro', 'Malhado', 'Feira', 94 );
INSERT INTO Endereco( id , active, rua, bairro, cidade , numero ) VALUES( 7, null, 'Cristovão', 'Barra do Itaipe', 'Feira', 15 );

INSERT INTO Quadras( id , active, nome, club_id, tipo_id, endereco_id  ) VALUES( 1, null, 'Bela Vista', 1, 1, 7);
INSERT INTO Quadras( id , active, nome, club_id, tipo_id, endereco_id  ) VALUES( 2, null, 'Bela', 1, 2, 7);
INSERT INTO Quadras( id , active, nome, club_id, tipo_id, endereco_id  ) VALUES( 3, null, 'Vista', 1, 3, 7);
INSERT INTO Quadras( id , active, nome, club_id, tipo_id, endereco_id  ) VALUES( 4, null, 'Vista Bela', 1, 4, 7);
INSERT INTO Quadras( id , active, nome, club_id, tipo_id, endereco_id  ) VALUES( 5, null, 'Bela Não Vista', 1, 5, 7);
INSERT INTO Quadras( id , active, nome, club_id, tipo_id, endereco_id  ) VALUES( 6, null, 'Bela Quase Vista', 1, 6, 7);

INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 1, null, 'Basquete', 1 );
INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 2, null, 'Baisibool', 2 );
INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 3, null, 'Volei', 3 );
INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 4, null, 'Tenis', 4 );
INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 5, null, 'Fotebool', 5 );
INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 6, null, 'Fotesal', 6 );
INSERT INTO Aulas( id, active, esporte, professor_id  ) VALUES( 7, null, 'PingPong', 6 );

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

INSERT INTO Alunos( id, cliente_id, CPF, nome, sobrenome, nascimento, altura, peso, tipoSangue, endereco_id, active) VALUES ( 1,1,74589544120,'jOSE', 'ARAMIS', '1990-01-05', 2.00,70.0,'O',1 );



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

ALTER TABLE public.Quadras ADD CONSTRAINT Quadra_Endereço FOREIGN KEY (endereco_id)
REFERENCES public.Endereco (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Quadras ADD CONSTRAINT Quadra_Club FOREIGN KEY (club_id)
REFERENCES public.Club (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Quadras ADD CONSTRAINT Quadra_Tipo FOREIGN KEY (tipo_id)
REFERENCES public.TipoQuadra (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Alunos ADD CONSTRAINT Aluno_Cliente FOREIGN KEY (cliente_id)
REFERENCES public.Cliente (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Aulas ADD CONSTRAINT Aulas_Professor FOREIGN KEY (professor_id)
REFERENCES public.Professor (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Alunos ADD CONSTRAINT Aluno_Endereco FOREIGN KEY (endereco_id)
REFERENCES public.Endereco (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.AlunoAula ADD CONSTRAINT Aluno_Aula FOREIGN KEY (aluno_id)
REFERENCES public.Alunos (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.AlunoAula ADD CONSTRAINT Aula_Aluno FOREIGN KEY (aula_id)
REFERENCES public.Aulas (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.HorariosQuadras ADD CONSTRAINT Quadra_Horario FOREIGN KEY (quadra_id)
REFERENCES public.Quadras (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.HorariosQuadras ADD CONSTRAINT Horario_Aula FOREIGN KEY (quadra_id)
REFERENCES public.Aulas (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.HorariosQuadras ADD CONSTRAINT Horario_Quadra FOREIGN KEY (Horario_id)
REFERENCES public.Horarios (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Professor ADD CONSTRAINT Professor_Endereco FOREIGN KEY (endereco_id)
REFERENCES public.Endereco (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Cliente ADD CONSTRAINT Cliente_Endereco FOREIGN KEY (endereco_id)
REFERENCES public.Endereco (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Pagamento ADD CONSTRAINT Pagamento_Quadra FOREIGN KEY (quadra_id)
REFERENCES public.Quadras (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public.Pagamento ADD CONSTRAINT Pagamento_Cliente FOREIGN KEY (cliente_id)
REFERENCES public.Cliente (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
