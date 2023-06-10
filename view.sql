CREATE VIEW Quadra_Aula_Professor AS
SELECT professor.nome AS professor, aulas.esporte, quadras.nome AS quadra, alunos.nome AS aluno
FROM aulas
INNER JOIN alunoaula ON alunoaula.aula_id = aulas.id
INNER JOIN alunos ON alunoaula.aluno_id = alunos.id
INNER JOIN professor ON aulas.professor_id = professor.id
INNER JOIN HorariosQuadras ON HorariosQuadras.aula_id = aulas.id
INNER JOIN quadras ON HorariosQuadras.quadra_id = quadras.id;

CREATE VIEW Quadra_Horario AS
SELECT quadras.nome AS quadra, Horarios.data,
Horarios.horainicial, Horarios.horafinal FROM horarios
INNER JOIN HorariosQuadras ON HorariosQuadras.horario_id = horarios.id
INNER JOIN Quadras ON HorariosQuadras.quadra_id = quadras.id;

CREATE VIEW alunos_idade AS SELECT alunos.nome, alunos.nascimento,(SELECT calcular_idade(alunos.nascimento)
) AS idade FROM alunos;