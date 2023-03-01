create database controlaponto;
use controlaponto;

create table perfil(
id int not null primary key auto_increment,
nome varchar(50) not null,
descricao varchar(255) not null
);

create table usuario(
id int not null primary key auto_increment,
nome varchar(50) not null,
senha varchar(50) not null,
lembreteSenha varchar(100),
ativo varchar(3) not null,
perfil_id int not null,
foreign key(perfil_id) references perfil(id)
);

create table registroponto (
id int not null primary key auto_increment,
dataPonto date not null,
horarioEntrada time,
horarioIntervalo time,
horarioRetorno time,
horarioSaida time,
totalHorasDia time,
saldoHorasDia time,
usuario_id int not null,
foreign key(usuario_id) references usuario (id)
);

