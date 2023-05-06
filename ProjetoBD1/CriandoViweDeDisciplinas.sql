CREATE VIEW public."Disciplinas"
 AS
 SELECT tb_disciplina.id,
    tb_disciplina.nome,
    tb_disciplina.cod,
    tb_disciplina.ch,
    tb_disciplina."TB_Departamento"
   FROM public.tb_disciplina;

ALTER TABLE public."Disciplinas"
    OWNER TO postgres;