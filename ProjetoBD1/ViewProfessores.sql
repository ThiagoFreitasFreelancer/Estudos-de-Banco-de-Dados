CREATE VIEW public."Professores"
AS SELECT tb_professores.nome,
		tb_professores.salario
	FROM public.tb_professores;