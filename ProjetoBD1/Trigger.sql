CREATE TRIGGER "TriggerUpdateSalario"
    AFTER INSERT
    ON public.tb_professores
    FOR EACH ROW
    EXECUTE FUNCTION public."UpdateSalario"();