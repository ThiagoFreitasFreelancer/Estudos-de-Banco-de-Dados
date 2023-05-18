-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- PostgreSQL version: 9.2
-- Project Site: pgmodeler.com.br
-- Model Author: ---

SET check_function_bodies = false;
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: novo_banco_de_dados | type: DATABASE --
-- CREATE DATABASE novo_banco_de_dados
-- ;
-- -- ddl-end --
-- 

-- object: public."Endereco" | type: TABLE --
CREATE TABLE public."Endereco"(
	id integer,
	active date,
	rua varchar(100),
	bairro varchar(100),
	cidade varchar(200),
	numero integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public.quadras | type: TABLE --
CREATE TABLE public.quadras(
	id integer,
	active date,
	nome varchar(200),
	club_id integer,
	tipo_id integer,
	endereco_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Aluguel" | type: TABLE --
CREATE TABLE public."Aluguel"(
	id integer,
	cliente_id integer,
	quadras_id integer,
	data_aluguel date,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Aulas" | type: TABLE --
CREATE TABLE public."Aulas"(
	id integer,
	active date,
	esporte varchar(200),
	professor_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."AlunoAula" | type: TABLE --
CREATE TABLE public."AlunoAula"(
	id integer,
	aluno_id integer,
	aula_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Alunos" | type: TABLE --
CREATE TABLE public."Alunos"(
	id integer,
	cliente_id integer,
	cpf integer,
	nome varchar(200),
	sobrenome varchar(200),
	nascimento date,
	altura float,
	peso float,
	"tipoSangue" varchar(20),
	endereco_id integer,
	active date,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."HorariosQuadras" | type: TABLE --
CREATE TABLE public."HorariosQuadras"(
	id integer,
	aula_id integer,
	quadras_id integer,
	horarios_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Horarios" | type: TABLE --
CREATE TABLE public."Horarios"(
	id integer,
	data date,
	"horariosInicial" time,
	"horariosFinal" time,
	ocupado boolean,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Professor" | type: TABLE --
CREATE TABLE public."Professor"(
	id integer,
	active date,
	cnpj integer,
	cpf integer,
	nome varchar(200),
	sobrenome varchar(200),
	descricao text,
	nascimento date,
	altura float,
	peso float,
	endereco_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."TipoQuadra" | type: TABLE --
CREATE TABLE public."TipoQuadra"(
	id integer,
	nome varchar(200),
	descricao text,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Club" | type: TABLE --
CREATE TABLE public."Club"(
	id integer,
	active date,
	name varchar(200),
	"quantidadeMembros" integer,
	descricao text,
	"cedeEndereco_id" integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Cliente" | type: TABLE --
CREATE TABLE public."Cliente"(
	id integer,
	active date,
	nome varchar(200),
	sobrenome varchar(200),
	cpf integer,
	cnpj integer,
	endereco_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Pagamento" | type: TABLE --
CREATE TABLE public."Pagamento"(
	id integer,
	aluguel_id integer,
	financeiro_id integer,
	quadras_id integer,
	cliente_id integer,
	data date,
	valor float,
	"statusPagamentos" varchar(200),
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Adm" | type: TABLE --
CREATE TABLE public."Adm"(
	id integer,
	active date,
	cpf integer,
	nome varchar(200),
	sobrenome varchar(200),
	endereco_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Saida" | type: TABLE --
CREATE TABLE public."Saida"(
	id integer,
	"valorSaida" money,
	"dataSaida" date,
	descricao text,
	adm_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Financeiro" | type: TABLE --
CREATE TABLE public."Financeiro"(
	id integer,
	"Pagamento_saida_id" integer,
	"dataBalanco" date,
	"Pagamento_entada_id" integer,
	descricao text,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Telefone" | type: TABLE --
CREATE TABLE public."Telefone"(
	id integer,
	propietario_id integer,
	"DDD" integer,
	numero integer,
	tipo varchar,
	operadora varchar(100),
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Email" | type: TABLE --
CREATE TABLE public."Email"(
	id integer,
	proprietario_id integer,
	email varchar(200),
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."PrecoAluguel" | type: TABLE --
CREATE TABLE public."PrecoAluguel"(
	id integer,
	horas time,
	"valorHoras" money,
	"tipoQuadra_id" integer,
	"dataDoPrecoVigente" date,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: public."Colaborador" | type: TABLE --
CREATE TABLE public."Colaborador"(
	id integer,
	club_id integer,
	cnpj integer,
	cpf integer,
	nome varchar(200),
	sobrenome varchar(200),
	descricao text,
	nascimento date,
	endereco_id integer,
	CONSTRAINT id PRIMARY KEY (id)

);
-- ddl-end --
-- object: club_quadra | type: CONSTRAINT --
ALTER TABLE public.quadras ADD CONSTRAINT club_quadra FOREIGN KEY (club_id)
REFERENCES public."Club" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: tipo_quadra | type: CONSTRAINT --
ALTER TABLE public.quadras ADD CONSTRAINT tipo_quadra FOREIGN KEY (tipo_id)
REFERENCES public."TipoQuadra" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: endereco_quadras | type: CONSTRAINT --
ALTER TABLE public.quadras ADD CONSTRAINT endereco_quadras FOREIGN KEY (endereco_id)
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: cliente_aluguel | type: CONSTRAINT --
ALTER TABLE public."Aluguel" ADD CONSTRAINT cliente_aluguel FOREIGN KEY (cliente_id)
REFERENCES public."Cliente" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: quadra_aluguel | type: CONSTRAINT --
ALTER TABLE public."Aluguel" ADD CONSTRAINT quadra_aluguel FOREIGN KEY (quadras_id)
REFERENCES public.quadras (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: professor_aula | type: CONSTRAINT --
ALTER TABLE public."Aulas" ADD CONSTRAINT professor_aula FOREIGN KEY (professor_id)
REFERENCES public."Professor" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aluno_aula | type: CONSTRAINT --
ALTER TABLE public."AlunoAula" ADD CONSTRAINT aluno_aula FOREIGN KEY (aluno_id)
REFERENCES public."Alunos" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aula_aluno | type: CONSTRAINT --
ALTER TABLE public."AlunoAula" ADD CONSTRAINT aula_aluno FOREIGN KEY (aula_id)
REFERENCES public."Aulas" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: cliante_aluno | type: CONSTRAINT --
ALTER TABLE public."Alunos" ADD CONSTRAINT cliante_aluno FOREIGN KEY (cliente_id)
REFERENCES public."Cliente" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aluno_endereco | type: CONSTRAINT --
ALTER TABLE public."Alunos" ADD CONSTRAINT aluno_endereco FOREIGN KEY (endereco_id)
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aula_horarios | type: CONSTRAINT --
ALTER TABLE public."HorariosQuadras" ADD CONSTRAINT aula_horarios FOREIGN KEY (aula_id)
REFERENCES public."Aulas" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: quadras_horarios | type: CONSTRAINT --
ALTER TABLE public."HorariosQuadras" ADD CONSTRAINT quadras_horarios FOREIGN KEY (quadras_id)
REFERENCES public.quadras (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: horarios_aulas | type: CONSTRAINT --
ALTER TABLE public."HorariosQuadras" ADD CONSTRAINT horarios_aulas FOREIGN KEY (horarios_id)
REFERENCES public."Horarios" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: endereco_professor | type: CONSTRAINT --
ALTER TABLE public."Professor" ADD CONSTRAINT endereco_professor FOREIGN KEY (endereco_id)
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: endereco | type: CONSTRAINT --
ALTER TABLE public."Club" ADD CONSTRAINT endereco FOREIGN KEY ("cedeEndereco_id")
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: endereco | type: CONSTRAINT --
ALTER TABLE public."Cliente" ADD CONSTRAINT endereco FOREIGN KEY (endereco_id)
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aluguel | type: CONSTRAINT --
ALTER TABLE public."Pagamento" ADD CONSTRAINT aluguel FOREIGN KEY (aluguel_id)
REFERENCES public."Aluguel" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: financeiro | type: CONSTRAINT --
ALTER TABLE public."Pagamento" ADD CONSTRAINT financeiro FOREIGN KEY (financeiro_id)
REFERENCES public."Financeiro" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: quadras_id | type: CONSTRAINT --
ALTER TABLE public."Pagamento" ADD CONSTRAINT quadras_id FOREIGN KEY (quadras_id)
REFERENCES public.quadras (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: cliente | type: CONSTRAINT --
ALTER TABLE public."Pagamento" ADD CONSTRAINT cliente FOREIGN KEY (cliente_id)
REFERENCES public."Cliente" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: endereco | type: CONSTRAINT --
ALTER TABLE public."Adm" ADD CONSTRAINT endereco FOREIGN KEY (endereco_id)
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: admin | type: CONSTRAINT --
ALTER TABLE public."Saida" ADD CONSTRAINT admin FOREIGN KEY (adm_id)
REFERENCES public."Adm" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: saida | type: CONSTRAINT --
ALTER TABLE public."Financeiro" ADD CONSTRAINT saida FOREIGN KEY ("Pagamento_saida_id")
REFERENCES public."Saida" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: cliente_telefone | type: CONSTRAINT --
ALTER TABLE public."Telefone" ADD CONSTRAINT cliente_telefone FOREIGN KEY (propietario_id)
REFERENCES public."Cliente" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: colaborador_telefone | type: CONSTRAINT --
ALTER TABLE public."Telefone" ADD CONSTRAINT colaborador_telefone FOREIGN KEY (id)
REFERENCES public."Colaborador" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: adm_telefone | type: CONSTRAINT --
ALTER TABLE public."Telefone" ADD CONSTRAINT adm_telefone FOREIGN KEY (id)
REFERENCES public."Adm" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: professor_telefone | type: CONSTRAINT --
ALTER TABLE public."Telefone" ADD CONSTRAINT professor_telefone FOREIGN KEY (id)
REFERENCES public."Professor" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: clube_telefone | type: CONSTRAINT --
ALTER TABLE public."Telefone" ADD CONSTRAINT clube_telefone FOREIGN KEY (id)
REFERENCES public."Club" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aluno_telefone | type: CONSTRAINT --
ALTER TABLE public."Telefone" ADD CONSTRAINT aluno_telefone FOREIGN KEY (id)
REFERENCES public."Alunos" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: adm_email | type: CONSTRAINT --
ALTER TABLE public."Email" ADD CONSTRAINT adm_email FOREIGN KEY (proprietario_id)
REFERENCES public."Adm" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: alunos_email | type: CONSTRAINT --
ALTER TABLE public."Email" ADD CONSTRAINT alunos_email FOREIGN KEY (proprietario_id)
REFERENCES public."Alunos" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: aluno_email | type: CONSTRAINT --
ALTER TABLE public."Email" ADD CONSTRAINT aluno_email FOREIGN KEY (proprietario_id)
REFERENCES public."Cliente" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: club_email | type: CONSTRAINT --
ALTER TABLE public."Email" ADD CONSTRAINT club_email FOREIGN KEY (proprietario_id)
REFERENCES public."Club" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: colaborador_email | type: CONSTRAINT --
ALTER TABLE public."Email" ADD CONSTRAINT colaborador_email FOREIGN KEY (proprietario_id)
REFERENCES public."Colaborador" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: professor_email | type: CONSTRAINT --
ALTER TABLE public."Email" ADD CONSTRAINT professor_email FOREIGN KEY (proprietario_id)
REFERENCES public."Professor" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: "tipoQuadra" | type: CONSTRAINT --
ALTER TABLE public."PrecoAluguel" ADD CONSTRAINT "tipoQuadra" FOREIGN KEY ("tipoQuadra_id")
REFERENCES public."TipoQuadra" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: club_colaborador | type: CONSTRAINT --
ALTER TABLE public."Colaborador" ADD CONSTRAINT club_colaborador FOREIGN KEY (club_id)
REFERENCES public."Club" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --


-- object: "colaborador-endereco" | type: CONSTRAINT --
ALTER TABLE public."Colaborador" ADD CONSTRAINT "colaborador-endereco" FOREIGN KEY (endereco_id)
REFERENCES public."Endereco" (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
-- ddl-end --



