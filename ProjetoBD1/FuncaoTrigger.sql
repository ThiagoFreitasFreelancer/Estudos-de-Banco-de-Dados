CREATE OR REPLACE FUNCTION public."UpdateSalario"()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    VOLATILE
    COST 110
AS $BODY$
BEGIN

UPDATE public.tb_professores SET salario = salario + 0.05;
RETURN NEW;

END;
$BODY$;