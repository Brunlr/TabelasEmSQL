
create table cliente(
    id_cliente serial,
    nome varchar(200)not null,
    endereco varchar(300)not null,
    constraint pk_cliente primary key (id_cliente)
)

create table carro(
    registro serial,
    marca varchar(50) not null,
    modelo varchar(50) not null,
    cor varchar(50) not null,
    constraint pk_carro primary key(registro)
)

create table acidente(
    id_acidente serial,
    data_aci date not null,
    hora time not null,
    local_aci varchar(200) not null,
    constraint pk_acidente primary key(id_acidente)
    
)

create table Apolice (
    id_apolice serial,
    id_cliente integer not null,
    id_carro integer not null,
    id_acidente integer not null,
    dt_inicio date not null,
    dt_fim date not null,
    valor float,
    constraint pk_apolice primary key (id_apolice,id_cliente),
    constraint fk_cliente foreign key (id_cliente)
        references cliente(id_cliente),
    constraint fk_carro foreign key(id_carro)
        references carro(registro),
    constraint fk_acidente foreign key(id_acidente)
        references acidente(id_acidente)
)

create table funcionario(
    id_funcionario serial,
    id_departamento integer,
    nome varchar(200) not null,
    salario float not null,
    telefone numeric(11) not null,
    constraint pk_funcionario primary key(id_funcionario),
    constraint fk_departamento foreign key (id_departamento)
        references departamento(id_departamento)
)

create table departamento(
    id_departamento serial,
    nome varchar(200) not null,
    constraint pk_departamento primary key(id_departamento)
)


create table projeto (
    id_proj serial,
    orcamento float  not null,
    constraint pk_projeto primary key(id_proj)
)

create table pertence (
    dt_inicio date not null,
    horas_trab float not null,
    id_funcionario integer,
    id_proj integer,
    constraint fk_funcionario foreign key (id_funcionario)
        references funcionario(id_funcionario),
    constraint fk_projeto foreign key (id_proj)
        references projeto(id_proj)

)
create table deposito (
    id_dep serial ,
    endereco varchar(200) not null,
    constraint pk_deposito primary key (id_dep)
)

create table peca(
    id_peca serial ,
    id_forn integer,
    id_dep integer,
    cor varchar(50) not null,
    peso float not null,
    constraint pk_peca primary key (id_peca),
    constraint fk_fornecedor foreign key (id_forn)
        references fornecedor(id_forn),
    constraint fk_deposito foreign key (id_dep)
        references deposito(id_dep)
)
create table fornecedor(
    id_forn serial,
    endereco varchar (300) not null, 
    nome varchar (200) not null,
    constraint pk_fornecedor primary key (id_forn)
)
create table ultilizacao(
    id_util serial,
    id_proj integer,
    id_fornec integer,
    constraint pk_utilizacao primary key (id_util),
    constraint fk_projeto foreign key (id_proj)
        references projeto(id_proj),
    constraint fk_fornecimento foreign key (id_fornec)
        references fornecimento(id_fornec)
)

create table fornecimento(
    id_fornec serial,
    id_peca integer,
    id_forn integer,
    constraint pk_fornecimento primary key (id_fornec),
    constraint fk_peca foreign key (id_peca)
        references peca(id_peca),
    constraint fk_fornecedor foreign key (id_forn)
        references fornecedor(id_forn)
)

create table teste(
    codigo numeric(5),
    salario numeric(7,2) not null,
    dia_hoje date not null,
    texto varchar(10) not null,
    aprovado bool not null
)

create table Aluno (
    rgm serial ,
    nome varchar (100),
    endereco varchar (200),
    telefone numeric(11)
)

create table Disciplina (
    codigo serial ,
    nome varchar (100),
    ementa varchar(150)
) 
create table Aluno_Disciplina (
    cod_aluno integer ,
    cod_disciplina integer ,
    nota1 numeric(4,2),
    nota2 numeric(4,2),
    media numeric(4,2), 
    faltas integer 

) 
