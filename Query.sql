ALTER TABLE teste RENAME TO AULABD;

ALTER TABLE aulabd RENAME COLUMN aprovado TO situacao;

ALTER TABLE aulabd ADD rgm numeric(5);

ALTER TABLE aulabd ADD novo_campo varchar(100);

ALTER TABLE aulabd ALTER COLUMN novo_campo SET not null;

ALTER TABLE aulabd DROP COLUMN salario;

ALTER TABLE aulabd ADD constraint pk_aulabd primary key(rgm);

DROP TABLE aulabd;


ALTER TABLE aluno ADD constraint pk_aluno primary key(rgm);

ALTER TABLE disciplina ADD constraint pk_disciplina primary key(codigo);

ALTER TABLE aluno_disciplina ADD constraint fk_disciplina foreign key (cod_disciplina) references disciplina(codigo);

ALTER TABLE aluno_disciplina ADD constraint fk_aluno foreign key (cod_aluno) references aluno(rgm);

ALTER TABLE aluno ADD rg numeric(11);

ALTER TABLE aluno ADD cpf numeric(11);

ALTER TABLE aluno_disciplina DROP COLUMN faltas;

ALTER TABLE aluno_disciplina RENAME TO notas;

ALTER TABLE notas ALTER COLUMN media SET not null;

ALTER TABLE aluno RENAME TO alunos;

ALTER TABLE notas DROP CONSTRAINT fk_aluno;

ALTER TABLE alunos DROP CONSTRAINT pk_aluno;

DROP TABLE disciplina;

ALTER TABLE notas DROP CONSTRAINT fk_disciplina;

DROP SCHEMA public CASCADE;



