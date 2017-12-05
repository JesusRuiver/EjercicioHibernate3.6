create table productos 
   (id NUMBER(2)PRIMARY KEY,
   descripcion VARCHAR(50) not null,
   stockactual number(20),
   stockminimo NUMBER(20),
   pvp number(20));
   
create table clientes
(id number(2) primary key,
nombre varchar(50) not null,
direccion varchar(50),
poblacion varchar(50),
telef varchar(20),
nif varchar(10));

create table ventas
(idventa number(2) primary key,
fechaventa date not null,
idcliente number(2),
idproducto number(2),
cantidad number(10),
FOREIGN KEY(idcliente) REFERENCES clientes(id),
FOREIGN KEY(idproducto)REFERENCES productos(id)
);

commit;