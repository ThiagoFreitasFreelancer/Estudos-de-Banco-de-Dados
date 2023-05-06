-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- PostgreSQL version: 9.2
-- Project Site: pgmodeler.com.br
-- Model Author: ---

SET check_function_bodies = false;
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: "Alocacao_de_diciplinas" | type: DATABASE --
CREATE DATABASE Alocacao_de_disciplinas
-- ;
-- -- ddl-end --
-- 

-- object: public."TB_Semestre" | type: TABLE --
CREATE TABLE public.TB_Semestre(
	id integer,
	data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ddl-end --
-- object: public."TB_Disciplinas" | type: TABLE --
CREATE TABLE public.TB_Disciplina(
	id integer,
	nome char(200),
	cod char(50),
	CH char(100),
	"TB_Departamento" integer
);
-- ddl-end --
-- object: public.TB_Curso | type: TABLE --
CREATE TABLE public.TB_Curso(
	id integer,
	nome char(200),
	area char(200),
	"TB_Departamento" integer,
	"TB_Colegiado" integer,
	BL char(50)
);
-- ddl-end --
-- object: public.TB_Departamento | type: TABLE --
CREATE TABLE public.TB_Departamento(
	id integer,
	Cod char(200),
	nome char(200)
);
-- ddl-end --
-- object: public.TB_Colegiado | type: TABLE --
CREATE TABLE public.TB_Colegiado(
	id integer,
	nome char(200),
	"TB_Professor_Diretor" integer,
	"TB_Semestre" integer
);
-- ddl-end --
-- object: public.TB_Aluno | type: TABLE --
CREATE TABLE public.TB_Aluno(
	nome char(200),
	matricula char(100),
	"TB_Curso" integer,
	"TB_Semestre" integer,
	sobrenome char(200)
);
-- ddl-end --
-- object: public.TB_Professores | type: TABLE --
CREATE TABLE public.TB_Professores(
	id integer,
	nome char(200),
	cod char(200),
	"TB_Departamento" integer,
	sobrenome char(200),
	salario float(2)
);
-- ddl-end --
CREATE TABLE public.TB_DPS(
	id integer,
	id_professor integer,
	id_disciplina integer
);




