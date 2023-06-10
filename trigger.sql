CREATE OR REPLACE FUNCTION atualizar_idade()
RETURNS TRIGGER AS $$
BEGIN
    NEW.idade := EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM NEW.nascimento) -
        CASE
            WHEN EXTRACT(MONTH FROM CURRENT_DATE) < EXTRACT(MONTH FROM NEW.nascimento) THEN 1
            WHEN EXTRACT(MONTH FROM CURRENT_DATE) = EXTRACT(MONTH FROM NEW.nascimento) AND EXTRACT(DAY FROM CURRENT_DATE) < EXTRACT(DAY FROM NEW.nascimento) THEN 1
            ELSE 0
        END;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trig_atualizar_idade
BEFORE INSERT OR UPDATE OF nascimento ON alunos, professor, adm, colaborador, cliente --escolher um desses para criar a trigger
FOR EACH ROW
EXECUTE FUNCTION atualizar_idade();
