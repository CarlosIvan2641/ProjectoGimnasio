Create database Gimnasio
use Gimnasio


/*		Tablas No Dependientes		*/
create table Operador(
	Id_Operador varchar(6) not null primary key,
	Nombre varchar(20) not null,
	ApellidoP varchar (20) not null,
	ApellidoM varchar (20) not null,
	NumTelefono varchar (12) not null,
	Domicilio varchar (30) not null,
	Sueldo float not null,
	Contraseña varchar (10) not null
)

create table Membresia(
	Id_Membresia varchar (6) not null primary key,
	Monto float not null,
	Fecha_Sus date not null,
	Fecha_Exp date not null,
)


/*		Tablas Dependientes		*/

create table Maquinaria(
	Id_Maquinaria varchar (6) not null primary key,
	Id_Operador varchar (6) not null,				--	Esta maquinaria lo dio de alta el operador ?
	Nombre varchar (20) not null,
	Cantidad int not null,
	Constraint FK_Operador foreign key(Id_Operador) references Operador(Id_Operador)
)	

create table Rutina(
	Id_Rutina varchar (6) not null primary key,
	Id_Operador varchar(6),							-- Esta rutina lo imparte el operador ?
	Tipo varchar (10) not null,
	Repeticiones int not null
	foreign key(Id_Operador) references Operador(Id_Operador)
)

create table Ejercicio(
	Id_Ejercicio varchar (6) not null primary key,
	Id_Rutina varchar (6) not null,					--	Ejercicio pertenece a una rutina
	Tipo varchar (10) not null,
	Constraint FK_Rutina foreign key(Id_Rutina) references Rutina(Id_Rutina)
)

create table Usuario(
	Id_Usuario varchar (6) not null primary key,
	Id_Operador varchar (6),						--	Usuario tiene un Operador
	Id_Membresia varchar (6),						--	Usuario tiene una membresia
	Id_Rutina varchar (6),							--	Usuario tiene una rutina
	Nombre varchar (20) not null,
	ApellidoP varchar (20) not null,
	ApellidoM varchar (20) not null,
	NumTelefono varchar (12) not null,
	Sexo varchar (10) not null,
	Edad int not null,
	Contraseña varchar (10) not null,
	foreign key(Id_Operador) references Operador(Id_Operador),
	Constraint FK_Membresia foreign key(Id_Membresia) references Membresia(Id_Membresia),
	foreign key(Id_Rutina) references Rutina(Id_Rutina)
)