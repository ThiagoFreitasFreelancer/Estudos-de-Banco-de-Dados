CREATE TABLE Endereco( id integer UNIQUE, rua varchar(20), bairro varchar(100), cidade varchar(100), numero integer, PRIMARY KEY(id) );

CREATE TABLE Quadras( id integer UNIQUE, nome varchar(100) NOT NULL, club_id integer NOT NULL, tipo_id integer NOT NULL, endereco_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Aluguel( id integer UNIQUE, cliente_id integer NOT NULL, quadra_id integer NOT NULL, dataAluguel date NOT NULL);

CREATE TABLE Aulas( id integer UNIQUE, esporte varchar(200), professor_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE AlunoAula( id integer UNIQUE, aluno_id integer NOT NULL, aula_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Alunos( id integer UNIQUE, cliente_id integer NOT NULL, CPF integer, nome varchar(200) NOT NULL, sobrenome varchar(100), nascimento date, altura float, peso float, tipoSangue varchar(20) NOT NULL, endereco_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE HorariosQuadras( id integer UNIQUE, aula_id integer NOT NULL, quadra_id integer NOT NULL, Horario_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Horarios( id integer UNIQUE, data date NOT NULL, horaInicial time NOT NULL, horaFinal time NOT NULL, ocupado boolean NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Professor( id integer UNIQUE, CNPJ integer, CPF integer, nome varchar(100), sobrenome varchar(100), descricao text, nascimento date, aultura float, peso float, endereco_id integer , PRIMARY KEY(id) );

CREATE TABLE TipoQuadra( id integer UNIQUE, nome varchar(200) NOT NULL, descricao text , PRIMARY KEY(id) );

CREATE TABLE Club( id integer UNIQUE, nome varchar(100) NOT NULL, quantidadeMembros integer NOT NULL, descriacao text, cedeEndereco_id integer, PRIMARY KEY(id));

CREATE TABLE Cliente( id integer UNIQUE, nome varchar(100) NOT NULL, sobrenome varchar(200) NOT NULL, CPF integer, CNPJ integer, endereco_id integer, PRIMARY KEY(id) );

CREATE TABLE Pagamento( id integer UNIQUE, aluguel_id integer NOT NULL, finaceiro_id integer NOT NULL, quadra_id integer NOT NULL, cliente_id integer NOT NULL, data date NOT NULL, valor float NOT NULL, statusPagamento varchar(100) NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Adm( id integer UNIQUE, adm boolean, CPF integer NOT NULL, nome varchar(100) NOT NULL, sobrenome varchar(100) NOT NULL, endereco_id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Saida( id integer UNIQUE, valorSaida money NOT NULL, DataSaida date NOT NULL, descricao text,  adm_Id integer NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Financeiro( id integer UNIQUE, Pagamento_Saida_id integer NOT NULL, DataBalanco date NOT NULL, valorEntrada money NOT NULL, descricao text, PRIMARY KEY(id) );

CREATE TABLE Telefone( proprietario_id integer NOT NULL, id integer UNIQUE, DD integer NOT NULL, numero integer NOT NULL, tipo varchar(100), PRIMARY KEY(id) );

CREATE TABLE Email( proprietario_id integer NOT NULL, id integer UNIQUE, email varchar(200) NOT NULL, PRIMARY KEY(id) );

CREATE TABLE PrecoAluguel( id integer UNIQUE, horas float NOT NULL, valorHora float NOT NULL, tipoQuadra_id integer NOT NULL, dataDoPrecoVigente date NOT NULL, PRIMARY KEY(id) );

CREATE TABLE Colaborador( id integer UNIQUE, club_id integer NOT NULL, CNPJ integer, CPF integer, nome varchar(100) NOT NULL, sobrenome varchar(100) NOT NULL, descricao text, nascimento date, endereco_id integer NOT NULL, PRIMARY KEY(id) );
