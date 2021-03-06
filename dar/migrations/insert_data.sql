DELETE FROM dar_departament;
INSERT INTO dar_departament (id, name)
VALUES (1, 'Departamento Informática');

INSERT INTO dar_departament (id, name)
VALUES (2, 'Departamento Letras');



DELETE FROM dar_secretariat;
INSERT INTO dar_secretariat (id, type, departament_id, name)
VALUES (1, 0, 1, 'Secretaria de Graduação - Informática');

INSERT INTO dar_secretariat (id, type, departament_id, name)
VALUES (2, 1, 1, 'Secretaria de Pós-graduação - Informática');

INSERT INTO dar_secretariat (id, type, departament_id, name)
VALUES (3, 0, 2, 'Secretaria de Graduação = Letras');



DELETE FROM dar_course;
INSERT INTO dar_course (id, name, secretariat_id)
VALUES (1, 'Engenharia de Computação', 1);

INSERT INTO dar_course (id, name, secretariat_id)
VALUES (2, 'Bacharelado', 1);

INSERT INTO dar_course (id, name, secretariat_id)
VALUES (3, 'Doutorado – Informática', 2);

INSERT INTO dar_course (id, name, secretariat_id)
VALUES (4, 'Português – Inglês', 3);


DELETE FROM dar_discipline;
INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (1,'Laboratório de Programação I', 'INF 1622', 70, 1, 1, 0, 'Arndt Von Staa', 1, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (2, 'Estruturas de Dados', 'INF 1620', 60, 1, 0, 0, 'Marcus Poggi', 1, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (3,'Projeto de Sistema de Software I', 'INF 1624', 40, 0, 1, 0, 'Carlos Lucena', 1, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (4,'Programação em ponto grande', 'INF 1628', 50, 0, 1, 0, 'Arndt von Staa', 1, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (5,'Introdução a Ciência da Computação', 'INF 1001', 40, 1, 1, 0, 'Bruno Feijó', 2, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (6,'Cálculo Numérico', 'INF 1002', 40, 1, 1, 100, 'Marcus Poggi', 2, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (7,'Software Básico', 'INF 1600', 50, 0, 1, 40, 'Arndt Von Staa', 2, NULL, 1, 1);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (8,'Hipermídia Adaptativa', 'INF 1303', 30, 0, 1, 0, 'Daniel Schawbe', 3, NULL, 1, 2);

INSERT INTO dar_discipline (id, name, code, number_credit, required, offered, required_credit, teacher, course_id, period_offered, departament_id, type)
VALUES (9,'Inglês I', 'LET 1501', 30, 1, 1, 0, 'Ângela Souza', 4, NULL, 2, 1);




DELETE FROM dar_student;
INSERT INTO dar_student (id, name, matriculation, credit_mandatory, credit_elective, departament_id, course_id, matriculate, type)
VALUES (1,'Alex Carvalho', 98124812, 130, 50, 1, 1, 0, 1);

INSERT INTO dar_student (id, name, matriculation, credit_mandatory, credit_elective, departament_id, course_id, matriculate, type)
VALUES (2, 'Jurema Torres', 9924812, 100, 0, 1, 1, 0, 1);

INSERT INTO dar_student (id, name, matriculation, credit_mandatory, credit_elective, departament_id, course_id, matriculate, type)
VALUES (3, 'José Vasconcelos', 9915918, 0, 0, 1, 2, 0, 1);

INSERT INTO dar_student (id, name, matriculation, credit_mandatory, credit_elective, departament_id, course_id, matriculate, type)
VALUES (4, 'João da Silva', 9914918, 0, 0, 1, 3, 0, 2);

INSERT INTO dar_student (id, name, matriculation, credit_mandatory, credit_elective, departament_id, course_id, matriculate, type)
VALUES (5, 'Maria Antônia', 0012398, 0, 0, 2, 4, 0, 1);




DELETE  FROM dar_student_disciplines;
INSERT INTO dar_student_disciplines (id, student_id, discipline_id)
VALUES (1, 1, 1);

INSERT INTO dar_student_disciplines (id, student_id, discipline_id)
VALUES (2, 1, 2);

INSERT INTO dar_student_disciplines (id, student_id, discipline_id)
VALUES (3, 1, 4);

INSERT INTO dar_student_disciplines (id, student_id, discipline_id)
VALUES (4, 2, 2);

INSERT INTO dar_student_disciplines (id, student_id, discipline_id)
VALUES (5, 2, 5);



DELETE  FROM dar_discipline_disciplines;
INSERT INTO dar_discipline_disciplines (id, from_discipline_id, to_discipline_id)
VALUES (1, 1, 2);

INSERT INTO dar_discipline_disciplines (id, from_discipline_id, to_discipline_id)
VALUES (2, 3, 1);

INSERT INTO dar_discipline_disciplines (id, from_discipline_id, to_discipline_id)
VALUES (3, 3, 4);

INSERT INTO dar_discipline_disciplines (id, from_discipline_id, to_discipline_id)
VALUES (4, 4, 1);

