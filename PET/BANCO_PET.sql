CREATE DATABASE pet_banco_de_dados

 

CREATE TABLE Distribuidor(

    distribuidor_id integer,

    filial boolean,

    razaoSocial varchar(30),

    Nome varchar(30),

    CNPJ integer,

    dataAtivacao date,

    dataFechamento date,

    CONSTRAINT distribuidor_id PRIMARY KEY (distribuidor_id)

 

);

 

CREATE TABLE Varegista(

    distribuidor_id integer,

    codigo integer,

    razaoSocial varchar(30),

    Nome varchar(30),

    CONSTRAINT codigo PRIMARY KEY (codigo)

 

);

 

CREATE TABLE Representante(

    representante_id integer,

    distribuidor_id integer,

    sobrenome varchar(30),

    nome varchar(30),

    RG varchar(30),

    dataNascimento date,

    CIC varchar(30),

    CONSTRAINT representante_id PRIMARY KEY (representante_id)



);



CREATE TABLE Endereco(

    reseidente_id integer,

    cobranca varchar(30),

    entrega varchar(30),

    comercio varchar(30),

    cidade varchar(30),

    correio_eletronico varchar(30),

    estado varchar(30),

    pais varchar(30),

    bairro varchar(30)

);



CREATE TABLE Telefone(

    cliente_id integer,

    comercial varchar(30),

    residencial varchar(30),

    celulcar varchar(30),

    bip varchar(30),

    whatsapp varchar(30),

    ramal varchar(30)

);



CREATE TABLE Regiao(

distribuidor_id integer,

representante_id integer,

varegista_id integer,

dataCadastro date,

descricao varchar(30)

);



CREATE TABLE Pedido(

    varegista_id integer,

    representante_id integer,

    dataPedido date,

    quantitade integer,

    raca_id integer,

    valor float,

    pedido_id integer

);



CREATE TABLE animalDistribuidor(

    animal_id integer,

    distribuidor_id integer

);



CREATE TABLE Animal(

    codigo integer,

    nome varchar(30),

    cor_caracteristica varchar(30),

    comprimento float,

    altura float,

    peso float,

    alimento_id integer,

    doenca varchar(100),

    exemplarAdulto  varchar(100),

    exemplarFilhote  varchar(100)

);



CREATE TABLE Raca(

    animal_id integer,

    alimento_id integer,

    problemas  varchar(100),

    grupoAnimal varchar(100),

    distribuidor_id integer,

    raca_id integer

);



CREATE TABLE Encomenda(

    origem integer,

    varegista_id smallint,

    dataPedido smallint,

    quantidade integer,

    descricao varchar(100)

);



CREATE TABLE Vacinacao(

    animal_id integer,

    codido integer,

    dataDose date,

    dataVencimento date

);



CREATE TABLE alimento(

    raca_id integer,

    descricao varchar(100),

    quantidade float,

    idadeMaxima float

);


INSERT INTO Distribuidor  VALUES( 1, false, 'Pet Distribuidora', 'Pet LTDA', 154879521000, '3023-03-22', null);
 

ALTER TABLE Varegista ADD CONSTRAINT distribuidor_id FOREIGN KEY (distribuidor_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Representante ADD CONSTRAINT distribuidor_id FOREIGN KEY (distribuidor_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Endereco ADD CONSTRAINT reseidente_id FOREIGN KEY (reseidente_id)

REFERENCES Representante (representante_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Endereco ADD CONSTRAINT distribuidor_id FOREIGN KEY (reseidente_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Endereco ADD CONSTRAINT varegista_id FOREIGN KEY (reseidente_id)

REFERENCES Varegista (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Telefone ADD CONSTRAINT distribuidor_id FOREIGN KEY (cliente_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Telefone ADD CONSTRAINT representante_id FOREIGN KEY (cliente_id)

REFERENCES Representante (representante_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Telefone ADD CONSTRAINT varegista_id FOREIGN KEY (cliente_id)

REFERENCES Varegista (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Regiao ADD CONSTRAINT distribuidor_id FOREIGN KEY (distribuidor_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Regiao ADD CONSTRAINT representante_id FOREIGN KEY (representante_id)

REFERENCES Representante (representante_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Regiao ADD CONSTRAINT varegista_id FOREIGN KEY (distribuidor_id)

REFERENCES Varegista (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Pedido ADD CONSTRAINT representante_id FOREIGN KEY (representante_id)

REFERENCES Representante (representante_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Pedido ADD CONSTRAINT varegista_id FOREIGN KEY (varegista_id)

REFERENCES Varegista (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE animalDistribuidor ADD CONSTRAINT distribuidro_id FOREIGN KEY (distribuidor_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE animalDistribuidor ADD CONSTRAINT animalDistribuidor FOREIGN KEY (animal_id)

REFERENCES Animal (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Animal ADD CONSTRAINT animalDistribuidor FOREIGN KEY (codigo)

REFERENCES animalDistribuidor (animal_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

 

ALTER TABLE Raca ADD CONSTRAINT alimentoAnimal FOREIGN KEY (animal_id)

REFERENCES Animal (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;


ALTER TABLE Raca ADD CONSTRAINT racaDistribuidor FOREIGN KEY (distribuidor_id)

REFERENCES Distribuidor (distribuidor_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;


ALTER TABLE Encomenda ADD CONSTRAINT pedido_id FOREIGN KEY (origem)

REFERENCES Pedido (pedido_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;


ALTER TABLE Vacinacao ADD CONSTRAINT animal_id FOREIGN KEY (animal_id)

REFERENCES Animal (codigo) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;



ALTER TABLE alimento ADD CONSTRAINT raca_id FOREIGN KEY (raca_id)

REFERENCES Raca (raca_id) MATCH FULL

ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;

