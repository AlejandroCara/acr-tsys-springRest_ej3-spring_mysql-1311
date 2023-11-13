create table cajero(
    codigo int auto_increment,
    nomapels varchar(255),
    primary key (codigo)
);

create table producto(
    codigo int auto_increment,
    nombre varchar(100),
    precio int,
    primary key (codigo)
);

create table maquina_registradora(
    codigo int auto_increment,
    piso int,
    primary key (codigo)
);

create table venta(
    codigo int,
    cajero int,
    maquina int,
    producto int,
    primary key (codigo),
    foreign key (cajero) references cajero(codigo)
    on delete cascade on update cascade,
    foreign key (maquina) references maquina_registradora(codigo)
    on delete cascade on update cascade,
    foreign key (producto) references producto(codigo)
    on delete cascade on update cascade
);