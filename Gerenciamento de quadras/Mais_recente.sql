-- Criação das tabelas

CREATE TABLE public."Endereco" (
    "id" integer PRIMARY KEY,
    "active" date,
    "rua" varchar(20),
    "bairro" varchar(100),
    "cidade" varchar(100),
    "numero" integer
);

CREATE TABLE public."Quadras" (
    "id" integer PRIMARY KEY,
    "active" date,
    "nome" varchar(100) NOT NULL,
    "club_id" integer NOT NULL,
    "tipo_id" integer NOT NULL,
    "endereco_id" integer NOT NULL
);

CREATE TABLE public."Aluguel" (
    "id" integer PRIMARY KEY,
    "cliente_id" integer NOT NULL,
    "quadra_id" integer NOT NULL,
    "dataAluguel" date NOT NULL,
    "dataFimAluguel" date NOT NULL
);

CREATE TABLE public."Aulas" (
    "id" integer PRIMARY KEY,
    "aluguel_id" integer,
    "active" date,
    "esporte" varchar(200),
    "professor_id" integer NOT NULL
);

CREATE TABLE public."AlunoAula" (
    "id" integer PRIMARY KEY,
    "aluno_id" integer NOT NULL,
    "aula_id" integer NOT NULL
);

CREATE TABLE public."Alunos" (
    "id" integer PRIMARY KEY,
    "cliente_id" integer NOT NULL,
    "CPF" integer,
    "nome" varchar(200) NOT NULL,
    "sobrenome" varchar(100),
    "nascimento" date,
    "altura" float,
    "peso" float,
    "tipoSangue" varchar(20) NOT NULL,
    "endereco_id" integer NOT NULL,
    "active" date
);

CREATE TABLE public."HorariosQuadras" (
    "id" integer PRIMARY KEY,
    "aula_id" integer NOT NULL,
    "quadra_id" integer NOT NULL,
    "Horario_id" integer NOT NULL
);

CREATE TABLE public."Horarios" (
    "id" integer PRIMARY KEY,
    "data" date NOT NULL,
    "horaInicial" time NOT NULL,
    "horaFinal" time NOT NULL,
    "ocupado" boolean NOT NULL
);

CREATE TABLE public."Professor" (
    "id" integer PRIMARY KEY,
    "active" date,
    "CNPJ" integer,
    "CPF" integer,
    "nome" varchar(100),
    "sobrenome" varchar(100),
    "descricao" text,
    "nascimento" date,
    "altura" float,
    "peso" float,
    "endereco_id" integer
);

CREATE TABLE public."TipoQuadra" (
    "id" integer PRIMARY KEY,
    "nome" varchar(200) NOT NULL,
    "descricao" text
);

CREATE TABLE public."Club" (
    "id" integer PRIMARY KEY,
    "active" date,
    "nome" varchar(100) NOT NULL,
    "quantidadeMembros" integer NOT NULL,
    "descriacao" text,
    "cedeEndereco_id" integer
);

CREATE TABLE public."Cliente" (
    "id" integer PRIMARY KEY,
    "active" date,
    "nome" varchar(100) NOT NULL,
    "sobrenome" varchar(200) NOT NULL,
    "CPF" integer,
    "CNPJ" integer,
    "endereco_id" integer
);

CREATE TABLE public."Pagamento" (
    "id" integer PRIMARY KEY,
    "aluguel_id" integer NOT NULL,
    "finaceiro_id" integer NOT NULL,
    "quadra_id" integer NOT NULL,
    "cliente_id" integer NOT NULL,
    "data" date NOT NULL,
    "valor" float NOT NULL,
    "statusPagamento" varchar(100) NOT NULL
);

CREATE TABLE public."Adm" (
    "id" integer PRIMARY KEY,
    "active" date,
    "adm" boolean,
    "CPF" integer NOT NULL,
    "nome" varchar(100) NOT NULL,
    "sobrenome" varchar(100) NOT NULL,
    "endereco_id" integer NOT NULL
);

CREATE TABLE public."Saida" (
    "id" integer PRIMARY KEY,
    "valorSaida" money NOT NULL,
    "DataSaida" date NOT NULL,
    "descricao" text,
    "adm_Id" integer NOT NULL
);

CREATE TABLE public."Financeiro" (
    "id" integer PRIMARY KEY,
    "Pagamento_Saida_id" integer NOT NULL,
    "DataBalanco" date NOT NULL,
    "valorEntrada" money NOT NULL,
    "descricao" text
);

CREATE TABLE public."Telefone" (
    "proprietario_id" integer NOT NULL,
    "id" integer PRIMARY KEY,
    "DD" integer NOT NULL,
    "numero" integer NOT NULL,
    "tipo" varchar(100)
);

CREATE TABLE public."Email" (
    "proprietario_id" integer NOT NULL,
    "id" integer PRIMARY KEY,
    "email" varchar(200) NOT NULL
);

CREATE TABLE public."PrecoAluguel" (
    "id" integer PRIMARY KEY,
    "horas" float NOT NULL,
    "valorHora" float NOT NULL,
    "tipoQuadra_id" integer NOT NULL,
    "dataDoPrecoVigente" date NOT NULL
);

CREATE TABLE public."Colaborador" (
    "id" integer PRIMARY KEY,
    "club_id" integer NOT NULL,
    "CNPJ" integer,
    "CPF" integer,
    "nome" varchar(100) NOT NULL,
    "sobrenome" varchar(100) NOT NULL,
    "descricao" text,
    "nascimento" date,
    "endereco_id" integer NOT NULL
);

-- Adição das restrições de chave estrangeira (FK)

ALTER TABLE public."Quadras"
ADD CONSTRAINT "Quadra_Endereco"
FOREIGN KEY ("endereco_id") REFERENCES public."Endereco" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Quadras"
ADD CONSTRAINT "Quadra_Club"
FOREIGN KEY ("club_id") REFERENCES public."Club" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Quadras"
ADD CONSTRAINT "Quadra_Tipo"
FOREIGN KEY ("tipo_id") REFERENCES public."TipoQuadra" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Alunos"
ADD CONSTRAINT "Aluno_Cliente"
FOREIGN KEY ("cliente_id") REFERENCES public."Cliente" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Aulas"
ADD CONSTRAINT "Aulas_Professor"
FOREIGN KEY ("professor_id") REFERENCES public."Professor" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Alunos"
ADD CONSTRAINT "Aluno_Endereco"
FOREIGN KEY ("endereco_id") REFERENCES public."Endereco" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."AlunoAula"
ADD CONSTRAINT "Aluno_Aula"
FOREIGN KEY ("aluno_id") REFERENCES public."Alunos" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."AlunoAula"
ADD CONSTRAINT "Aula_Aluno"
FOREIGN KEY ("aula_id") REFERENCES public."Aulas" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."HorariosQuadras"
ADD CONSTRAINT "Quadra_Horario"
FOREIGN KEY ("quadra_id") REFERENCES public."Quadras" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."HorariosQuadras"
ADD CONSTRAINT "Horario_Aula"
FOREIGN KEY ("aula_id") REFERENCES public."Aulas" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."HorariosQuadras"
ADD CONSTRAINT "Horario_Quadra"
FOREIGN KEY ("Horario_id") REFERENCES public."Horarios" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Professor"
ADD CONSTRAINT "Professor_Endereco"
FOREIGN KEY ("endereco_id") REFERENCES public."Endereco" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Cliente"
ADD CONSTRAINT "Cliente_Endereco"
FOREIGN KEY ("endereco_id") REFERENCES public."Endereco" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Pagamento"
ADD CONSTRAINT "Pagamento_Quadra"
FOREIGN KEY ("quadra_id") REFERENCES public."Quadras" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

ALTER TABLE public."Pagamento"
ADD CONSTRAINT "Pagamento_Cliente"
FOREIGN KEY ("cliente_id") REFERENCES public."Cliente" ("id")
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
